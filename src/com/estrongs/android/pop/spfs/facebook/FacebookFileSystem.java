package com.estrongs.android.pop.spfs.facebook;

import android.util.Log;
import com.estrongs.android.pop.netfs.NetFsException;
import com.estrongs.android.pop.netfs.NetFsException.ERROR_CODE;
import com.estrongs.android.pop.netfs.utils.HttpUtils;
import com.estrongs.android.pop.spfs.Album;
import com.estrongs.android.pop.spfs.AlbumException;
import com.estrongs.android.pop.spfs.ISPFileSystem;
import com.estrongs.android.pop.spfs.OAuthUtil;
import com.estrongs.android.pop.spfs.PhotoInfoException;
import com.estrongs.android.pop.spfs.SPFileInfo;
import com.estrongs.android.pop.spfs.note.IPhotoInfo;
import com.estrongs.android.util.TypedMap;
import com.estrongs.android.util.bd;
import com.gmail.yuyang226.flickr.b;
import com.gmail.yuyang226.flickr.c;
import com.gmail.yuyang226.flickr.d.d;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;
import java.security.KeyStore;
import java.security.SecureRandom;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map.Entry;
import java.util.Properties;
import java.util.Set;
import java.util.TimeZone;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.HttpVersion;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpRequestBase;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.scheme.SocketFactory;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.params.HttpProtocolParams;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class FacebookFileSystem
  implements ISPFileSystem, IPhotoInfo
{
  private static final String CONFIG_FILE = "Facebook.cfg";
  private static final String CONFIG_SPLIT = "#####";
  private static final int HTTP_AUTH_FAIL = 401;
  private static final String client_id = "245740315545780";
  private static SimpleDateFormat dateFormater = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
  private final int STAT_NET_TYPE_FACEBOOK = 51;
  private final String TAG = "Facebook";
  private HashMap<String, FacebookFileSystem.User> access_tokens = new HashMap();
  private String apiUri = "https://graph.facebook.com/";
  SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss");
  private String lastErrorString = null;
  private String private_storePath = null;
  private String storePath = null;
  
  static
  {
    dateFormater.setTimeZone(TimeZone.getTimeZone("GMT-00:00"));
  }
  
  private String appendAcessParams(String paramString1, String paramString2, int paramInt1, int paramInt2)
  {
    if (!paramString1.contains("?")) {}
    for (paramString1 = paramString1 + "?";; paramString1 = paramString1 + "&") {
      return paramString1 + "access_token=" + paramString2 + "&" + buildPagingParams(paramInt1, paramInt2);
    }
  }
  
  private String buildPagingParams(int paramInt1, int paramInt2)
  {
    int i;
    if (paramInt1 < 1)
    {
      i = 10;
      if (paramInt2 >= 1) {
        break label44;
      }
    }
    label44:
    for (paramInt1 = 0;; paramInt1 = (paramInt2 - 1) * paramInt1)
    {
      return String.format("limit=%s&offset=%s", new Object[] { Integer.valueOf(i), Integer.valueOf(paramInt1) });
      i = paramInt1;
      break;
    }
  }
  
  public static String encodePostBody(TypedMap paramTypedMap, String paramString)
  {
    if (paramTypedMap == null) {
      return "";
    }
    StringBuilder localStringBuilder = new StringBuilder();
    Iterator localIterator = paramTypedMap.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      Object localObject = paramTypedMap.get(str);
      if ((localObject instanceof String))
      {
        localStringBuilder.append("Content-Disposition: form-data; name=\"" + str + "\"\r\n\r\n" + (String)localObject);
        localStringBuilder.append("\r\n--" + paramString + "\r\n");
      }
    }
    return localStringBuilder.toString();
  }
  
  public static String encodeUrl(TypedMap paramTypedMap)
  {
    if (paramTypedMap == null) {
      return "";
    }
    StringBuilder localStringBuilder = new StringBuilder();
    Iterator localIterator = paramTypedMap.keySet().iterator();
    int i = 1;
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      if ((paramTypedMap.get(str) instanceof String))
      {
        if (i != 0) {
          i = 0;
        }
        for (;;)
        {
          localStringBuilder.append(URLEncoder.encode(str) + "=" + URLEncoder.encode(paramTypedMap.getString(str)));
          break;
          localStringBuilder.append("&");
        }
      }
    }
    return localStringBuilder.toString();
  }
  
  private JSONObject execute(HttpClient paramHttpClient, HttpRequestBase paramHttpRequestBase)
  {
    try
    {
      paramHttpClient = parseAsJSON(paramHttpClient.execute(paramHttpRequestBase));
      detectErrorAndThrowException(paramHttpClient);
      return paramHttpClient;
    }
    catch (NetFsException paramHttpClient)
    {
      throw paramHttpClient;
    }
    catch (Exception paramHttpClient)
    {
      throw new NetFsException(paramHttpClient);
    }
  }
  
  private FacebookFileSystemCache.FacebookFileCacheEntry getCacheEntry(String paramString1, String paramString2)
  {
    int i = getServerId(paramString1);
    if (i == 0) {
      return null;
    }
    int j = FacebookFileSystemCache.instance().getPathId(i, paramString2);
    return FacebookFileSystemCache.instance().getFile(i, j);
  }
  
  private FacebookFileSystemCache.FacebookFileCacheEntry getFileCacheEntry(JSONObject paramJSONObject, String paramString, boolean paramBoolean)
  {
    FacebookFileSystemCache.FacebookFileCacheEntry localFacebookFileCacheEntry;
    for (;;)
    {
      try
      {
        localFacebookFileCacheEntry = new FacebookFileSystemCache.FacebookFileCacheEntry();
        if (isDir == 1)
        {
          size = 0;
          url = paramJSONObject.optString("source");
          thumbnail_url = paramJSONObject.optString("picture");
          url_id = paramJSONObject.optString("id");
          name = paramJSONObject.optString("name");
          if (!paramBoolean) {
            break label348;
          }
          if (isDir != 1) {
            break label274;
          }
          if (paramString.endsWith("/"))
          {
            paramString = paramString + name;
            path = paramString;
            mtime = ((int)System.currentTimeMillis() / 1000);
            publicFlag = false;
            friendFlag = false;
            familyFlag = false;
            description = paramJSONObject.optString("description");
            mtime = ((int)parseDate(paramJSONObject.optString("created_time")).getTime() / 1000);
            paramJSONObject = paramJSONObject.optJSONObject("from");
            if (paramJSONObject == null) {
              break;
            }
            ownerId = paramJSONObject.optString("id");
            ownerUsername = paramJSONObject.optString("name");
            return localFacebookFileCacheEntry;
          }
        }
        else
        {
          size = -1;
          continue;
        }
        paramString = paramString + "/" + name;
      }
      catch (Exception paramJSONObject)
      {
        paramJSONObject.printStackTrace();
        return null;
      }
      continue;
      label274:
      if (paramString.endsWith("/")) {}
      for (paramString = paramString + url_id;; paramString = paramString + "/" + url_id)
      {
        path = paramString;
        break;
      }
      label348:
      path = paramString;
    }
    return localFacebookFileCacheEntry;
  }
  
  private String getParentPath(String paramString)
  {
    if (paramString.equals("/")) {}
    String str;
    int i;
    do
    {
      return null;
      str = paramString;
      if (paramString.endsWith("/")) {
        str = paramString.substring(0, paramString.length() - 1);
      }
      i = str.lastIndexOf('/');
    } while (i < 0);
    return str.substring(0, i + 1);
  }
  
  private JSONObject getPhotosByAlbum(String paramString1, String paramString2, int paramInt1, int paramInt2)
  {
    paramString1 = getToken(paramString1, null);
    if (paramString1 == null)
    {
      Log.e("Facebook", "can't get the token");
      return null;
    }
    paramString1 = new HttpGet(appendAcessParams(apiUri + paramString2 + "/photos", paramString1, paramInt1, paramInt2));
    return parseAsJSON(getNewHttpClient().execute(paramString1));
  }
  
  private JSONObject getPhotosByMe(String paramString, int paramInt1, int paramInt2)
  {
    paramString = getToken(paramString, null);
    if (paramString == null)
    {
      Log.e("Facebook", "can't get the token");
      return null;
    }
    paramString = new HttpGet(appendAcessParams(apiUri + "me/photos", paramString, paramInt1, paramInt2));
    return parseAsJSON(getNewHttpClient().execute(paramString));
  }
  
  private JSONObject getPhotosets(String paramString, int paramInt1, int paramInt2)
  {
    String str = getToken(paramString, null);
    if (str == null)
    {
      Log.e("Facebook", "can't get the token");
      return null;
    }
    paramString = (FacebookFileSystem.User)access_tokens.get(paramString);
    if (paramString == null) {
      return null;
    }
    paramString = new HttpGet(appendAcessParams(apiUri + id + "/albums", str, paramInt1, paramInt2));
    return parseAsJSON(getNewHttpClient().execute(paramString));
  }
  
  private int getServerId(String paramString)
  {
    paramString = paramString + "@Facebook";
    int j = FacebookFileSystemCache.instance().getServerId(paramString);
    int i = j;
    if (j == 0)
    {
      FacebookFileSystemCache.instance().addServer(paramString);
      i = FacebookFileSystemCache.instance().getServerId(paramString);
    }
    return i;
  }
  
  private String getToken(String paramString1, String arg2)
  {
    synchronized (access_tokens)
    {
      paramString1 = access_tokens.get(paramString1)).token;
      return paramString1;
    }
  }
  
  private boolean loadTokens()
  {
    HashMap localHashMap = new HashMap();
    try
    {
      ??? = new File(private_storePath + "/" + "Facebook.cfg");
      if (((File)???).exists())
      {
        ??? = new DataInputStream(new FileInputStream((File)???));
        BufferedReader localBufferedReader = new BufferedReader(new InputStreamReader((InputStream)???));
        for (;;)
        {
          Object localObject3 = localBufferedReader.readLine();
          if (localObject3 == null) {
            break;
          }
          localObject3 = ((String)localObject3).split("#####");
          if (localObject3.length == 3) {
            localHashMap.put(localObject3[1], new FacebookFileSystem.User(this, localObject3[0], localObject3[1], localObject3[2]));
          }
        }
        ((DataInputStream)???).close();
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      return false;
    }
    synchronized (access_tokens)
    {
      access_tokens = localException;
      return true;
    }
  }
  
  public static OutputStream openHttpOutputStream(String paramString1, String paramString2, TypedMap paramTypedMap)
  {
    String str = paramString1;
    if (paramString2.equals("GET")) {
      str = paramString1 + "?" + encodeUrl(paramTypedMap);
    }
    paramString1 = (HttpURLConnection)new URL(str).openConnection();
    paramString1.setRequestProperty("User-Agent", System.getProperties().getProperty("http.agent") + " FacebookAndroidSDK");
    if ((paramString1 instanceof HttpsURLConnection)) {
      trustAllServer((HttpsURLConnection)paramString1);
    }
    if (!"GET".equalsIgnoreCase(paramString2))
    {
      if (!paramTypedMap.containsKey("method")) {
        paramTypedMap.put("method", paramString2);
      }
      paramString1.setRequestMethod("POST");
      paramString1.setRequestProperty("Content-Type", "multipart/form-data;boundary=3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f");
      paramString1.setDoOutput(true);
      paramString1.setDoInput(true);
      paramString1.setRequestProperty("Connection", "Keep-Alive");
      paramString1.connect();
      paramString1 = new FacebookFileSystem.1(paramString1.getOutputStream(), paramString1);
      paramString1.write("--3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f\r\n".getBytes());
      paramString1.write(encodePostBody(paramTypedMap, "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f").getBytes());
      paramString1.write("\r\n--3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f\r\n".getBytes());
      paramString1.write("Content-Disposition: form-data; filename=\"Name-upload-test\"\r\n".getBytes());
      paramString1.write("Content-Type: content/unknown\r\n\r\n".getBytes());
      return paramString1;
    }
    return null;
  }
  
  private void parseAlbums(String paramString, JSONObject paramJSONObject, HashMap<String, FacebookFileSystemCache.FacebookFileCacheEntry> paramHashMap)
  {
    for (;;)
    {
      int i;
      try
      {
        JSONArray localJSONArray = paramJSONObject.optJSONArray("data");
        i = 0;
        if ((localJSONArray != null) && (i < localJSONArray.length()))
        {
          JSONObject localJSONObject = localJSONArray.getJSONObject(i);
          if (localJSONObject != null)
          {
            FacebookFileSystemCache.FacebookFileCacheEntry localFacebookFileCacheEntry = new FacebookFileSystemCache.FacebookFileCacheEntry();
            isDir = 1;
            url_id = localJSONObject.optString("id");
            if (paramString.endsWith("/"))
            {
              paramJSONObject = paramString + url_id;
              path = paramJSONObject;
              paramJSONObject = localJSONObject.optJSONObject("from");
              if (paramJSONObject != null)
              {
                ownerId = paramJSONObject.optString("id");
                ownerUsername = paramJSONObject.optString("name");
              }
              name = localJSONObject.optString("name");
              description = localJSONObject.optString("description");
              thumbnail_url = String.format(apiUri + "%s/picture", new Object[] { url_id });
              mtime = ((int)parseDate(localJSONObject.optString("created_time")).getTime() / 1000);
              paramHashMap.put(path, localFacebookFileCacheEntry);
            }
            else
            {
              paramJSONObject = paramString + "/" + url_id;
              continue;
            }
          }
        }
        else
        {
          return;
        }
      }
      catch (JSONException paramString)
      {
        throw new NetFsException(paramString);
      }
      i += 1;
    }
  }
  
  private Date parseDate(String paramString)
  {
    return bd.a(paramString.replaceAll("T", " "), dateFormater);
  }
  
  private void parsePhotos(String paramString, JSONObject paramJSONObject, HashMap<String, FacebookFileSystemCache.FacebookFileCacheEntry> paramHashMap)
  {
    for (;;)
    {
      try
      {
        JSONArray localJSONArray = paramJSONObject.optJSONArray("data");
        if ((localJSONArray == null) || (localJSONArray.length() <= 0)) {
          break;
        }
        int i = 0;
        if (i >= localJSONArray.length()) {
          break;
        }
        FacebookFileSystemCache.FacebookFileCacheEntry localFacebookFileCacheEntry = new FacebookFileSystemCache.FacebookFileCacheEntry();
        paramJSONObject = localJSONArray.getJSONObject(i);
        mtime = ((int)(parseDate(paramJSONObject.optString("created_time")).getTime() / 1000L));
        url = paramJSONObject.optString("source");
        name = paramJSONObject.optString("name");
        thumbnail_url = paramJSONObject.optString("picture");
        url_id = paramJSONObject.optString("id");
        description = paramJSONObject.optString("description");
        Object localObject1 = paramJSONObject.optJSONObject("from");
        if (localObject1 != null)
        {
          ownerId = ((JSONObject)localObject1).optString("id");
          ownerUsername = ((JSONObject)localObject1).optString("name");
        }
        localObject1 = "";
        Object localObject2 = paramJSONObject.optJSONObject("tags");
        paramJSONObject = (JSONObject)localObject1;
        if (localObject2 != null)
        {
          localObject2 = ((JSONObject)localObject2).optJSONArray("data");
          paramJSONObject = (JSONObject)localObject1;
          if (localObject2 != null)
          {
            int k = ((JSONArray)localObject2).length();
            int j = 0;
            paramJSONObject = (JSONObject)localObject1;
            if (j < k)
            {
              localObject1 = (String)localObject1 + ((JSONArray)localObject2).optJSONObject(j).optString("name") + ",";
              j += 1;
              continue;
            }
          }
        }
        localObject1 = paramJSONObject;
        if (paramJSONObject.endsWith(",")) {
          localObject1 = paramJSONObject.substring(0, paramJSONObject.length() - 1);
        }
        tags = ((String)localObject1);
        if (isDir == 1)
        {
          if (paramString.endsWith("/"))
          {
            paramJSONObject = paramString + name;
            path = paramJSONObject;
            paramHashMap.put(path, localFacebookFileCacheEntry);
            i += 1;
          }
          else
          {
            paramJSONObject = paramString + "/" + name;
          }
        }
        else if (paramString.endsWith("/"))
        {
          paramJSONObject = paramString + url_id;
          path = paramJSONObject;
        }
        else
        {
          paramJSONObject = paramString + "/" + url_id;
        }
      }
      catch (JSONException paramString)
      {
        throw new NetFsException(paramString);
      }
    }
  }
  
  private static String read(InputStream paramInputStream)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    BufferedReader localBufferedReader = new BufferedReader(new InputStreamReader(paramInputStream), 1000);
    for (String str = localBufferedReader.readLine(); str != null; str = localBufferedReader.readLine()) {
      localStringBuilder.append(str);
    }
    paramInputStream.close();
    return localStringBuilder.toString();
  }
  
  private boolean saveTokens()
  {
    synchronized (access_tokens)
    {
      Object localObject1 = new File(private_storePath + "/" + "Facebook.cfg");
      ((File)localObject1).delete();
      try
      {
        localObject1 = new BufferedWriter(new FileWriter((File)localObject1));
        Iterator localIterator = access_tokens.entrySet().iterator();
        while (localIterator.hasNext())
        {
          FacebookFileSystem.User localUser = (FacebookFileSystem.User)((Map.Entry)localIterator.next()).getValue();
          ((BufferedWriter)localObject1).write(id + "#####" + name + "#####" + token + "\r\n");
        }
        localException.flush();
      }
      catch (Exception localException)
      {
        return false;
      }
      localException.close();
      return true;
    }
  }
  
  public static void trustAllServer(HttpsURLConnection paramHttpsURLConnection)
  {
    FacebookFileSystem.2 local2 = new FacebookFileSystem.2();
    try
    {
      SSLContext localSSLContext = SSLContext.getInstance("TLS");
      SecureRandom localSecureRandom = new SecureRandom();
      localSSLContext.init(null, new TrustManager[] { local2 }, localSecureRandom);
      paramHttpsURLConnection.setSSLSocketFactory(localSSLContext.getSocketFactory());
      return;
    }
    catch (Exception paramHttpsURLConnection)
    {
      paramHttpsURLConnection.printStackTrace();
    }
  }
  
  public String addComment(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    try
    {
      if (getCacheEntry(paramString1, paramString3) == null)
      {
        Log.e("Facebook", "can't get cache entry for delete");
        return null;
      }
      paramString1 = getToken(paramString1, paramString2);
      if (paramString1 == null)
      {
        Log.e("Facebook", "delete, can't get the token");
        return null;
      }
    }
    catch (Exception paramString1)
    {
      paramString1.printStackTrace();
      throw new PhotoInfoException(paramString1);
    }
    paramString1 = (HttpURLConnection)new URL(apiUri + com.estrongs.fs.a.a.b(paramString3) + "/comments?access_token=" + paramString1).openConnection();
    if ((paramString1 instanceof HttpsURLConnection)) {
      trustAllServer((HttpsURLConnection)paramString1);
    }
    paramString1.setRequestProperty("User-Agent", System.getProperties().getProperty("http.agent") + " FacebookAndroidSDK");
    paramString1.setRequestMethod("POST");
    paramString1.setDoOutput(true);
    paramString1.setDoInput(true);
    paramString1.setRequestProperty("Connection", "Keep-Alive");
    paramString1.connect();
    paramString2 = new BufferedOutputStream(paramString1.getOutputStream());
    paramString3 = URLEncoder.encode("message", "UTF-8") + "=" + URLEncoder.encode(paramString4, "UTF-8");
    paramString2.write((paramString3 + "&" + URLEncoder.encode("format", "UTF-8") + "=" + URLEncoder.encode("json", "UTF-8")).getBytes());
    paramString2.flush();
    paramString2.close();
    paramString3 = paramString1.getInputStream();
    paramString2 = new StringBuilder();
    paramString4 = new BufferedReader(new InputStreamReader(paramString3), 1000);
    for (paramString1 = paramString4.readLine(); paramString1 != null; paramString1 = paramString4.readLine()) {
      paramString2.append(paramString1);
    }
    paramString3.close();
    paramString1 = new JSONObject(paramString2.toString());
    if ((paramString1 != null) && (paramString1.optString("id") != null)) {
      return paramString1.optString("id");
    }
    paramString1 = paramString2.toString();
    return paramString1;
  }
  
  public com.gmail.yuyang226.flickr.a.a addNote(String paramString1, String paramString2, String paramString3, com.gmail.yuyang226.flickr.a.a parama)
  {
    return null;
  }
  
  public void addPhoto(String paramString1, String paramString2, String paramString3, String paramString4) {}
  
  public boolean addServer(String paramString1, String paramString2)
  {
    if (!authenticate(paramString1, paramString2)) {
      return false;
    }
    FacebookFileSystemCache.instance().addServer(paramString1 + "@Facebook");
    return true;
  }
  
  public boolean authenticate(String paramString1, String paramString2)
  {
    return getToken(paramString1, paramString2) != null;
  }
  
  public void close() {}
  
  public FacebookFileSystemCache.FacebookFileCacheEntry convertToCacheEntry(SPFileInfo paramSPFileInfo)
  {
    FacebookFileSystemCache.FacebookFileCacheEntry localFacebookFileCacheEntry = new FacebookFileSystemCache.FacebookFileCacheEntry();
    path = path;
    mtime = ((int)(lastModifiedTime / 1000L));
    if (isDirectory) {}
    for (int i = 1;; i = 0)
    {
      isDir = i;
      size = ((int)size);
      if ((path == null) || (path.length() == 0)) {
        path = "/";
      }
      return localFacebookFileCacheEntry;
    }
  }
  
  public SPFileInfo convertToFileInfo(FacebookFileSystemCache.FacebookFileCacheEntry paramFacebookFileCacheEntry)
  {
    boolean bool = true;
    if (paramFacebookFileCacheEntry == null) {
      return null;
    }
    SPFileInfo localSPFileInfo = new SPFileInfo();
    path = path;
    name = name;
    lastModifiedTime = mtime;
    lastModifiedTime *= 1000L;
    readable = true;
    writable = true;
    hidden = name.startsWith(".");
    if (isDir == 1) {}
    for (;;)
    {
      isDirectory = bool;
      size = size;
      folder_type = 0;
      publicFlag = publicFlag;
      friendFlag = friendFlag;
      familyFlag = familyFlag;
      notes = notes;
      description = description;
      ownerId = ownerId;
      ownerUsername = ownerUsername;
      thumbnail_url = thumbnail_url;
      return localSPFileInfo;
      bool = false;
    }
  }
  
  public boolean copyFile(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    throw new NetFsException(new UnsupportedOperationException("Facebook does not support copy ation now."));
  }
  
  public Album createAlbum(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    paramString3 = getToken(paramString1, null);
    if (paramString3 == null)
    {
      Log.e("Facebook", "createAlbum, can't get the token");
      return null;
    }
    paramString1 = (FacebookFileSystem.User)access_tokens.get(paramString1);
    if (paramString1 == null)
    {
      Log.e("Facebook", "createAlbum, can't get the user");
      return null;
    }
    paramString1 = new HttpPost(String.format(apiUri + "%s/albums?access_token=%s", new Object[] { id, paramString3 }));
    paramString3 = new ArrayList();
    paramString3.add(new BasicNameValuePair("name", paramString2));
    paramString3.add(new BasicNameValuePair("message", paramString2));
    try
    {
      paramString1.setEntity(new UrlEncodedFormEntity(paramString3, "utf-8"));
      paramString1 = new Album(execute(getNewHttpClient(), paramString1).optString("id"), paramString2, null, null);
      return paramString1;
    }
    catch (Exception paramString1)
    {
      throw new AlbumException(paramString1);
    }
  }
  
  public boolean createFile(String paramString1, String paramString2, String paramString3, boolean paramBoolean)
  {
    return false;
  }
  
  public void delServer(String paramString1, String arg2)
  {
    if (access_tokens.size() == 0) {
      loadTokens();
    }
    synchronized (access_tokens)
    {
      access_tokens.remove(paramString1);
      FacebookFileSystemCache.instance().delServer(paramString1 + "@Facebook");
      saveTokens();
      return;
    }
  }
  
  public void deleteComment(String paramString1, String paramString2, String paramString3, String paramString4) {}
  
  public boolean deleteFile(String paramString1, String paramString2, String paramString3)
  {
    FacebookFileSystemCache.FacebookFileCacheEntry localFacebookFileCacheEntry;
    try
    {
      localFacebookFileCacheEntry = getCacheEntry(paramString1, paramString3);
      if (localFacebookFileCacheEntry == null)
      {
        Log.e("Facebook", "can't get cache entry for delete");
        return false;
      }
      paramString1 = getToken(paramString1, paramString2);
      if (paramString1 == null)
      {
        Log.e("Facebook", "delete, can't get the token");
        return false;
      }
    }
    catch (Exception paramString1)
    {
      new NetFsException(paramString1);
      return false;
    }
    paramString1 = new HttpPost(String.format(apiUri + "%s?method=delete&access_token=%s", new Object[] { url_id, paramString1 }));
    execute(getNewHttpClient(), paramString1);
    FacebookFileSystemCache.instance().deleteFile(serverId, paramString3);
    return true;
  }
  
  public void deleteNote(String paramString1, String paramString2, String paramString3) {}
  
  protected void detectErrorAndThrowException(JSONObject paramJSONObject)
  {
    if (paramJSONObject == null) {}
    do
    {
      return;
      paramJSONObject = paramJSONObject.optJSONObject("error");
    } while (paramJSONObject == null);
    throw new NetFsException(paramJSONObject.optString("message"), NetFsException.ERROR_CODE.NETFS_ERROR_AUTH_FAILED);
  }
  
  public void editComment(String paramString1, String paramString2, String paramString3, String paramString4) {}
  
  public void editNote(String paramString1, String paramString2, com.gmail.yuyang226.flickr.a.a parama) {}
  
  public boolean exists(String paramString1, String paramString2, String paramString3)
  {
    if (paramString3.equals("/")) {}
    while (getCacheEntry(paramString1, paramString3) != null) {
      return true;
    }
    return false;
  }
  
  public c get(URL paramURL, List<com.gmail.yuyang226.flickr.a> paramList)
  {
    paramList.add(new com.gmail.yuyang226.flickr.a("nojsoncallback", "1"));
    paramList.add(new com.gmail.yuyang226.flickr.a("format", "json"));
    return new b(OAuthUtil.getLine(paramURL, paramList));
  }
  
  public List<com.gmail.yuyang226.flickr.a> getAccessTokenParameters(String paramString1, String paramString2, String paramString3)
  {
    return null;
  }
  
  public URL getAccessTokenUrl()
  {
    try
    {
      URL localURL = d.a("www.flickr.com", 80, "/services/oauth/access_token");
      return localURL;
    }
    catch (MalformedURLException localMalformedURLException)
    {
      localMalformedURLException.printStackTrace();
    }
    return null;
  }
  
  public List<Album> getAlbums(String paramString1, String paramString2, String paramString3)
  {
    return getAllAlbums(paramString1, paramString2);
  }
  
  public List<Album> getAllAlbums(String paramString1, String paramString2)
  {
    paramString2 = new LinkedList();
    try
    {
      paramString1 = getPhotosets(paramString1, 1000, 0);
      Object localObject = new LinkedHashMap();
      parseAlbums("", paramString1, (HashMap)localObject);
      paramString1 = ((HashMap)localObject).values().iterator();
      while (paramString1.hasNext())
      {
        localObject = (FacebookFileSystemCache.FacebookFileCacheEntry)paramString1.next();
        String str = apiUri + url_id;
        paramString2.add(new Album(url_id, name, description, str));
      }
      return paramString2;
    }
    catch (Exception paramString1)
    {
      new AlbumException(paramString1);
    }
  }
  
  public String getBuddyIcon(String paramString1, String paramString2)
  {
    String str = apiUri + "%s/picture";
    if (getToken(paramString1, null) == null)
    {
      Log.e("Facebook", "can't get the token");
      return null;
    }
    return String.format(str, new Object[] { paramString2 });
  }
  
  public List<com.gmail.yuyang226.flickr.a.a.a> getComments(String paramString1, String paramString2, String paramString3, TypedMap paramTypedMap)
  {
    int i = 0;
    try
    {
      paramString1 = getToken(paramString1, paramString2);
      if (paramString1 == null)
      {
        Log.e("Facebook", "delete, can't get the token");
        return null;
      }
      int j = paramTypedMap.getInt("limit", 10L);
      int k = paramTypedMap.getInt("offset", 0L);
      paramString1 = new HttpGet(String.format("https://graph.facebook.com/%s/comments?limit=%s&offset=%s&access_token=%s", new Object[] { com.estrongs.fs.a.a.b(paramString3), Integer.valueOf(j), Integer.valueOf(k), paramString1 }));
      paramString2 = parseAsJSON(getNewHttpClient().execute(paramString1));
      paramString1 = new ArrayList();
      paramString3 = paramString2.optJSONArray("data");
      while ((paramString3 != null) && (i < paramString3.length()))
      {
        paramTypedMap = new com.gmail.yuyang226.flickr.a.a.a();
        JSONObject localJSONObject1 = paramString3.getJSONObject(i);
        paramTypedMap.c(localJSONObject1.getString("id"));
        JSONObject localJSONObject2 = localJSONObject1.optJSONObject("from");
        if (localJSONObject2 != null)
        {
          paramTypedMap.a(localJSONObject2.getString("id"));
          paramTypedMap.b(localJSONObject2.getString("name"));
        }
        paramTypedMap.a(parseDate(localJSONObject1.optString("created_time")));
        paramTypedMap.e(localJSONObject1.getString("message"));
        paramString1.add(paramTypedMap);
        i += 1;
      }
      paramString2 = paramString2.optJSONObject("paging");
      if (paramString2 != null)
      {
        paramString2.optString("next");
        return paramString1;
      }
    }
    catch (Exception paramString1)
    {
      throw new PhotoInfoException(paramString1);
    }
    return paramString1;
  }
  
  /* Error */
  public SPFileInfo getFileInfo(String paramString1, String paramString2, String paramString3)
  {
    // Byte code:
    //   0: aload_3
    //   1: ldc_w 261
    //   4: invokevirtual 322	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   7: ifeq +5 -> 12
    //   10: aconst_null
    //   11: areturn
    //   12: aload_0
    //   13: aload_1
    //   14: aload_3
    //   15: invokespecial 636	com/estrongs/android/pop/spfs/facebook/FacebookFileSystem:getCacheEntry	(Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache$FacebookFileCacheEntry;
    //   18: astore_2
    //   19: aload_2
    //   20: ifnull -10 -> 10
    //   23: aload_0
    //   24: aload_2
    //   25: invokevirtual 919	com/estrongs/android/pop/spfs/facebook/FacebookFileSystem:convertToFileInfo	(Lcom/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache$FacebookFileCacheEntry;)Lcom/estrongs/android/pop/spfs/SPFileInfo;
    //   28: astore_1
    //   29: aload_1
    //   30: getfield 693	com/estrongs/android/pop/spfs/SPFileInfo:size	J
    //   33: lstore 4
    //   35: lload 4
    //   37: ldc2_w 920
    //   40: lcmp
    //   41: ifne +15 -> 56
    //   44: aload_1
    //   45: aload_2
    //   46: getfield 245	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache$FacebookFileCacheEntry:url	Ljava/lang/String;
    //   49: invokestatic 926	com/estrongs/android/pop/spfs/ESURLUtil:getLength	(Ljava/lang/String;)I
    //   52: i2l
    //   53: putfield 693	com/estrongs/android/pop/spfs/SPFileInfo:size	J
    //   56: aload_1
    //   57: areturn
    //   58: astore_2
    //   59: aload_2
    //   60: invokevirtual 854	java/net/MalformedURLException:printStackTrace	()V
    //   63: new 186	com/estrongs/android/pop/netfs/NetFsException
    //   66: dup
    //   67: aload_2
    //   68: invokespecial 204	com/estrongs/android/pop/netfs/NetFsException:<init>	(Ljava/lang/Throwable;)V
    //   71: pop
    //   72: goto -16 -> 56
    //   75: astore_1
    //   76: aload_1
    //   77: invokevirtual 317	java/lang/Exception:printStackTrace	()V
    //   80: aconst_null
    //   81: areturn
    //   82: astore_2
    //   83: aload_2
    //   84: invokevirtual 927	java/io/IOException:printStackTrace	()V
    //   87: new 186	com/estrongs/android/pop/netfs/NetFsException
    //   90: dup
    //   91: aload_2
    //   92: invokespecial 204	com/estrongs/android/pop/netfs/NetFsException:<init>	(Ljava/lang/Throwable;)V
    //   95: pop
    //   96: goto -40 -> 56
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	99	0	this	FacebookFileSystem
    //   0	99	1	paramString1	String
    //   0	99	2	paramString2	String
    //   0	99	3	paramString3	String
    //   33	3	4	l	long
    // Exception table:
    //   from	to	target	type
    //   44	56	58	java/net/MalformedURLException
    //   12	19	75	java/lang/Exception
    //   23	35	75	java/lang/Exception
    //   44	56	75	java/lang/Exception
    //   59	72	75	java/lang/Exception
    //   83	96	75	java/lang/Exception
    //   44	56	82	java/io/IOException
  }
  
  public InputStream getFileInputStream(String paramString1, String paramString2, String paramString3, long paramLong)
  {
    Object localObject2 = null;
    try
    {
      FacebookFileSystemCache.FacebookFileCacheEntry localFacebookFileCacheEntry = getCacheEntry(paramString1, paramString3);
      if (localFacebookFileCacheEntry == null)
      {
        Log.e("Facebook", "can't get cache entry for InputStream");
        return null;
      }
      paramString3 = url;
      if (isDir == 1)
      {
        localObject1 = thumbnail_url;
        paramString3 = (String)localObject1;
        if (bd.a((CharSequence)localObject1)) {
          paramString3 = apiUri + url_id + "/picture";
        }
      }
      localObject1 = localObject2;
      if (bd.a(paramString3)) {
        break label311;
      }
      paramString1 = new HttpGet(paramString3 + "?access_token=" + getToken(paramString1, paramString2));
      if (paramLong != 0L) {
        paramString1.addHeader("Range", "bytes=" + paramLong + "-");
      }
      paramString1 = getNewHttpClient().execute(paramString1);
      if ((paramString1.getStatusLine().getStatusCode() != 200) && (paramString1.getStatusLine().getStatusCode() != 206) && (paramString1.getStatusLine().getStatusCode() != 203))
      {
        Log.e("Facebook", "getInputStream ret:" + paramString1.getStatusLine().getStatusCode());
        return null;
      }
    }
    catch (Exception paramString1)
    {
      paramString1.printStackTrace();
      return null;
    }
    paramString1 = paramString1.getEntity();
    Object localObject1 = localObject2;
    if (paramString1 != null) {
      localObject1 = paramString1.getContent();
    }
    label311:
    return (InputStream)localObject1;
  }
  
  public long getFileLength(String paramString1, String paramString2, String paramString3)
  {
    paramString1 = getFileInfo(paramString1, paramString2, paramString3);
    if (paramString1 == null) {
      return 0L;
    }
    return size;
  }
  
  /* Error */
  public OutputStream getFileOutputStream(String paramString1, String paramString2, String paramString3, long paramLong, TypedMap paramTypedMap)
  {
    // Byte code:
    //   0: aload 6
    //   2: ldc_w 657
    //   5: aload 6
    //   7: ldc_w 982
    //   10: invokevirtual 161	com/estrongs/android/util/TypedMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   13: invokevirtual 472	com/estrongs/android/util/TypedMap:put	(Ljava/lang/String;Ljava/lang/Object;)Lcom/estrongs/android/util/TypedMap;
    //   16: pop
    //   17: aload_0
    //   18: aload_1
    //   19: aconst_null
    //   20: invokespecial 339	com/estrongs/android/pop/spfs/facebook/FacebookFileSystem:getToken	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   23: astore 7
    //   25: aload 6
    //   27: ldc_w 984
    //   30: invokevirtual 182	com/estrongs/android/util/TypedMap:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   33: astore_2
    //   34: ldc_w 986
    //   37: astore_3
    //   38: aload_2
    //   39: invokestatic 933	com/estrongs/android/util/bd:a	(Ljava/lang/CharSequence;)Z
    //   42: ifne +65 -> 107
    //   45: aload_2
    //   46: invokestatic 648	com/estrongs/fs/a/a:b	(Ljava/lang/String;)Ljava/lang/String;
    //   49: astore_2
    //   50: new 102	java/lang/StringBuilder
    //   53: dup
    //   54: invokespecial 103	java/lang/StringBuilder:<init>	()V
    //   57: aload_0
    //   58: getfield 70	com/estrongs/android/pop/spfs/facebook/FacebookFileSystem:apiUri	Ljava/lang/String;
    //   61: invokevirtual 107	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   64: aload_2
    //   65: invokevirtual 107	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   68: ldc_w 988
    //   71: invokevirtual 107	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   74: aload 7
    //   76: invokevirtual 107	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   79: invokevirtual 111	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   82: astore_1
    //   83: aload 6
    //   85: ldc_w 989
    //   88: lload 4
    //   90: invokestatic 994	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   93: invokevirtual 472	com/estrongs/android/util/TypedMap:put	(Ljava/lang/String;Ljava/lang/Object;)Lcom/estrongs/android/util/TypedMap;
    //   96: pop
    //   97: aload_1
    //   98: ldc_w 474
    //   101: aload 6
    //   103: invokestatic 996	com/estrongs/android/pop/spfs/facebook/FacebookFileSystem:openHttpOutputStream	(Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/android/util/TypedMap;)Ljava/io/OutputStream;
    //   106: areturn
    //   107: aload 6
    //   109: ldc_w 998
    //   112: invokevirtual 182	com/estrongs/android/util/TypedMap:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   115: astore 8
    //   117: aload_3
    //   118: astore_2
    //   119: aload 8
    //   121: invokestatic 933	com/estrongs/android/util/bd:a	(Ljava/lang/CharSequence;)Z
    //   124: ifne -74 -> 50
    //   127: aload_0
    //   128: aload_1
    //   129: aload 8
    //   131: aload 8
    //   133: aconst_null
    //   134: invokevirtual 1000	com/estrongs/android/pop/spfs/facebook/FacebookFileSystem:createAlbum	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/Album;
    //   137: astore_1
    //   138: aload_3
    //   139: astore_2
    //   140: aload_1
    //   141: getfield 1001	com/estrongs/android/pop/spfs/Album:id	Ljava/lang/String;
    //   144: invokestatic 933	com/estrongs/android/util/bd:a	(Ljava/lang/CharSequence;)Z
    //   147: ifne -97 -> 50
    //   150: aload_1
    //   151: getfield 1001	com/estrongs/android/pop/spfs/Album:id	Ljava/lang/String;
    //   154: astore_2
    //   155: aload 6
    //   157: ldc_w 984
    //   160: new 102	java/lang/StringBuilder
    //   163: dup
    //   164: invokespecial 103	java/lang/StringBuilder:<init>	()V
    //   167: aload_0
    //   168: getfield 70	com/estrongs/android/pop/spfs/facebook/FacebookFileSystem:apiUri	Ljava/lang/String;
    //   171: invokevirtual 107	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   174: aload_2
    //   175: invokevirtual 107	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   178: invokevirtual 111	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   181: invokevirtual 472	com/estrongs/android/util/TypedMap:put	(Ljava/lang/String;Ljava/lang/Object;)Lcom/estrongs/android/util/TypedMap;
    //   184: pop
    //   185: goto -135 -> 50
    //   188: astore_1
    //   189: new 186	com/estrongs/android/pop/netfs/NetFsException
    //   192: dup
    //   193: aload_1
    //   194: invokespecial 204	com/estrongs/android/pop/netfs/NetFsException:<init>	(Ljava/lang/Throwable;)V
    //   197: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	198	0	this	FacebookFileSystem
    //   0	198	1	paramString1	String
    //   0	198	2	paramString2	String
    //   0	198	3	paramString3	String
    //   0	198	4	paramLong	long
    //   0	198	6	paramTypedMap	TypedMap
    //   23	52	7	str1	String
    //   115	17	8	str2	String
    // Exception table:
    //   from	to	target	type
    //   0	34	188	java/lang/Exception
    //   38	50	188	java/lang/Exception
    //   50	107	188	java/lang/Exception
    //   107	117	188	java/lang/Exception
    //   119	138	188	java/lang/Exception
    //   140	185	188	java/lang/Exception
  }
  
  public String getLastErrorString(String paramString)
  {
    return lastErrorString;
  }
  
  public HttpClient getNewHttpClient()
  {
    try
    {
      Object localObject1 = KeyStore.getInstance(KeyStore.getDefaultType());
      ((KeyStore)localObject1).load(null, null);
      Object localObject2 = new FacebookFileSystem.MySSLSocketFactory(this, (KeyStore)localObject1);
      ((SSLSocketFactory)localObject2).setHostnameVerifier(SSLSocketFactory.ALLOW_ALL_HOSTNAME_VERIFIER);
      localObject1 = new BasicHttpParams();
      HttpProtocolParams.setVersion((HttpParams)localObject1, HttpVersion.HTTP_1_1);
      HttpProtocolParams.setContentCharset((HttpParams)localObject1, "UTF-8");
      SchemeRegistry localSchemeRegistry = new SchemeRegistry();
      localSchemeRegistry.register(new Scheme("http", PlainSocketFactory.getSocketFactory(), 80));
      localSchemeRegistry.register(new Scheme("https", (SocketFactory)localObject2, 443));
      localObject2 = new ThreadSafeClientConnManager((HttpParams)localObject1, localSchemeRegistry);
      HttpConnectionParams.setConnectionTimeout((HttpParams)localObject1, 30000);
      HttpConnectionParams.setSoTimeout((HttpParams)localObject1, 30000);
      localObject1 = new DefaultHttpClient((ClientConnectionManager)localObject2, (HttpParams)localObject1);
      return (HttpClient)localObject1;
    }
    catch (Exception localException) {}
    return new DefaultHttpClient();
  }
  
  public String getOAuthLoginUrl(String paramString)
  {
    return "https://m.facebook.com/dialog/oauth?display=touch&client_id=245740315545780&scope=offline_access%2Cpublish_stream%2Cuser_photos%2Cpublish_checkins%2Cphoto_upload&type=user_agent&redirect_uri=fbconnect%3A%2F%2Fsuccess";
  }
  
  public String getOAuthVersion()
  {
    return "2";
  }
  
  public String getPhotoExtension(String paramString1, String paramString2, String paramString3)
  {
    try
    {
      paramString1 = getCacheEntry(paramString1, paramString3);
      if ((paramString1 == null) || (isDir != 0) || (url == null))
      {
        Log.e("Facebook", "can't get cache entry for get photo extension");
        return null;
      }
      paramString1 = url.substring(url.lastIndexOf('.'));
      return paramString1;
    }
    catch (Exception paramString1)
    {
      throw new PhotoInfoException(paramString1);
    }
  }
  
  public SPFileInfo getPhotoInfo(String paramString1, String paramString2, String paramString3)
  {
    try
    {
      paramString1 = getToken(paramString1, paramString2);
      if (paramString1 == null)
      {
        Log.e("Facebook", "delete, can't get the token");
        return null;
      }
      paramString1 = new HttpGet(String.format("https://graph.facebook.com/%s?access_token=%s", new Object[] { com.estrongs.fs.a.a.b(paramString3), paramString1 }));
      paramString1 = convertToFileInfo(getFileCacheEntry(parseAsJSON(getNewHttpClient().execute(paramString1)), paramString3, true));
      return paramString1;
    }
    catch (Exception paramString1)
    {
      throw new PhotoInfoException(paramString1);
    }
  }
  
  public boolean getRegisterPrepareInfo(Object[] paramArrayOfObject)
  {
    return false;
  }
  
  public URL getRequestTokenUrl()
  {
    try
    {
      URL localURL = new URL(getOAuthLoginUrl(null));
      return localURL;
    }
    catch (MalformedURLException localMalformedURLException)
    {
      localMalformedURLException.printStackTrace();
    }
    return null;
  }
  
  public InputStream getThumbnail(String paramString1, String paramString2, String paramString3)
  {
    Object localObject1 = null;
    Object localObject2;
    try
    {
      localObject2 = getCacheEntry(paramString1, paramString3);
      if ((localObject2 == null) || (isDir != 0) || (url == null))
      {
        Log.e("Facebook", "can't get cache entry for InputStream");
        return null;
      }
      paramString3 = (String)localObject1;
      if (thumbnail_url == null) {
        return paramString3;
      }
      paramString3 = new HttpGet(thumbnail_url);
      localObject2 = getNewHttpClient();
      if (getToken(paramString1, paramString2) == null)
      {
        Log.e("Facebook", "can't get token download");
        return null;
      }
    }
    catch (Exception paramString1)
    {
      paramString1.printStackTrace();
      return null;
    }
    paramString1 = ((HttpClient)localObject2).execute(paramString3);
    if ((paramString1.getStatusLine().getStatusCode() != 200) && (paramString1.getStatusLine().getStatusCode() != 203))
    {
      Log.e("Facebook", "getInputStream ret:" + paramString1.getStatusLine().getStatusCode());
      return null;
    }
    paramString1 = paramString1.getEntity();
    paramString3 = (String)localObject1;
    if (paramString1 != null) {
      paramString3 = paramString1.getContent();
    }
    return paramString3;
  }
  
  public String getUserLoginName(String paramString)
  {
    Object localObject1 = new HttpGet(String.format(apiUri + "me?access_token=%s", new Object[] { paramString }));
    Object localObject2 = getNewHttpClient();
    try
    {
      localObject1 = parseAsJSON(((HttpClient)localObject2).execute((HttpUriRequest)localObject1));
      localObject2 = ((JSONObject)localObject1).optString("username");
      saveUserAndToken(((JSONObject)localObject1).optString("id"), (String)localObject2, paramString, "");
      return (String)localObject2;
    }
    catch (Exception paramString) {}
    return null;
  }
  
  public boolean isDir(String paramString1, String paramString2, String paramString3)
  {
    boolean bool = true;
    paramString1 = getCacheEntry(paramString1, paramString3);
    if (paramString1 == null) {
      return false;
    }
    if (isDir == 1) {}
    for (;;)
    {
      return bool;
      bool = false;
    }
  }
  
  /* Error */
  public java.util.Map<String, SPFileInfo> listFiles(String paramString1, String paramString2, String paramString3, boolean paramBoolean, com.estrongs.android.pop.netfs.INetRefreshCallback paramINetRefreshCallback, TypedMap paramTypedMap)
  {
    // Byte code:
    //   0: aload_3
    //   1: ifnonnull +5 -> 6
    //   4: aconst_null
    //   5: areturn
    //   6: aload_0
    //   7: aload_1
    //   8: aload_3
    //   9: invokespecial 636	com/estrongs/android/pop/spfs/facebook/FacebookFileSystem:getCacheEntry	(Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache$FacebookFileCacheEntry;
    //   12: astore 5
    //   14: iload 4
    //   16: ifne +24 -> 40
    //   19: aload 5
    //   21: ifnull +19 -> 40
    //   24: aload 5
    //   26: getfield 232	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache$FacebookFileCacheEntry:isDir	I
    //   29: ifeq +11 -> 40
    //   32: aload 5
    //   34: getfield 1129	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache$FacebookFileCacheEntry:checktime	I
    //   37: ifne -33 -> 4
    //   40: aload_0
    //   41: aload_1
    //   42: aload_2
    //   43: aload_3
    //   44: aload 6
    //   46: invokevirtual 1133	com/estrongs/android/pop/spfs/facebook/FacebookFileSystem:listFilesInternal	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/android/util/TypedMap;)Ljava/util/HashMap;
    //   49: astore_1
    //   50: aload_1
    //   51: ifnull -47 -> 4
    //   54: new 867	java/util/LinkedHashMap
    //   57: dup
    //   58: invokespecial 868	java/util/LinkedHashMap:<init>	()V
    //   61: astore_2
    //   62: aload_1
    //   63: invokeinterface 1136 1 0
    //   68: invokeinterface 147 1 0
    //   73: astore_3
    //   74: aload_3
    //   75: invokeinterface 153 1 0
    //   80: ifeq +51 -> 131
    //   83: aload_3
    //   84: invokeinterface 157 1 0
    //   89: checkcast 96	java/lang/String
    //   92: astore 5
    //   94: aload_0
    //   95: aload_1
    //   96: aload 5
    //   98: invokeinterface 1137 2 0
    //   103: checkcast 228	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache$FacebookFileCacheEntry
    //   106: invokevirtual 919	com/estrongs/android/pop/spfs/facebook/FacebookFileSystem:convertToFileInfo	(Lcom/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache$FacebookFileCacheEntry;)Lcom/estrongs/android/pop/spfs/SPFileInfo;
    //   109: astore 6
    //   111: aload 6
    //   113: ifnull -39 -> 74
    //   116: aload_2
    //   117: aload 5
    //   119: aload 6
    //   121: invokevirtual 418	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   124: pop
    //   125: goto -51 -> 74
    //   128: astore_1
    //   129: aload_1
    //   130: athrow
    //   131: aload_2
    //   132: areturn
    //   133: astore_1
    //   134: new 186	com/estrongs/android/pop/netfs/NetFsException
    //   137: dup
    //   138: aload_1
    //   139: invokespecial 204	com/estrongs/android/pop/netfs/NetFsException:<init>	(Ljava/lang/Throwable;)V
    //   142: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	143	0	this	FacebookFileSystem
    //   0	143	1	paramString1	String
    //   0	143	2	paramString2	String
    //   0	143	3	paramString3	String
    //   0	143	4	paramBoolean	boolean
    //   0	143	5	paramINetRefreshCallback	com.estrongs.android.pop.netfs.INetRefreshCallback
    //   0	143	6	paramTypedMap	TypedMap
    // Exception table:
    //   from	to	target	type
    //   24	40	128	com/estrongs/android/pop/netfs/NetFsException
    //   40	50	128	com/estrongs/android/pop/netfs/NetFsException
    //   54	74	128	com/estrongs/android/pop/netfs/NetFsException
    //   74	111	128	com/estrongs/android/pop/netfs/NetFsException
    //   116	125	128	com/estrongs/android/pop/netfs/NetFsException
    //   24	40	133	java/lang/Exception
    //   40	50	133	java/lang/Exception
    //   54	74	133	java/lang/Exception
    //   74	111	133	java/lang/Exception
    //   116	125	133	java/lang/Exception
  }
  
  public HashMap<String, FacebookFileSystemCache.FacebookFileCacheEntry> listFilesInternal(String paramString1, String paramString2, String paramString3, TypedMap paramTypedMap)
  {
    loadTokens();
    int j = getServerId(paramString1);
    paramString2 = getCacheEntry(paramString1, paramString3);
    for (;;)
    {
      boolean bool;
      try
      {
        i = paramTypedMap.getInt("per_page", 10L);
        k = paramTypedMap.getInt("page", 1L);
        if ((!"mine".equals(paramTypedMap.getString("content_type"))) && ((com.estrongs.fs.a.a.c(paramString3).size() < 2) || (!"mine".equals(com.estrongs.fs.a.a.c(paramString3).get(1))))) {
          continue;
        }
        paramString1 = getPhotosByMe(paramString1, i, k);
        i = 0;
        paramTypedMap = new LinkedHashMap();
        if (i == 0) {
          continue;
        }
        parseAlbums(paramString3, paramString1, paramTypedMap);
        if (paramString2 != null) {
          break label378;
        }
        paramString1 = new FacebookFileSystemCache.FacebookFileCacheEntry();
        serverId = j;
        path = paramString3;
        isDir = 1;
        if (!"/".equals(paramString3)) {
          continue;
        }
        parentId = 0;
      }
      catch (NetFsException paramString1)
      {
        int k;
        throw paramString1;
        parentId = FacebookFileSystemCache.instance().getPathId(j, getParentPath(paramString3));
        continue;
      }
      catch (Exception paramString1)
      {
        throw new NetFsException(paramString1);
      }
      FacebookFileSystemCache.instance().addFile(paramString1);
      paramString1 = FacebookFileSystemCache.instance().getFile(j, paramString3);
      paramString2 = FacebookFileSystemCache.instance();
      int i = id;
      if (k > 1)
      {
        bool = true;
        paramString2.updateFiles(j, i, paramTypedMap, bool);
        return paramTypedMap;
        if (("album".equals(paramTypedMap.getString("content_type"))) || ((com.estrongs.fs.a.a.c(paramString3).size() >= 2) && ("album".equals(com.estrongs.fs.a.a.c(paramString3).get(1)))))
        {
          if (com.estrongs.fs.a.a.c(paramString3).size() == 2)
          {
            paramString1 = getPhotosets(paramString1, i, k);
            i = 1;
            continue;
          }
          paramString1 = getPhotosByAlbum(paramString1, (String)com.estrongs.fs.a.a.c(paramString3).get(2), i, k);
          i = 0;
          continue;
          parsePhotos(paramString3, paramString1, paramTypedMap);
          continue;
        }
      }
      else
      {
        bool = false;
        continue;
        label378:
        paramString1 = paramString2;
        continue;
      }
      paramString1 = null;
      i = 1;
    }
  }
  
  public boolean mkDirs(String paramString1, String paramString2, String paramString3)
  {
    return createFile(paramString1, paramString2, paramString3, true);
  }
  
  public boolean moveFile(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    throw new NetFsException(new UnsupportedOperationException("Facebook does not support move ation now."));
  }
  
  public JSONObject parseAsJSON(HttpResponse paramHttpResponse)
  {
    try
    {
      str = HttpUtils.readResponse(paramHttpResponse);
      if (str != null) {}
      localJSONObject = new JSONObject();
    }
    catch (IOException paramHttpResponse)
    {
      try
      {
        if (str.length() == 0) {
          return new JSONObject();
        }
        paramHttpResponse = new JSONObject(str);
        return paramHttpResponse;
      }
      catch (JSONException paramHttpResponse)
      {
        String str;
        JSONObject localJSONObject;
        for (;;) {}
      }
      paramHttpResponse = paramHttpResponse;
      throw new NetFsException(paramHttpResponse);
    }
    catch (JSONException paramHttpResponse)
    {
      str = null;
    }
    if ("true".equalsIgnoreCase(str)) {
      try
      {
        localJSONObject.put("result", "true");
        return localJSONObject;
      }
      catch (JSONException paramHttpResponse)
      {
        return localJSONObject;
      }
    }
    throw new NetFsException(paramHttpResponse);
  }
  
  public int register(String paramString1, String paramString2, Object[] paramArrayOfObject)
  {
    return 100;
  }
  
  public void removePhoto(String paramString1, String paramString2, String paramString3, String paramString4) {}
  
  public boolean renameFile(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    return false;
  }
  
  public void saveUserAndToken(String paramString1, String paramString2, String paramString3, String arg4)
  {
    if (access_tokens.size() == 0) {
      loadTokens();
    }
    synchronized (access_tokens)
    {
      access_tokens.put(paramString2, new FacebookFileSystem.User(this, paramString1, paramString2, paramString3));
      FacebookFileSystemCache.instance().addServer(paramString2 + "@Facebook");
      saveTokens();
      return;
    }
  }
  
  public void setConfigDir(String paramString1, String paramString2)
  {
    storePath = paramString1;
    private_storePath = paramString2;
    FacebookFileSystemCache.setPath(paramString1);
  }
  
  public void setMeta(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5) {}
  
  public void setPerms(String paramString1, String paramString2, String paramString3, TypedMap paramTypedMap)
  {
    try
    {
      if (getCacheEntry(paramString1, paramString3) == null)
      {
        Log.e("Facebook", "can't get cache entry for delete");
        return;
      }
      if (getToken(paramString1, paramString2) == null)
      {
        Log.e("Facebook", "delete, can't get the token");
        return;
      }
    }
    catch (Exception paramString1)
    {
      throw new PhotoInfoException(paramString1);
    }
  }
  
  public void setPrivateContent(String paramString1, String paramString2, Object paramObject) {}
  
  public void setTags(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    try
    {
      paramString3 = com.estrongs.fs.a.a.b(paramString3);
      paramString1 = getToken(paramString1, paramString2);
      if (paramString1 == null)
      {
        Log.e("Facebook", "delete, can't get the token");
        return;
      }
      paramString1 = new HttpPost(String.format(apiUri + "%s/tags?access_token=%s", new Object[] { paramString3, paramString1 }));
      paramString2 = new ArrayList();
      paramString2.add(new BasicNameValuePair("name", paramString4));
      paramString1.setEntity(new UrlEncodedFormEntity(paramString2, "utf-8"));
      execute(getNewHttpClient(), paramString1);
      return;
    }
    catch (Exception paramString1)
    {
      new NetFsException(paramString1);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.spfs.facebook.FacebookFileSystem
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
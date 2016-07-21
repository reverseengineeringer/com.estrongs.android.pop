package com.estrongs.android.pop.spfs.flickr;

import com.estrongs.android.pop.netfs.INetRefreshCallback;
import com.estrongs.android.pop.netfs.NetFsException;
import com.estrongs.android.pop.netfs.utils.FastPipedInputStream;
import com.estrongs.android.pop.netfs.utils.HttpUtils;
import com.estrongs.android.pop.netfs.utils.UploadOutputStream;
import com.estrongs.android.pop.spfs.Album;
import com.estrongs.android.pop.spfs.AlbumException;
import com.estrongs.android.pop.spfs.ISPFileSystem;
import com.estrongs.android.pop.spfs.OAuthUtil;
import com.estrongs.android.pop.spfs.PhotoInfoException;
import com.estrongs.android.pop.spfs.SPFileInfo;
import com.estrongs.android.pop.spfs.UploadPipedInputStream;
import com.estrongs.android.pop.spfs.note.IPhotoInfo;
import com.estrongs.android.util.TypedMap;
import com.estrongs.android.util.l;
import com.estrongs.android.util.n;
import com.gmail.yuyang226.flickr.FlickrException;
import com.gmail.yuyang226.flickr.d.d;
import com.gmail.yuyang226.flickr.oauth.OAuthException;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.security.KeyStore;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.HttpVersion;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.scheme.SocketFactory;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.params.HttpProtocolParams;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

public class FlickrFileSystem
  implements ISPFileSystem, IPhotoInfo
{
  private static final String CONFIG_FILE = "Flickr.cfg";
  private static final String CONFIG_SPLIT = "#####";
  private static final ThreadLocal<SimpleDateFormat> DATE_FORMATS = new FlickrFileSystem.1();
  public static final String DEFAULT_API_HOST = "api.flickr.com";
  public static final String DEFAULT_HOST = "www.flickr.com";
  private static final int HTTP_AUTH_FAIL = 401;
  private static final String KEY_API_KEY = "api_key";
  public static final String KEY_EXTRAS = "extras";
  private static final String KEY_METHOD = "method";
  public static final String KEY_OAUTH_TOKEN = "oauth_token";
  public static final String METHOD_ADD_COMMENT = "flickr.photos.comments.addComment";
  public static final String METHOD_ADD_COMMENT_To_PHOTOSET = "flickr.photosets.comments.addComment";
  public static final String METHOD_ADD_NOTE = "flickr.photos.notes.add";
  public static final String METHOD_ADD_PHOTO_TO_PHOTOSET = "flickr.photosets.addPhoto";
  public static final String METHOD_CREATE_PHOTOSET = "flickr.photosets.create";
  public static final String METHOD_DELETE = "flickr.photos.delete";
  public static final String METHOD_DELETE_COMMENT = "flickr.photos.comments.deleteComment";
  public static final String METHOD_DELETE_COMMENT_OF_PHOTOSET = "flickr.photosets.comments.deleteComment";
  public static final String METHOD_DELETE_NOTE = "flickr.photos.notes.delete";
  public static final String METHOD_DELETE_PHOTOSET = "flickr.photosets.delete";
  public static final String METHOD_EDIT_COMMENT = "flickr.photos.comments.editComment";
  public static final String METHOD_EDIT_META_OF_PHOTOSET = "flickr.photosets.editMeta";
  public static final String METHOD_EDIT_NOTE = "flickr.photos.notes.edit";
  public static final String METHOD_FIND_BY_EMAIL = "flickr.people.findByEmail";
  public static final String METHOD_FIND_BY_USERNAME = "flickr.people.findByUsername";
  public static final String METHOD_GET_ALL_CONTEXTS = "flickr.photos.getAllContexts";
  public static final String METHOD_GET_COMMENTS_OF_PHOTOSET = "flickr.photosets.comments.getList";
  public static final String METHOD_GET_COMMENT_LIST = "flickr.photos.comments.getList";
  public static final String METHOD_GET_INFO = "flickr.people.getInfo";
  public static final String METHOD_GET_INTERESTING_LIST = "flickr.interestingness.getList";
  public static final String METHOD_GET_ONLINE_LIST = "flickr.people.getOnlineList";
  public static final String METHOD_GET_PHOTOS = "flickr.people.getPhotos";
  public static final String METHOD_GET_PHOTOSET_LIST = "flickr.photosets.getList";
  public static final String METHOD_GET_PHOTOSET_PHOTO_LIST = "flickr.photosets.getPhotos";
  public static final String METHOD_GET_PHOTO_INFO = "flickr.photos.getInfo";
  public static final String METHOD_GET_PUBLIC_GROUPS = "flickr.people.getPublicGroups";
  public static final String METHOD_GET_PUBLIC_PHOTOS = "flickr.people.getPublicPhotos";
  public static final String METHOD_GET_RECENT = "flickr.photos.comments.getRecentForContacts";
  public static final String METHOD_GET_UPLOAD_STATUS = "flickr.people.getUploadStatus";
  public static final String METHOD_REMOVE_PHOTO_FROM_PHOTOSET = "flickr.photosets.removePhoto";
  public static final String METHOD_SET_META = "flickr.photos.setMeta";
  public static final String METHOD_SET_PERMS = "flickr.photos.setPerms";
  public static final String METHOD_SET_TAGS = "flickr.photos.setTags";
  public static final Set<String> MIN_EXTRAS = new HashSet();
  public static final String ORIGINAL_FORMAT = "original_format";
  public static final String OWNER_NAME = "owner_name";
  public static final String PARAMETER_MAX_COMMENT_DATE = "maxCommentDate";
  public static final String PARAMETER_MIN_COMMENT_DATE = "minCommentDate";
  public static final String PARAM_OAUTH_CONSUMER_KEY = "oauth_consumer_key";
  public static final int PRIVACY_LEVEL_NO_FILTER = 0;
  public static final String UPLOAD_PATH = "/services/upload/";
  public static final String URL_ACCESS_TOKEN = "http://www.flickr.com/services/oauth/access_token";
  private static final String URL_REQUEST_TOKEN = "http://www.flickr.com/services/oauth/request_token";
  public static final String URL_UPLOAD = "http://api.flickr.com/services/upload/";
  private static final String apiKey = "09cfe7214aec69fbda2b044b64305055";
  private static final String sharedSecret = "be578355f122df0a";
  private final int STAT_NET_TYPE_FLICKR = 50;
  private final String TAG = "Flickr";
  private HashMap<String, FlickrFileSystem.User> access_tokens = new HashMap();
  private HashMap<String, String> access_tokens_type = new HashMap();
  private String callbackUrl = "http://www.estrongs.com";
  SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss");
  private String lastErrorString = null;
  private String locale = null;
  private String private_storePath = null;
  private String storePath = null;
  
  static
  {
    MIN_EXTRAS.add("original_format");
    MIN_EXTRAS.add("owner_name");
  }
  
  private void addOAuthParams(String paramString1, String paramString2, List<com.gmail.yuyang226.flickr.a> paramList, String paramString3)
  {
    com.gmail.yuyang226.flickr.oauth.a.a(paramList);
    signPost(paramString1, paramString2, paramList, paramString3);
  }
  
  private void addOAuthToken(List<com.gmail.yuyang226.flickr.a> paramList, String paramString)
  {
    paramList.add(new com.gmail.yuyang226.flickr.a("oauth_token", getTokentoken));
  }
  
  private void addPhoto(String paramString1, String paramString2, String paramString3)
  {
    try
    {
      ArrayList localArrayList = new ArrayList();
      localArrayList.add(new com.gmail.yuyang226.flickr.a("method", "flickr.photosets.addPhoto"));
      localArrayList.add(new com.gmail.yuyang226.flickr.a("oauth_consumer_key", "09cfe7214aec69fbda2b044b64305055"));
      localArrayList.add(new com.gmail.yuyang226.flickr.a("photoset_id", paramString2));
      localArrayList.add(new com.gmail.yuyang226.flickr.a("photo_id", paramString3));
      addOAuthToken(localArrayList, paramString1);
      paramString1 = postJSON("be578355f122df0a", localArrayList, paramString1);
      if (paramString1.b()) {
        throw new FlickrException(paramString1.c(), paramString1.d());
      }
    }
    catch (Exception paramString1)
    {
      throw new AlbumException(paramString1);
    }
  }
  
  private String dateToString(Date paramDate)
  {
    if (paramDate == null) {
      return null;
    }
    return ((DateFormat)DATE_FORMATS.get()).format(paramDate);
  }
  
  private FlickrFileSystemCache.FlickrFileCacheEntry getCacheEntry(String paramString1, String paramString2)
  {
    int i = getServerId(paramString1);
    if (i == 0) {
      return null;
    }
    int j = FlickrFileSystemCache.instance().getPathId(i, paramString2);
    return FlickrFileSystemCache.instance().getFile(i, j);
  }
  
  private String getChildValue(JSONObject paramJSONObject, String paramString)
  {
    if (paramJSONObject.has(paramString)) {
      return paramJSONObject.getJSONObject(paramString).optString("_content");
    }
    return null;
  }
  
  private FlickrFileSystemCache.FlickrFileCacheEntry getFileCacheEntry(JSONObject paramJSONObject, String paramString, boolean paramBoolean)
  {
    int j = 0;
    Object localObject2;
    Object localObject1;
    int i;
    for (;;)
    {
      try
      {
        localFlickrFileCacheEntry = new FlickrFileSystemCache.FlickrFileCacheEntry();
        if (isDir == 1)
        {
          size = 0;
          localObject2 = paramJSONObject.optString("url_l");
          if (((String)localObject2).startsWith("http")) {
            url = ((String)localObject2);
          }
          if (localObject2 != null)
          {
            localObject1 = localObject2;
            if (((String)localObject2).length() != 0) {}
          }
          else
          {
            localObject2 = paramJSONObject.optString("url_m");
            localObject1 = localObject2;
            if (((String)localObject2).startsWith("http"))
            {
              url = ((String)localObject2);
              localObject1 = localObject2;
            }
          }
          if (localObject1 != null)
          {
            localObject2 = localObject1;
            if (((String)localObject1).length() != 0) {}
          }
          else
          {
            localObject1 = paramJSONObject.optString("url_q");
            localObject2 = localObject1;
            if (((String)localObject1).startsWith("http"))
            {
              url = ((String)localObject1);
              localObject2 = localObject1;
            }
          }
          if ((localObject2 == null) || (((String)localObject2).length() == 0))
          {
            localObject1 = paramJSONObject.optString("url_sq");
            if (((String)localObject1).startsWith("http")) {
              url = ((String)localObject1);
            }
          }
          localObject2 = paramJSONObject.optString("url_q");
          if (((String)localObject2).startsWith("http")) {
            thumbnail_url = ((String)localObject2);
          }
          if (localObject2 != null)
          {
            localObject1 = localObject2;
            if (((String)localObject2).length() != 0) {}
          }
          else
          {
            localObject2 = paramJSONObject.optString("url_m");
            localObject1 = localObject2;
            if (((String)localObject2).startsWith("http"))
            {
              thumbnail_url = ((String)localObject2);
              localObject1 = localObject2;
            }
          }
          if (localObject1 != null)
          {
            localObject2 = localObject1;
            if (((String)localObject1).length() != 0) {}
          }
          else
          {
            localObject1 = paramJSONObject.optString("url_l");
            localObject2 = localObject1;
            if (((String)localObject1).startsWith("http"))
            {
              thumbnail_url = ((String)localObject1);
              localObject2 = localObject1;
            }
          }
          if ((localObject2 == null) || (((String)localObject2).length() == 0))
          {
            localObject1 = paramJSONObject.optString("url_sq");
            if (((String)localObject1).startsWith("http")) {
              thumbnail_url = ((String)localObject1);
            }
          }
          localObject1 = paramJSONObject.optJSONObject("title");
          if (localObject1 != null)
          {
            localObject1 = ((JSONObject)localObject1).getString("_content");
            name = ((String)localObject1);
            url_id = paramJSONObject.getString("id");
            if (!paramBoolean) {
              break label965;
            }
            if (isDir != 1) {
              break label891;
            }
            if (!paramString.endsWith("/")) {
              break label862;
            }
            paramString = paramString + (String)localObject1;
            path = paramString;
            publicFlag = "1".equals(paramJSONObject.optString("ispublic"));
            friendFlag = "1".equals(paramJSONObject.optString("isfriend"));
            familyFlag = "1".equals(paramJSONObject.optString("isfamily"));
            localObject1 = getChildValue(paramJSONObject, "description");
            paramString = (String)localObject1;
            if (localObject1 != null) {
              paramString = ((String)localObject1).replaceAll("<[^>]*>", "").replaceAll("\\[http://[^]]*\\]", "");
            }
            description = paramString;
            mtime = getDatePosted(paramJSONObject.optString("dateupload"));
            paramString = paramJSONObject.optJSONObject("dates");
            if (paramString != null) {
              mtime = getDatePosted(paramString.optString("posted"));
            }
            if (paramJSONObject.has("owner"))
            {
              paramString = paramJSONObject.get("owner");
              if (!(paramString instanceof JSONObject)) {
                break label974;
              }
              paramString = (JSONObject)paramString;
              ownerId = paramString.getString("nsid");
              ownerUsername = paramString.optString("username", null);
            }
            localObject1 = paramJSONObject.optJSONObject("notes");
            paramString = new ArrayList();
            if (localObject1 == null) {
              break;
            }
            localObject1 = ((JSONObject)localObject1).optJSONArray("note");
            i = 0;
            if ((localObject1 == null) || (i >= ((JSONArray)localObject1).length())) {
              break;
            }
            localObject2 = ((JSONArray)localObject1).getJSONObject(i);
            com.gmail.yuyang226.flickr.a.a locala = new com.gmail.yuyang226.flickr.a.a();
            locala.a(((JSONObject)localObject2).getString("id"));
            locala.b(((JSONObject)localObject2).getString("author"));
            locala.c(((JSONObject)localObject2).getString("authorname"));
            locala.a(((JSONObject)localObject2).getString("x"), ((JSONObject)localObject2).getString("y"), ((JSONObject)localObject2).getString("w"), ((JSONObject)localObject2).getString("h"));
            locala.d(((JSONObject)localObject2).getString("_content"));
            paramString.add(locala);
            i += 1;
            continue;
          }
        }
        else
        {
          size = -1;
          continue;
        }
        localObject1 = paramJSONObject.getString("title");
      }
      catch (Exception paramJSONObject)
      {
        paramJSONObject.printStackTrace();
        return null;
      }
      continue;
      label862:
      paramString = paramString + "/" + (String)localObject1;
      continue;
      label891:
      if (paramString.endsWith("/")) {}
      for (paramString = paramString + url_id;; paramString = paramString + "/" + url_id)
      {
        path = paramString;
        break;
      }
      label965:
      path = paramString;
      continue;
      label974:
      ownerId = paramJSONObject.getString("owner");
      ownerUsername = paramJSONObject.optString("ownername", null);
    }
    notes = paramString;
    try
    {
      paramString = new ArrayList();
      paramJSONObject = paramJSONObject.opt("tags");
      if ((paramJSONObject instanceof JSONObject))
      {
        paramJSONObject = ((JSONObject)paramJSONObject).optJSONArray("tag");
        i = j;
        while ((paramJSONObject != null) && (i < paramJSONObject.length()))
        {
          localObject1 = paramJSONObject.getJSONObject(i);
          localObject2 = new com.gmail.yuyang226.flickr.b.a();
          ((com.gmail.yuyang226.flickr.b.a)localObject2).a(((JSONObject)localObject1).getString("id"));
          ((com.gmail.yuyang226.flickr.b.a)localObject2).b(((JSONObject)localObject1).getString("author"));
          ((com.gmail.yuyang226.flickr.b.a)localObject2).c(((JSONObject)localObject1).getString("raw"));
          ((com.gmail.yuyang226.flickr.b.a)localObject2).d(((JSONObject)localObject1).optString("_content"));
          paramString.add(localObject2);
          i += 1;
        }
      }
      if ((paramJSONObject instanceof String))
      {
        paramJSONObject = paramJSONObject.toString().split(" ");
        i = 0;
        while (i < paramJSONObject.length)
        {
          localObject1 = new com.gmail.yuyang226.flickr.b.a();
          ((com.gmail.yuyang226.flickr.b.a)localObject1).d(paramJSONObject[i]);
          paramString.add(localObject1);
          i += 1;
        }
      }
      tags = paramString;
    }
    catch (NullPointerException paramJSONObject)
    {
      for (;;)
      {
        tags = new ArrayList();
      }
    }
    return localFlickrFileCacheEntry;
  }
  
  private String getFolderId(String paramString1, String paramString2)
  {
    try
    {
      if (paramString2.equals("/")) {
        return "/me/skydrive";
      }
      paramString1 = getCacheEntry(paramString1, paramString2);
      if (paramString1 != null)
      {
        paramString1 = "/" + url_id;
        return paramString1;
      }
    }
    catch (Exception paramString1) {}
    return null;
  }
  
  private Object getObject(Map paramMap, String paramString)
  {
    return paramMap.get(paramString);
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
  
  private String getPathName(String paramString)
  {
    if (paramString.equals("/")) {}
    int i;
    do
    {
      return null;
      paramString = removeLastChar(paramString);
      i = paramString.lastIndexOf('/');
    } while (i < 0);
    return paramString.substring(i + 1);
  }
  
  private String getPhotoURL(String paramString1, String paramString2, String paramString3)
  {
    try
    {
      if (getTokenString(paramString1, paramString2) == null)
      {
        l.e("Flickr", "delete, can't get the token");
        return null;
      }
      paramString2 = getTokentokenSecret;
      ArrayList localArrayList = new ArrayList();
      localArrayList.add(new com.gmail.yuyang226.flickr.a("method", "flickr.photos.getInfo"));
      localArrayList.add(new com.gmail.yuyang226.flickr.a("photo_id", paramString3));
      if (paramString2 != null) {
        localArrayList.add(new com.gmail.yuyang226.flickr.a("secret", paramString2));
      }
      localArrayList.add(new com.gmail.yuyang226.flickr.a("oauth_consumer_key", "09cfe7214aec69fbda2b044b64305055"));
      addOAuthToken(localArrayList, paramString1);
      paramString1 = postJSON("be578355f122df0a", localArrayList, paramString1);
      if (paramString1.b()) {
        throw new FlickrException(paramString1.c(), paramString1.d());
      }
    }
    catch (Exception paramString1)
    {
      throw new PhotoInfoException(paramString1);
    }
    paramString1 = paramString1.a().getJSONObject("photo");
    paramString1 = String.format("http://farm%1$s.static.flickr.com/%2$s/%3$s_%4$s.jpg", new Object[] { paramString1.getString("farm"), paramString1.getString("server"), paramString1.getString("id"), paramString1.getString("secret") });
    return paramString1;
  }
  
  private JSONObject getPhotosByAlbum(String paramString1, String paramString2, Set<String> paramSet, int paramInt1, int paramInt2, int paramInt3)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new com.gmail.yuyang226.flickr.a("method", "flickr.photosets.getPhotos"));
    localArrayList.add(new com.gmail.yuyang226.flickr.a("oauth_consumer_key", "09cfe7214aec69fbda2b044b64305055"));
    localArrayList.add(new com.gmail.yuyang226.flickr.a("photoset_id", paramString2));
    if (paramInt2 > 0) {
      localArrayList.add(new com.gmail.yuyang226.flickr.a("per_page", Integer.valueOf(paramInt2)));
    }
    if (paramInt3 > 0) {
      localArrayList.add(new com.gmail.yuyang226.flickr.a("page", Integer.valueOf(paramInt3)));
    }
    if (paramInt1 > 0) {
      localArrayList.add(new com.gmail.yuyang226.flickr.a("privacy_filter", "" + paramInt1));
    }
    if ((paramSet != null) && (!paramSet.isEmpty())) {
      localArrayList.add(new com.gmail.yuyang226.flickr.a("extras", com.gmail.yuyang226.flickr.d.c.a(paramSet, ",")));
    }
    addOAuthToken(localArrayList, paramString1);
    paramString1 = postJSON("be578355f122df0a", localArrayList, paramString1);
    if (paramString1.b()) {
      throw new FlickrException(paramString1.c(), paramString1.d());
    }
    return paramString1.a();
  }
  
  private JSONObject getPhotosByMe(String paramString, Set<String> paramSet, int paramInt1, int paramInt2)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new com.gmail.yuyang226.flickr.a("method", "flickr.people.getPhotos"));
    localArrayList.add(new com.gmail.yuyang226.flickr.a("oauth_consumer_key", "09cfe7214aec69fbda2b044b64305055"));
    localArrayList.add(new com.gmail.yuyang226.flickr.a("user_id", getTokenid));
    if (paramInt1 > 0) {
      localArrayList.add(new com.gmail.yuyang226.flickr.a("per_page", "" + paramInt1));
    }
    if (paramInt2 > 0) {
      localArrayList.add(new com.gmail.yuyang226.flickr.a("page", "" + paramInt2));
    }
    if (paramSet != null) {
      localArrayList.add(new com.gmail.yuyang226.flickr.a("extras", com.gmail.yuyang226.flickr.d.c.a(paramSet, ",")));
    }
    localArrayList.add(new com.gmail.yuyang226.flickr.a("oauth_token", getTokentoken));
    paramString = postJSON("be578355f122df0a", localArrayList, paramString);
    if (paramString.b())
    {
      l.e("Flickr", "Error code: " + paramString.c() + "," + "Error message: " + paramString.d());
      return null;
    }
    return paramString.a();
  }
  
  private JSONObject getPhotosByPublic(String paramString, Set<String> paramSet, int paramInt1, int paramInt2)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new com.gmail.yuyang226.flickr.a("method", "flickr.interestingness.getList"));
    localArrayList.add(new com.gmail.yuyang226.flickr.a("api_key", "09cfe7214aec69fbda2b044b64305055"));
    if (paramString != null) {
      localArrayList.add(new com.gmail.yuyang226.flickr.a("date", paramString));
    }
    if (paramSet != null) {
      localArrayList.add(new com.gmail.yuyang226.flickr.a("extras", com.gmail.yuyang226.flickr.d.c.a(paramSet, ",")));
    }
    if (paramInt1 > 0) {
      localArrayList.add(new com.gmail.yuyang226.flickr.a("per_page", String.valueOf(paramInt1)));
    }
    if (paramInt2 > 0) {
      localArrayList.add(new com.gmail.yuyang226.flickr.a("page", String.valueOf(paramInt2)));
    }
    paramString = get(new URL("http://www.flickr.com/services/rest"), localArrayList);
    if (paramString.b()) {
      throw new FlickrException(paramString.c(), paramString.d());
    }
    return paramString.a();
  }
  
  private JSONObject getPhotosets(String paramString, int paramInt1, int paramInt2)
  {
    String str = getTokenid;
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new com.gmail.yuyang226.flickr.a("method", "flickr.photosets.getList"));
    localArrayList.add(new com.gmail.yuyang226.flickr.a("oauth_consumer_key", "09cfe7214aec69fbda2b044b64305055"));
    if (str != null) {
      localArrayList.add(new com.gmail.yuyang226.flickr.a("user_id", str));
    }
    addOAuthToken(localArrayList, paramString);
    paramString = postJSON("be578355f122df0a", localArrayList, paramString);
    if (paramString.b()) {
      throw new FlickrException(paramString.c(), paramString.d());
    }
    return paramString.a();
  }
  
  private int getServerId(String paramString)
  {
    paramString = paramString + "@Flickr";
    int j = FlickrFileSystemCache.instance().getServerId(paramString);
    int i = j;
    if (j == 0)
    {
      FlickrFileSystemCache.instance().addServer(paramString);
      i = FlickrFileSystemCache.instance().getServerId(paramString);
    }
    return i;
  }
  
  private FlickrFileSystem.User getToken(String paramString1, String arg2)
  {
    if (access_tokens.size() == 0) {
      loadTokens();
    }
    synchronized (access_tokens)
    {
      paramString1 = (FlickrFileSystem.User)access_tokens.get(paramString1);
      return paramString1;
    }
  }
  
  private String getTokenString(String paramString1, String paramString2)
  {
    paramString1 = getToken(paramString1, paramString2);
    if (paramString1 == null) {
      return null;
    }
    return token;
  }
  
  private String getTokenType(String paramString)
  {
    synchronized (access_tokens_type)
    {
      paramString = (String)access_tokens_type.get(paramString);
      if (paramString == null) {
        return "Bearer";
      }
      return paramString;
    }
  }
  
  private boolean loadTokens()
  {
    HashMap localHashMap = new HashMap();
    try
    {
      ??? = new File(private_storePath + "/" + "Flickr.cfg");
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
          if (localObject3.length == 4) {
            localHashMap.put(localObject3[1], new FlickrFileSystem.User(this, localObject3[0], localObject3[1], localObject3[2], localObject3[3]));
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
  
  private com.gmail.yuyang226.flickr.c post(List<com.gmail.yuyang226.flickr.a> paramList)
  {
    return new com.gmail.yuyang226.flickr.b(OAuthUtil.sendPost(new URL("http://www.flickr.com:80/services/rest"), paramList));
  }
  
  private com.gmail.yuyang226.flickr.c postJSON(String paramString1, List<com.gmail.yuyang226.flickr.a> paramList, String paramString2)
  {
    paramList.add(new com.gmail.yuyang226.flickr.a("nojsoncallback", "1"));
    paramList.add(new com.gmail.yuyang226.flickr.a("format", "json"));
    addOAuthParams(paramString1, "http://www.flickr.com/services/rest", paramList, paramString2);
    return post(paramList);
  }
  
  private String removeLastChar(String paramString)
  {
    String str = paramString;
    if (paramString.endsWith("/"))
    {
      str = paramString;
      if (!paramString.equals("/")) {
        str = paramString.substring(0, paramString.length() - 1);
      }
    }
    return str;
  }
  
  private void removePhoto(String paramString1, String paramString2, String paramString3)
  {
    try
    {
      ArrayList localArrayList = new ArrayList();
      localArrayList.add(new com.gmail.yuyang226.flickr.a("method", "flickr.photosets.removePhoto"));
      localArrayList.add(new com.gmail.yuyang226.flickr.a("oauth_consumer_key", "09cfe7214aec69fbda2b044b64305055"));
      localArrayList.add(new com.gmail.yuyang226.flickr.a("photoset_id", paramString2));
      localArrayList.add(new com.gmail.yuyang226.flickr.a("photo_id", paramString3));
      addOAuthToken(localArrayList, paramString1);
      paramString1 = postJSON("be578355f122df0a", localArrayList, paramString1);
      if (paramString1.b()) {
        throw new FlickrException(paramString1.c(), paramString1.d());
      }
    }
    catch (Exception paramString1)
    {
      throw new AlbumException(paramString1);
    }
  }
  
  private void removeToken(String paramString)
  {
    synchronized (access_tokens)
    {
      access_tokens.remove(paramString);
      return;
    }
  }
  
  private boolean saveTokens()
  {
    synchronized (access_tokens)
    {
      Object localObject1 = new File(private_storePath + "/" + "Flickr.cfg");
      ((File)localObject1).delete();
      try
      {
        localObject1 = new BufferedWriter(new FileWriter((File)localObject1));
        Iterator localIterator = access_tokens.entrySet().iterator();
        while (localIterator.hasNext())
        {
          Object localObject3 = (Map.Entry)localIterator.next();
          String str = (String)((Map.Entry)localObject3).getKey();
          localObject3 = (FlickrFileSystem.User)((Map.Entry)localObject3).getValue();
          ((BufferedWriter)localObject1).write(id + "#####" + name + "#####" + token + "#####" + tokenSecret + "\r\n");
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
  
  private void sign(String paramString1, String paramString2, String paramString3, List<com.gmail.yuyang226.flickr.a> paramList, String paramString4)
  {
    paramList.add(new com.gmail.yuyang226.flickr.a("oauth_signature", com.gmail.yuyang226.flickr.oauth.a.a(paramString1, paramString2, paramList, paramString3, getTokentokenSecret)));
  }
  
  private void signPost(String paramString1, String paramString2, List<com.gmail.yuyang226.flickr.a> paramList, String paramString3)
  {
    sign("POST", paramString2, paramString1, paramList, paramString3);
  }
  
  private com.gmail.yuyang226.flickr.c upload(String paramString1, List<com.gmail.yuyang226.flickr.a> paramList, String paramString2)
  {
    addOAuthParams(paramString1, "http://api.flickr.com/services/upload/", paramList, paramString2);
    return sendUpload(new URL("http://api.flickr.com:80/services/upload/"), paramList);
  }
  
  private void writeParam(com.gmail.yuyang226.flickr.a parama, DataOutputStream paramDataOutputStream, String paramString)
  {
    Object localObject = parama.a();
    paramDataOutputStream.writeBytes("\r\n");
    if ((parama instanceof com.gmail.yuyang226.flickr.c.a))
    {
      com.gmail.yuyang226.flickr.c.a locala = (com.gmail.yuyang226.flickr.c.a)parama;
      parama = parama.b();
      paramDataOutputStream.writeBytes(String.format(Locale.US, "Content-Disposition: form-data; name=\"%s\"; filename=\"%s\";\r\n", new Object[] { localObject, locala.c() }));
      paramDataOutputStream.writeBytes(String.format(Locale.US, "Content-Type: image/%s\r\n\r\n", new Object[] { locala.d() }));
      if ((parama instanceof InputStream))
      {
        parama = (InputStream)parama;
        localObject = new byte['Ȁ'];
        for (;;)
        {
          int i = parama.read((byte[])localObject);
          if (i == -1) {
            break;
          }
          paramDataOutputStream.write((byte[])localObject, 0, i);
        }
      }
      if ((parama instanceof byte[])) {
        paramDataOutputStream.write((byte[])parama);
      }
    }
    for (;;)
    {
      paramDataOutputStream.writeBytes("\r\n");
      paramDataOutputStream.writeBytes(paramString);
      return;
      paramDataOutputStream.writeBytes("Content-Disposition: form-data; name=\"" + (String)localObject + "\"\r\n");
      paramDataOutputStream.writeBytes("Content-Type: text/plain; charset=UTF-8\r\n\r\n");
      paramDataOutputStream.write(((String)parama.b()).getBytes("UTF-8"));
    }
  }
  
  public String addComment(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    try
    {
      paramString3 = getCacheEntry(paramString1, paramString3);
      if (paramString3 == null)
      {
        l.e("Flickr", "can't get cache entry for add comment");
        return null;
      }
      if (getTokenString(paramString1, paramString2) == null)
      {
        l.e("Flickr", "delete, can't get the token");
        return null;
      }
    }
    catch (Exception paramString1)
    {
      throw new PhotoInfoException(paramString1);
    }
    paramString2 = new ArrayList();
    if (isDir == 1)
    {
      paramString2.add(new com.gmail.yuyang226.flickr.a("method", "flickr.photosets.comments.addComment"));
      paramString2.add(new com.gmail.yuyang226.flickr.a("oauth_consumer_key", "09cfe7214aec69fbda2b044b64305055"));
      if (isDir != 1) {
        break label215;
      }
      paramString2.add(new com.gmail.yuyang226.flickr.a("photoset_id", url_id));
    }
    for (;;)
    {
      paramString2.add(new com.gmail.yuyang226.flickr.a("comment_text", paramString4));
      addOAuthToken(paramString2, paramString1);
      paramString1 = postJSON("be578355f122df0a", paramString2, paramString1);
      if (!paramString1.b()) {
        break label239;
      }
      throw new FlickrException(paramString1.c(), paramString1.d());
      paramString2.add(new com.gmail.yuyang226.flickr.a("method", "flickr.photos.comments.addComment"));
      break;
      label215:
      paramString2.add(new com.gmail.yuyang226.flickr.a("photo_id", url_id));
    }
    label239:
    paramString1 = paramString1.a().getJSONObject("comment").getString("id");
    return paramString1;
  }
  
  public com.gmail.yuyang226.flickr.a.a addNote(String paramString1, String paramString2, String paramString3, com.gmail.yuyang226.flickr.a.a parama)
  {
    try
    {
      paramString3 = getCacheEntry(paramString1, paramString3);
      if (paramString3 == null)
      {
        l.e("Flickr", "can't get cache entry for add note");
        return null;
      }
      if (getTokenString(paramString1, paramString2) == null)
      {
        l.e("Flickr", "delete, can't get the token");
        return null;
      }
      paramString2 = new ArrayList();
      paramString2.add(new com.gmail.yuyang226.flickr.a("method", "flickr.photos.notes.add"));
      paramString2.add(new com.gmail.yuyang226.flickr.a("oauth_consumer_key", "09cfe7214aec69fbda2b044b64305055"));
      paramString2.add(new com.gmail.yuyang226.flickr.a("photo_id", url_id));
      paramString3 = parama.b();
      if (paramString3 != null)
      {
        paramString2.add(new com.gmail.yuyang226.flickr.a("note_x", String.valueOf(a)));
        paramString2.add(new com.gmail.yuyang226.flickr.a("note_y", String.valueOf(b)));
        paramString2.add(new com.gmail.yuyang226.flickr.a("note_w", String.valueOf(c)));
        paramString2.add(new com.gmail.yuyang226.flickr.a("note_h", String.valueOf(d)));
      }
      paramString3 = parama.c();
      if (paramString3 != null) {
        paramString2.add(new com.gmail.yuyang226.flickr.a("note_text", paramString3));
      }
      addOAuthToken(paramString2, paramString1);
      paramString1 = postJSON("be578355f122df0a", paramString2, paramString1);
      if (paramString1.b()) {
        throw new FlickrException(paramString1.c(), paramString1.d());
      }
    }
    catch (Exception paramString1)
    {
      throw new PhotoInfoException(paramString1);
    }
    parama.a(paramString1.a().getJSONObject("note").getString("id"));
    return parama;
  }
  
  public void addPhoto(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    try
    {
      if (getTokenString(paramString1, paramString2) == null)
      {
        l.e("Flickr", "delete, can't get the token");
        return;
      }
      addPhoto(paramString1, com.estrongs.fs.a.a.b(paramString3), paramString4);
      return;
    }
    catch (Exception paramString1)
    {
      throw new AlbumException(paramString1);
    }
  }
  
  public boolean addServer(String paramString1, String paramString2)
  {
    if (!authenticate(paramString1, paramString2)) {
      return false;
    }
    FlickrFileSystemCache.instance().addServer(paramString1 + "@Flickr");
    return true;
  }
  
  public boolean authenticate(String paramString1, String paramString2)
  {
    return getTokenString(paramString1, paramString2) != null;
  }
  
  public void close() {}
  
  public FlickrFileSystemCache.FlickrFileCacheEntry convertToCacheEntry(SPFileInfo paramSPFileInfo)
  {
    FlickrFileSystemCache.FlickrFileCacheEntry localFlickrFileCacheEntry = new FlickrFileSystemCache.FlickrFileCacheEntry();
    path = path;
    mtime = Long.valueOf(lastModifiedTime / 1000L).intValue();
    if (isDirectory) {}
    for (int i = 1;; i = 0)
    {
      isDir = i;
      size = Long.valueOf(size).intValue();
      if ((path == null) || (path.length() == 0)) {
        path = "/";
      }
      return localFlickrFileCacheEntry;
    }
  }
  
  public SPFileInfo convertToFileInfo(FlickrFileSystemCache.FlickrFileCacheEntry paramFlickrFileCacheEntry)
  {
    boolean bool = true;
    if (paramFlickrFileCacheEntry == null) {
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
      tags = tags;
      description = description;
      ownerId = ownerId;
      ownerUsername = ownerUsername;
      return localSPFileInfo;
      bool = false;
    }
  }
  
  public boolean copyFile(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    return moveCopyFile(paramString1, paramString2, paramString3, paramString4, false);
  }
  
  public Album createAlbum(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    try
    {
      ArrayList localArrayList = new ArrayList();
      localArrayList.add(new com.gmail.yuyang226.flickr.a("method", "flickr.photosets.create"));
      localArrayList.add(new com.gmail.yuyang226.flickr.a("oauth_consumer_key", "09cfe7214aec69fbda2b044b64305055"));
      localArrayList.add(new com.gmail.yuyang226.flickr.a("title", paramString2));
      localArrayList.add(new com.gmail.yuyang226.flickr.a("description", paramString3));
      localArrayList.add(new com.gmail.yuyang226.flickr.a("primary_photo_id", paramString4));
      addOAuthToken(localArrayList, paramString1);
      paramString1 = postJSON("be578355f122df0a", localArrayList, paramString1);
      if (paramString1.b()) {
        throw new FlickrException(paramString1.c(), paramString1.d());
      }
    }
    catch (Exception paramString1)
    {
      throw new AlbumException(paramString1);
    }
    paramString1 = new Album(paramString1.a().getJSONObject("photoset").getString("id"), paramString2, paramString3, null);
    return paramString1;
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
      FlickrFileSystemCache.instance().delServer(paramString1 + "@Flickr");
      saveTokens();
      return;
    }
  }
  
  public void deleteComment(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    try
    {
      paramString3 = getCacheEntry(paramString1, paramString3);
      if (paramString3 == null)
      {
        l.e("Flickr", "can't get cache entry for delete comment");
        return;
      }
      if (getTokenString(paramString1, paramString2) == null)
      {
        l.e("Flickr", "delete, can't get the token");
        return;
      }
    }
    catch (OAuthException paramString1)
    {
      throw new PhotoInfoException(paramString1);
      paramString2 = new ArrayList();
      if (isDir == 1)
      {
        paramString2.add(new com.gmail.yuyang226.flickr.a("method", "flickr.photosets.comments.deleteComment"));
        paramString2.add(new com.gmail.yuyang226.flickr.a("oauth_consumer_key", "09cfe7214aec69fbda2b044b64305055"));
        paramString2.add(new com.gmail.yuyang226.flickr.a("comment_id", paramString4));
        addOAuthToken(paramString2, paramString1);
        paramString1 = postJSON("be578355f122df0a", paramString2, paramString1);
        if (!paramString1.b()) {
          return;
        }
        throw new FlickrException(paramString1.c(), paramString1.d());
      }
    }
    catch (IOException paramString1)
    {
      for (;;)
      {
        throw new PhotoInfoException(paramString1);
        paramString2.add(new com.gmail.yuyang226.flickr.a("method", "flickr.photos.comments.deleteComment"));
      }
    }
    catch (JSONException paramString1)
    {
      throw new PhotoInfoException(paramString1);
    }
    catch (FlickrException paramString1)
    {
      throw new PhotoInfoException(paramString1);
    }
    catch (NetFsException paramString1)
    {
      throw new PhotoInfoException(paramString1);
    }
  }
  
  public boolean deleteFile(String paramString1, String paramString2, String paramString3)
  {
    FlickrFileSystemCache.FlickrFileCacheEntry localFlickrFileCacheEntry;
    try
    {
      localFlickrFileCacheEntry = getCacheEntry(paramString1, paramString3);
      if (localFlickrFileCacheEntry == null)
      {
        l.e("Flickr", "can't get cache entry for delete");
        return false;
      }
      if (getTokenString(paramString1, paramString2) == null)
      {
        l.e("Flickr", "delete, can't get the token");
        return false;
      }
    }
    catch (Exception paramString1)
    {
      paramString1.printStackTrace();
      return false;
    }
    if (isDir == 1)
    {
      paramString2 = new ArrayList();
      paramString2.add(new com.gmail.yuyang226.flickr.a("method", "flickr.photosets.delete"));
      paramString2.add(new com.gmail.yuyang226.flickr.a("oauth_consumer_key", "09cfe7214aec69fbda2b044b64305055"));
      paramString2.add(new com.gmail.yuyang226.flickr.a("photoset_id", url_id));
      addOAuthToken(paramString2, paramString1);
      paramString1 = postJSON("be578355f122df0a", paramString2, paramString1);
      if (paramString1.b()) {
        throw new FlickrException(paramString1.c(), paramString1.d());
      }
    }
    else
    {
      paramString2 = new ArrayList();
      paramString2.add(new com.gmail.yuyang226.flickr.a("method", "flickr.photos.delete"));
      paramString2.add(new com.gmail.yuyang226.flickr.a("oauth_consumer_key", "09cfe7214aec69fbda2b044b64305055"));
      paramString2.add(new com.gmail.yuyang226.flickr.a("photo_id", url_id));
      addOAuthToken(paramString2, paramString1);
      paramString1 = postJSON("be578355f122df0a", paramString2, paramString1);
      if (paramString1.b()) {
        throw new FlickrException(paramString1.c(), paramString1.d());
      }
    }
    FlickrFileSystemCache.instance().deleteFile(serverId, paramString3);
    return true;
  }
  
  public void deleteNote(String paramString1, String paramString2, String paramString3)
  {
    try
    {
      paramString2 = new ArrayList();
      paramString2.add(new com.gmail.yuyang226.flickr.a("method", "flickr.photos.notes.delete"));
      paramString2.add(new com.gmail.yuyang226.flickr.a("oauth_consumer_key", "09cfe7214aec69fbda2b044b64305055"));
      paramString2.add(new com.gmail.yuyang226.flickr.a("note_id", paramString3));
      addOAuthToken(paramString2, paramString1);
      paramString1 = postJSON("be578355f122df0a", paramString2, paramString1);
      if (paramString1.b()) {
        throw new FlickrException(paramString1.c(), paramString1.d());
      }
    }
    catch (OAuthException paramString1)
    {
      throw new PhotoInfoException(paramString1);
    }
    catch (IOException paramString1)
    {
      throw new PhotoInfoException(paramString1);
    }
    catch (JSONException paramString1)
    {
      throw new PhotoInfoException(paramString1);
    }
    catch (FlickrException paramString1)
    {
      throw new PhotoInfoException(paramString1);
    }
  }
  
  public void editComment(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    try
    {
      paramString2 = new ArrayList();
      paramString2.add(new com.gmail.yuyang226.flickr.a("method", "flickr.photos.comments.editComment"));
      paramString2.add(new com.gmail.yuyang226.flickr.a("oauth_consumer_key", "09cfe7214aec69fbda2b044b64305055"));
      paramString2.add(new com.gmail.yuyang226.flickr.a("comment_id", paramString3));
      paramString2.add(new com.gmail.yuyang226.flickr.a("comment_text", paramString4));
      addOAuthToken(paramString2, paramString1);
      paramString1 = postJSON("be578355f122df0a", paramString2, paramString1);
      if (paramString1.b()) {
        throw new FlickrException(paramString1.c(), paramString1.d());
      }
    }
    catch (OAuthException paramString1)
    {
      throw new PhotoInfoException(paramString1);
    }
    catch (IOException paramString1)
    {
      throw new PhotoInfoException(paramString1);
    }
    catch (JSONException paramString1)
    {
      throw new PhotoInfoException(paramString1);
    }
    catch (FlickrException paramString1)
    {
      throw new PhotoInfoException(paramString1);
    }
  }
  
  public void editNote(String paramString1, String paramString2, com.gmail.yuyang226.flickr.a.a parama)
  {
    try
    {
      paramString2 = new ArrayList();
      paramString2.add(new com.gmail.yuyang226.flickr.a("method", "flickr.photos.notes.edit"));
      paramString2.add(new com.gmail.yuyang226.flickr.a("oauth_consumer_key", "09cfe7214aec69fbda2b044b64305055"));
      paramString2.add(new com.gmail.yuyang226.flickr.a("note_id", parama.a()));
      com.gmail.yuyang226.flickr.a.b localb = parama.b();
      if (localb != null)
      {
        paramString2.add(new com.gmail.yuyang226.flickr.a("note_x", String.valueOf(a)));
        paramString2.add(new com.gmail.yuyang226.flickr.a("note_y", String.valueOf(b)));
        paramString2.add(new com.gmail.yuyang226.flickr.a("note_w", String.valueOf(c)));
        paramString2.add(new com.gmail.yuyang226.flickr.a("note_h", String.valueOf(d)));
      }
      parama = parama.c();
      if (parama != null) {
        paramString2.add(new com.gmail.yuyang226.flickr.a("note_text", parama));
      }
      addOAuthToken(paramString2, paramString1);
      paramString1 = postJSON("be578355f122df0a", paramString2, paramString1);
      if (paramString1.b()) {
        throw new FlickrException(paramString1.c(), paramString1.d());
      }
    }
    catch (OAuthException paramString1)
    {
      throw new PhotoInfoException(paramString1);
    }
    catch (IOException paramString1)
    {
      throw new PhotoInfoException(paramString1);
    }
    catch (JSONException paramString1)
    {
      throw new PhotoInfoException(paramString1);
    }
    catch (FlickrException paramString1)
    {
      throw new PhotoInfoException(paramString1);
    }
  }
  
  public boolean exists(String paramString1, String paramString2, String paramString3)
  {
    if (paramString3.equals("/")) {}
    while (getCacheEntry(paramString1, paramString3) != null) {
      return true;
    }
    return false;
  }
  
  public com.gmail.yuyang226.flickr.c get(URL paramURL, List<com.gmail.yuyang226.flickr.a> paramList)
  {
    paramList.add(new com.gmail.yuyang226.flickr.a("nojsoncallback", "1"));
    paramList.add(new com.gmail.yuyang226.flickr.a("format", "json"));
    return new com.gmail.yuyang226.flickr.b(OAuthUtil.getLine(paramURL, paramList));
  }
  
  public List<com.gmail.yuyang226.flickr.a> getAccessTokenParameters(String paramString1, String paramString2, String paramString3)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new com.gmail.yuyang226.flickr.a("oauth_consumer_key", "09cfe7214aec69fbda2b044b64305055"));
    localArrayList.add(new com.gmail.yuyang226.flickr.a("oauth_token", paramString1));
    localArrayList.add(new com.gmail.yuyang226.flickr.a("oauth_verifier", paramString3));
    com.gmail.yuyang226.flickr.oauth.a.a(localArrayList);
    try
    {
      localArrayList.add(new com.gmail.yuyang226.flickr.a("oauth_signature", com.gmail.yuyang226.flickr.oauth.a.a("POST", "http://www.flickr.com/services/oauth/access_token", localArrayList, "be578355f122df0a", paramString2)));
      return localArrayList;
    }
    catch (FlickrException paramString1)
    {
      paramString1.printStackTrace();
    }
    return localArrayList;
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
    try
    {
      paramString3 = getCacheEntry(paramString1, paramString3);
      if (paramString3 == null)
      {
        l.e("Flickr", "can't get cache entry for get albums");
        return null;
      }
      if (getTokenString(paramString1, paramString2) == null)
      {
        l.e("Flickr", "delete, can't get the token");
        return null;
      }
    }
    catch (Exception paramString1)
    {
      throw new AlbumException(paramString1);
    }
    paramString2 = new ArrayList();
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new com.gmail.yuyang226.flickr.a("method", "flickr.photos.getAllContexts"));
    localArrayList.add(new com.gmail.yuyang226.flickr.a("photo_id", url_id));
    localArrayList.add(new com.gmail.yuyang226.flickr.a("oauth_consumer_key", "09cfe7214aec69fbda2b044b64305055"));
    addOAuthToken(localArrayList, paramString1);
    paramString1 = postJSON("be578355f122df0a", localArrayList, paramString1);
    if (paramString1.b()) {
      throw new FlickrException(paramString1.c(), paramString1.d());
    }
    paramString1 = paramString1.a().optJSONArray("set");
    int i = 0;
    while ((paramString1 != null) && (i < paramString1.length()))
    {
      paramString3 = paramString1.getJSONObject(i);
      paramString2.add(new Album(paramString3.getString("id"), paramString3.getString("title"), null, null));
      i += 1;
    }
    return paramString2;
  }
  
  public List<Album> getAllAlbums(String paramString1, String paramString2)
  {
    try
    {
      paramString2 = new ArrayList();
      paramString1 = getPhotosets(paramString1, 500, 1).getJSONObject("photosets").optJSONArray("photoset");
      int i = 0;
      while ((paramString1 != null) && (i < paramString1.length()))
      {
        JSONObject localJSONObject = paramString1.getJSONObject(i);
        paramString2.add(new Album(localJSONObject.getString("id"), getChildValue(localJSONObject, "title"), getChildValue(localJSONObject, "description"), null));
        i += 1;
      }
      return paramString2;
    }
    catch (Exception paramString1)
    {
      throw new AlbumException(paramString1);
    }
  }
  
  public String getBuddyIcon(String paramString1, String paramString2)
  {
    return "http://flickr.com/buddyicons/" + paramString2 + ".jpg";
  }
  
  public List<com.gmail.yuyang226.flickr.a.a.a> getComments(String paramString1, String paramString2, String paramString3, TypedMap paramTypedMap)
  {
    Object localObject;
    for (;;)
    {
      try
      {
        localObject = paramTypedMap.getDate("minCommentDate");
        paramTypedMap = paramTypedMap.getDate("maxCommentDate");
        paramString3 = getCacheEntry(paramString1, paramString3);
        if (paramString3 == null)
        {
          l.e("Flickr", "can't get cache entry for get comments");
          return null;
        }
        if (getTokenString(paramString1, paramString2) == null)
        {
          l.e("Flickr", "delete, can't get the token");
          return null;
        }
        paramString2 = new ArrayList();
        if (isDir == 1)
        {
          paramString2.add(new com.gmail.yuyang226.flickr.a("method", "flickr.photosets.comments.getList"));
          paramString2.add(new com.gmail.yuyang226.flickr.a("api_key", "09cfe7214aec69fbda2b044b64305055"));
          paramString2.add(new com.gmail.yuyang226.flickr.a("photoset_id", url_id));
          paramString1 = get(new URL("http://www.flickr.com:80/services/rest"), paramString2);
          if (!paramString1.b()) {
            break;
          }
          throw new FlickrException(paramString1.c(), paramString1.d());
        }
      }
      catch (Exception paramString1)
      {
        throw new PhotoInfoException(paramString1);
      }
      paramString2.add(new com.gmail.yuyang226.flickr.a("method", "flickr.photos.comments.getList"));
      paramString2.add(new com.gmail.yuyang226.flickr.a("oauth_consumer_key", "09cfe7214aec69fbda2b044b64305055"));
      paramString2.add(new com.gmail.yuyang226.flickr.a("photo_id", url_id));
      if (localObject != null) {
        paramString2.add(new com.gmail.yuyang226.flickr.a("min_comment_date", ((Date)localObject).getTime() / 1000L));
      }
      if (paramTypedMap != null) {
        paramString2.add(new com.gmail.yuyang226.flickr.a("max_comment_date", paramTypedMap.getTime() / 1000L));
      }
      addOAuthToken(paramString2, paramString1);
      paramString1 = postJSON("be578355f122df0a", paramString2, paramString1);
    }
    paramString3 = new ArrayList();
    paramTypedMap = paramString1.a().getJSONObject("comments").optJSONArray("comment");
    int i = 0;
    while ((paramTypedMap != null) && (i < paramTypedMap.length()))
    {
      localObject = new com.gmail.yuyang226.flickr.a.a.a();
      paramString1 = paramTypedMap.getJSONObject(i);
      ((com.gmail.yuyang226.flickr.a.a.a)localObject).c(paramString1.getString("id"));
      ((com.gmail.yuyang226.flickr.a.a.a)localObject).a(paramString1.getString("author"));
      ((com.gmail.yuyang226.flickr.a.a.a)localObject).b(paramString1.getString("authorname"));
      ((com.gmail.yuyang226.flickr.a.a.a)localObject).d(paramString1.getString("permalink"));
      ((com.gmail.yuyang226.flickr.a.a.a)localObject).a(new Date(paramString1.optLong("datecreate") * 1000L));
      paramString2 = paramString1.getString("_content");
      paramString1 = paramString2;
      if (paramString2 != null) {
        paramString1 = paramString2.replaceAll("<[^>]*>", "").replaceAll("\\[http://[^]]*\\]", "");
      }
      ((com.gmail.yuyang226.flickr.a.a.a)localObject).e(paramString1);
      paramString3.add(localObject);
      i += 1;
    }
    Collections.reverse(paramString3);
    return paramString3;
  }
  
  public int getDatePosted(String paramString)
  {
    if ((paramString == null) || ("".equals(paramString))) {
      return -1;
    }
    return Integer.parseInt(paramString);
  }
  
  /* Error */
  public SPFileInfo getFileInfo(String paramString1, String paramString2, String paramString3)
  {
    // Byte code:
    //   0: aload_3
    //   1: ldc_w 435
    //   4: invokevirtual 458	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   7: ifeq +5 -> 12
    //   10: aconst_null
    //   11: areturn
    //   12: aload_0
    //   13: aload_1
    //   14: aload_3
    //   15: invokespecial 595	com/estrongs/android/pop/spfs/flickr/FlickrFileSystem:getCacheEntry	(Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;
    //   18: astore_2
    //   19: aload_2
    //   20: ifnull -10 -> 10
    //   23: aload_0
    //   24: aload_2
    //   25: invokevirtual 1152	com/estrongs/android/pop/spfs/flickr/FlickrFileSystem:convertToFileInfo	(Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry;)Lcom/estrongs/android/pop/spfs/SPFileInfo;
    //   28: astore_1
    //   29: aload_1
    //   30: getfield 972	com/estrongs/android/pop/spfs/SPFileInfo:size	J
    //   33: lstore 4
    //   35: lload 4
    //   37: ldc2_w 1153
    //   40: lcmp
    //   41: ifne +15 -> 56
    //   44: aload_1
    //   45: aload_2
    //   46: getfield 404	com/estrongs/android/pop/spfs/flickr/FlickrFileSystemCache$FlickrFileCacheEntry:url	Ljava/lang/String;
    //   49: invokestatic 1159	com/estrongs/android/pop/spfs/ESURLUtil:getLength	(Ljava/lang/String;)I
    //   52: i2l
    //   53: putfield 972	com/estrongs/android/pop/spfs/SPFileInfo:size	J
    //   56: aload_1
    //   57: areturn
    //   58: astore_2
    //   59: aload_2
    //   60: invokevirtual 1073	java/net/MalformedURLException:printStackTrace	()V
    //   63: new 1030	com/estrongs/android/pop/netfs/NetFsException
    //   66: dup
    //   67: aload_2
    //   68: invokespecial 1160	com/estrongs/android/pop/netfs/NetFsException:<init>	(Ljava/lang/Throwable;)V
    //   71: pop
    //   72: goto -16 -> 56
    //   75: astore_1
    //   76: aload_1
    //   77: invokevirtual 560	java/lang/Exception:printStackTrace	()V
    //   80: aconst_null
    //   81: areturn
    //   82: astore_2
    //   83: aload_2
    //   84: invokevirtual 1161	java/io/IOException:printStackTrace	()V
    //   87: new 1030	com/estrongs/android/pop/netfs/NetFsException
    //   90: dup
    //   91: aload_2
    //   92: invokespecial 1160	com/estrongs/android/pop/netfs/NetFsException:<init>	(Ljava/lang/Throwable;)V
    //   95: pop
    //   96: goto -40 -> 56
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	99	0	this	FlickrFileSystem
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
    Object localObject = null;
    for (;;)
    {
      try
      {
        paramString3 = getCacheEntry(paramString1, paramString3);
        if ((paramString3 == null) || (url == null))
        {
          l.e("Flickr", "can't get cache entry for InputStream");
          return null;
        }
        if (isDir == 1)
        {
          paramString1 = getPhotoURL(paramString1, paramString2, url);
          paramString1 = new HttpGet(paramString1);
          if (paramLong != 0L) {
            paramString1.addHeader("Range", "bytes=" + paramLong + "-");
          }
          paramString1 = getNewHttpClient().execute(paramString1);
          if ((paramString1.getStatusLine().getStatusCode() == 200) || (paramString1.getStatusLine().getStatusCode() == 206) || (paramString1.getStatusLine().getStatusCode() == 203)) {
            break;
          }
          l.e("Flickr", "getInputStream ret:" + paramString1.getStatusLine().getStatusCode());
          return null;
        }
      }
      catch (Exception paramString1)
      {
        paramString1.printStackTrace();
        return null;
      }
      paramString1 = url;
    }
    paramString2 = paramString1.getEntity();
    paramString1 = (String)localObject;
    if (paramString2 != null) {
      paramString1 = paramString2.getContent();
    }
    return paramString1;
  }
  
  public long getFileLength(String paramString1, String paramString2, String paramString3)
  {
    paramString1 = getFileInfo(paramString1, paramString2, paramString3);
    if (paramString1 == null) {
      return 0L;
    }
    return size;
  }
  
  public OutputStream getFileOutputStream(String paramString1, String paramString2, String paramString3, long paramLong, TypedMap paramTypedMap)
  {
    for (;;)
    {
      try
      {
        String str = getPathName(removeLastChar(paramString3));
        ArrayList localArrayList = new ArrayList();
        localArrayList.add(new com.gmail.yuyang226.flickr.a("oauth_consumer_key", "09cfe7214aec69fbda2b044b64305055"));
        Object localObject = paramTypedMap.getString("title");
        if (localObject != null)
        {
          paramString3 = (String)localObject;
          if (((String)localObject).length() != 0) {}
        }
        else
        {
          if (str.indexOf('.') < 0) {
            break label424;
          }
          paramString3 = str.substring(0, str.indexOf('.'));
        }
        if (paramString3 != null) {
          localArrayList.add(new com.gmail.yuyang226.flickr.a("title", paramString3));
        }
        paramString3 = paramTypedMap.getString("description");
        if ((paramString3 != null) && (paramString3.length() > 0)) {
          localArrayList.add(new com.gmail.yuyang226.flickr.a("description", paramString3));
        }
        if ((paramTypedMap.getString("tags") != null) && (paramTypedMap.getString("tags").length() > 0)) {
          localArrayList.add(new com.gmail.yuyang226.flickr.a("tags", paramTypedMap.getString("tags")));
        }
        if (!paramTypedMap.getBoolean("is_public", true)) {
          break label430;
        }
        paramString3 = "1";
        localArrayList.add(new com.gmail.yuyang226.flickr.a("is_public", paramString3));
        if (!paramTypedMap.getBoolean("is_family", false)) {
          break label437;
        }
        paramString3 = "1";
        localArrayList.add(new com.gmail.yuyang226.flickr.a("is_family", paramString3));
        if (!paramTypedMap.getBoolean("is_friend", false)) {
          break label444;
        }
        paramString3 = "1";
        localArrayList.add(new com.gmail.yuyang226.flickr.a("is_friend", paramString3));
        localArrayList.add(new com.gmail.yuyang226.flickr.a("async", "0"));
        paramString3 = new UploadOutputStream();
        localObject = new UploadPipedInputStream(paramLong);
        try
        {
          ((FastPipedInputStream)localObject).connect(paramString3);
          localArrayList.add(new com.gmail.yuyang226.flickr.c.a(str, localObject));
          addOAuthToken(localArrayList, paramString1);
          paramString1 = new FlickrFileSystem.2(this, localArrayList, paramString1, paramString3, paramTypedMap, paramString2, (FastPipedInputStream)localObject);
          paramString3.setTask(paramString1, (InputStream)localObject);
          paramString1.start();
          return paramString3;
        }
        catch (IOException paramString1)
        {
          l.e("Flickr", "Can't create pipe stream");
          return null;
        }
        paramString3 = str;
      }
      catch (Exception paramString1)
      {
        return null;
      }
      label424:
      continue;
      label430:
      paramString3 = "0";
      continue;
      label437:
      paramString3 = "0";
      continue;
      label444:
      paramString3 = "0";
    }
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
      Object localObject2 = new n((KeyStore)localObject1);
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
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new com.gmail.yuyang226.flickr.a("oauth_token", paramString));
    localArrayList.add(new com.gmail.yuyang226.flickr.a("perms", "delete"));
    try
    {
      paramString = d.a("www.flickr.com", 80, "/services/oauth/authorize", localArrayList).toString();
      return paramString;
    }
    catch (MalformedURLException paramString)
    {
      paramString.printStackTrace();
    }
    return null;
  }
  
  public String getOAuthVersion()
  {
    return "1.0a";
  }
  
  public String getPhotoExtension(String paramString1, String paramString2, String paramString3)
  {
    try
    {
      paramString1 = getCacheEntry(paramString1, paramString3);
      if ((paramString1 == null) || (isDir != 0) || (url == null))
      {
        l.e("Flickr", "can't get cache entry for get photo extension");
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
    FlickrFileSystemCache.FlickrFileCacheEntry localFlickrFileCacheEntry;
    try
    {
      localFlickrFileCacheEntry = getCacheEntry(paramString1, paramString3);
      if (localFlickrFileCacheEntry == null)
      {
        l.e("Flickr", "can't get cache entry for get photo info");
        return null;
      }
      if (getTokenString(paramString1, paramString2) == null)
      {
        l.e("Flickr", "delete, can't get the token");
        return null;
      }
    }
    catch (Exception paramString1)
    {
      throw new PhotoInfoException(paramString1);
    }
    paramString2 = getTokentokenSecret;
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new com.gmail.yuyang226.flickr.a("method", "flickr.photos.getInfo"));
    localArrayList.add(new com.gmail.yuyang226.flickr.a("photo_id", url_id));
    if (paramString2 != null) {
      localArrayList.add(new com.gmail.yuyang226.flickr.a("secret", paramString2));
    }
    localArrayList.add(new com.gmail.yuyang226.flickr.a("oauth_consumer_key", "09cfe7214aec69fbda2b044b64305055"));
    addOAuthToken(localArrayList, paramString1);
    paramString1 = postJSON("be578355f122df0a", localArrayList, paramString1);
    if (paramString1.b()) {
      throw new FlickrException(paramString1.c(), paramString1.d());
    }
    paramString1 = convertToFileInfo(getFileCacheEntry(paramString1.a().getJSONObject("photo"), paramString3, false));
    return paramString1;
  }
  
  public boolean getRegisterPrepareInfo(Object[] paramArrayOfObject)
  {
    return false;
  }
  
  public URL getRequestTokenUrl()
  {
    Object localObject = new ArrayList();
    ((List)localObject).add(new com.gmail.yuyang226.flickr.a("oauth_callback", callbackUrl));
    ((List)localObject).add(new com.gmail.yuyang226.flickr.a("oauth_consumer_key", "09cfe7214aec69fbda2b044b64305055"));
    com.gmail.yuyang226.flickr.oauth.a.a((List)localObject);
    try
    {
      ((List)localObject).add(new com.gmail.yuyang226.flickr.a("oauth_signature", com.gmail.yuyang226.flickr.oauth.a.a("GET", "http://www.flickr.com/services/oauth/request_token", (List)localObject, "be578355f122df0a", null)));
      localObject = d.a("www.flickr.com", 80, "/services/oauth/request_token", (List)localObject);
      return (URL)localObject;
    }
    catch (FlickrException localFlickrException)
    {
      localFlickrException.printStackTrace();
      return null;
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
        l.e("Flickr", "can't get cache entry for InputStream");
        return null;
      }
      paramString3 = (String)localObject1;
      if (thumbnail_url == null) {
        return paramString3;
      }
      paramString3 = new HttpGet(thumbnail_url);
      localObject2 = getNewHttpClient();
      paramString1 = getTokenString(paramString1, paramString2);
      if (paramString1 == null)
      {
        l.e("Flickr", "can't get token download");
        return null;
      }
    }
    catch (Exception paramString1)
    {
      paramString1.printStackTrace();
      return null;
    }
    paramString3.setHeader("Authorization", "bearer " + paramString1);
    paramString1 = ((HttpClient)localObject2).execute(paramString3);
    if ((paramString1.getStatusLine().getStatusCode() != 200) && (paramString1.getStatusLine().getStatusCode() != 203))
    {
      l.e("Flickr", "getInputStream ret:" + paramString1.getStatusLine().getStatusCode());
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
  
  public Map<String, SPFileInfo> listFiles(String paramString1, String paramString2, String paramString3, boolean paramBoolean, INetRefreshCallback paramINetRefreshCallback, TypedMap paramTypedMap)
  {
    return listFiles(paramString1, paramString2, paramString3, paramBoolean, paramINetRefreshCallback, null, paramTypedMap);
  }
  
  public Map<String, SPFileInfo> listFiles(String paramString1, String paramString2, String paramString3, boolean paramBoolean, INetRefreshCallback paramINetRefreshCallback, String paramString4, TypedMap paramTypedMap)
  {
    if (paramString3 == null) {}
    for (;;)
    {
      return null;
      getServerId(paramString1);
      getCacheEntry(paramString1, paramString3);
      try
      {
        paramString1 = listFilesInternal(paramString1, paramString2, paramString3, paramTypedMap);
        if (paramString1 == null) {
          continue;
        }
        paramString2 = new LinkedHashMap();
        paramString3 = paramString1.keySet().iterator();
        while (paramString3.hasNext())
        {
          paramINetRefreshCallback = (String)paramString3.next();
          paramString4 = convertToFileInfo((FlickrFileSystemCache.FlickrFileCacheEntry)paramString1.get(paramINetRefreshCallback));
          if (paramString4 != null) {
            paramString2.put(paramINetRefreshCallback, paramString4);
          }
        }
        return paramString2;
      }
      catch (NetFsException paramString1)
      {
        throw paramString1;
      }
    }
  }
  
  public HashMap<String, FlickrFileSystemCache.FlickrFileCacheEntry> listFilesInternal(String paramString1, String paramString2, String paramString3, TypedMap paramTypedMap)
  {
    return listFilesInternal(paramString1, paramString2, paramString3, null, paramTypedMap);
  }
  
  public HashMap<String, FlickrFileSystemCache.FlickrFileCacheEntry> listFilesInternal(String paramString1, String paramString2, String paramString3, String paramString4, TypedMap paramTypedMap)
  {
    int j = getServerId(paramString1);
    paramString4 = getCacheEntry(paramString1, paramString3);
    for (;;)
    {
      try
      {
        i = paramTypedMap.getInt("per_page", 10L);
        int k = paramTypedMap.getInt("page", 1L);
        paramString2 = new HashSet();
        paramString2.add("url_sq");
        paramString2.add("url_q");
        paramString2.add("url_m");
        paramString2.add("url_l");
        paramString2.add("views");
        paramString2.add("description");
        paramString2.add("date_upload");
        paramString2.add("owner_name");
        if (("mine".equals(paramTypedMap.getString("content_type"))) || ((com.estrongs.fs.a.a.c(paramString3).size() >= 2) && ("mine".equals(com.estrongs.fs.a.a.c(paramString3).get(1)))))
        {
          paramString2 = getPhotosByMe(paramString1, paramString2, i, k).getJSONObject("photos");
          i = 0;
          paramTypedMap = new LinkedHashMap();
          if (paramString2 == null) {
            return paramTypedMap;
          }
        }
        else
        {
          if (("hot".equals(paramTypedMap.getString("content_type"))) || ((com.estrongs.fs.a.a.c(paramString3).size() >= 2) && ("hot".equals(com.estrongs.fs.a.a.c(paramString3).get(1)))))
          {
            paramString2 = getPhotosByPublic(dateToString(paramTypedMap.getDate("date")), paramString2, i, k).getJSONObject("photos");
            i = 0;
            continue;
          }
          if ((!"album".equals(paramTypedMap.getString("content_type"))) && ((com.estrongs.fs.a.a.c(paramString3).size() < 2) || (!"album".equals(com.estrongs.fs.a.a.c(paramString3).get(1))))) {
            break label907;
          }
          if (com.estrongs.fs.a.a.c(paramString3).size() == 2)
          {
            paramString2 = getPhotosets(paramString1, i, k).getJSONObject("photosets");
            i = 1;
            continue;
          }
          paramString2 = getPhotosByAlbum(paramString1, (String)com.estrongs.fs.a.a.c(paramString3).get(2), paramString2, 0, i, k).getJSONObject("photoset");
          i = 0;
          continue;
        }
        if (i != 0)
        {
          JSONArray localJSONArray = paramString2.optJSONArray("photoset");
          i = 0;
          if ((localJSONArray != null) && (i < localJSONArray.length()))
          {
            JSONObject localJSONObject = localJSONArray.getJSONObject(i);
            FlickrFileSystemCache.FlickrFileCacheEntry localFlickrFileCacheEntry = new FlickrFileSystemCache.FlickrFileCacheEntry();
            isDir = 1;
            url_id = localJSONObject.getString("id");
            if (paramString3.endsWith("/"))
            {
              paramString2 = paramString3 + url_id;
              path = paramString2;
              url = localJSONObject.getString("primary");
              mtime = getDatePosted(localJSONObject.getString("date_create"));
              if (localJSONObject.has("owner")) {
                ownerId = localJSONObject.getString("owner");
              }
              ownerId = getTokenid;
              ownerUsername = paramString1;
              name = getChildValue(localJSONObject, "title");
              description = getChildValue(localJSONObject, "description");
              paramTypedMap.put(path, localFlickrFileCacheEntry);
              i += 1;
              continue;
            }
            paramString2 = paramString3 + "/" + url_id;
            continue;
          }
        }
        else
        {
          paramString2.optInt("page");
          paramString2.optInt("pages");
          paramString2.optInt("perpage");
          paramString2.optInt("total");
          paramString1 = paramString2.optJSONArray("photo");
          i = 0;
          if ((paramString1 != null) && (i < paramString1.length()))
          {
            paramString2 = getFileCacheEntry(paramString1.getJSONObject(i), paramString3, true);
            if (paramString2 == null) {
              break label915;
            }
            paramTypedMap.put(path, paramString2);
            break label915;
          }
        }
        if (paramString4 != null) {
          break label901;
        }
        paramString1 = new FlickrFileSystemCache.FlickrFileCacheEntry();
        serverId = j;
        path = paramString3;
        isDir = 1;
        if ("/".equals(paramString3))
        {
          parentId = 0;
          FlickrFileSystemCache.instance().addFile(paramString1);
          paramString1 = FlickrFileSystemCache.instance().getFile(j, paramString3);
          paramString2 = FlickrFileSystemCache.instance();
          i = id;
          if (k <= 1) {
            break label895;
          }
          bool = true;
          paramString2.updateFiles(j, i, paramTypedMap, bool);
          return paramTypedMap;
        }
      }
      catch (Exception paramString1)
      {
        paramString1.printStackTrace();
        throw new NetFsException(paramString1);
      }
      parentId = FlickrFileSystemCache.instance().getPathId(j, getParentPath(paramString3));
      continue;
      label895:
      boolean bool = false;
      continue;
      label901:
      paramString1 = paramString4;
      continue;
      label907:
      paramString2 = null;
      int i = 1;
      continue;
      label915:
      i += 1;
    }
  }
  
  public boolean mkDirs(String paramString1, String paramString2, String paramString3)
  {
    return createFile(paramString1, paramString2, paramString3, true);
  }
  
  public boolean moveCopyFile(String paramString1, String paramString2, String paramString3, String paramString4, boolean paramBoolean)
  {
    return false;
  }
  
  public boolean moveFile(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    return moveCopyFile(paramString1, paramString2, paramString3, paramString4, true);
  }
  
  public Map parseAsJSON(HttpResponse paramHttpResponse)
  {
    paramHttpResponse = HttpUtils.readResponse(paramHttpResponse);
    if (paramHttpResponse != null) {}
    try
    {
      if (paramHttpResponse.length() == 0) {
        return new HashMap();
      }
      paramHttpResponse = (Map)new JSONParser().parse(paramHttpResponse);
      return paramHttpResponse;
    }
    catch (ParseException paramHttpResponse)
    {
      paramHttpResponse = new HashMap();
      paramHttpResponse.put("error", "Unknown Error");
    }
    return paramHttpResponse;
  }
  
  public int register(String paramString1, String paramString2, Object[] paramArrayOfObject)
  {
    return 100;
  }
  
  public void removePhoto(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    try
    {
      if (getTokenString(paramString1, paramString2) == null)
      {
        l.e("Flickr", "delete, can't get the token");
        return;
      }
      removePhoto(paramString1, com.estrongs.fs.a.a.b(paramString3), paramString4);
      return;
    }
    catch (Exception paramString1)
    {
      throw new AlbumException(paramString1);
    }
  }
  
  public boolean renameFile(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    for (;;)
    {
      try
      {
        FlickrFileSystemCache.FlickrFileCacheEntry localFlickrFileCacheEntry = getCacheEntry(paramString1, paramString3);
        if (localFlickrFileCacheEntry == null)
        {
          l.e("Flickr", "can't get cache entry for rename");
          return false;
        }
        paramString3 = getPathName(paramString4);
        if (paramString3.indexOf('.') >= 0)
        {
          paramString2 = paramString3.substring(0, paramString3.indexOf('.'));
          paramString4 = new ArrayList();
          paramString4.add(new com.gmail.yuyang226.flickr.a("method", "flickr.photos.setMeta"));
          paramString4.add(new com.gmail.yuyang226.flickr.a("oauth_consumer_key", "09cfe7214aec69fbda2b044b64305055"));
          paramString4.add(new com.gmail.yuyang226.flickr.a("photo_id", url_id));
          paramString4.add(new com.gmail.yuyang226.flickr.a("title", paramString2));
          addOAuthToken(paramString4, paramString1);
          if (postJSON("be578355f122df0a", paramString4, paramString1).b())
          {
            l.e("Flickr", "rename failed");
            return false;
          }
          paramString1 = FlickrFileSystemCache.instance();
          name = paramString3;
          paramString1.udpateFile(localFlickrFileCacheEntry);
          return true;
        }
      }
      catch (Exception paramString1)
      {
        return false;
      }
      paramString2 = paramString3;
    }
  }
  
  public void saveUserAndToken(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    if (access_tokens.size() == 0) {
      loadTokens();
    }
    synchronized (access_tokens)
    {
      access_tokens.put(paramString2, new FlickrFileSystem.User(this, paramString1, paramString2, paramString3, paramString4));
      FlickrFileSystemCache.instance().addServer(paramString2 + "@Flickr");
      saveTokens();
      return;
    }
  }
  
  /* Error */
  protected com.gmail.yuyang226.flickr.c sendUpload(URL paramURL, List<com.gmail.yuyang226.flickr.a> paramList)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: aload_1
    //   4: invokevirtual 1529	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   7: checkcast 1531	java/net/HttpURLConnection
    //   10: astore_1
    //   11: aload_1
    //   12: ldc_w 843
    //   15: invokevirtual 1534	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   18: aload_1
    //   19: ldc_w 1536
    //   22: new 440	java/lang/StringBuilder
    //   25: dup
    //   26: invokespecial 441	java/lang/StringBuilder:<init>	()V
    //   29: ldc_w 1538
    //   32: invokevirtual 445	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   35: ldc_w 1540
    //   38: invokevirtual 445	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   41: invokevirtual 448	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   44: invokevirtual 1543	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   47: aload_1
    //   48: ldc_w 1545
    //   51: ldc 21
    //   53: invokevirtual 1543	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   56: aload_1
    //   57: iconst_1
    //   58: invokevirtual 1549	java/net/HttpURLConnection:setDoInput	(Z)V
    //   61: aload_1
    //   62: iconst_1
    //   63: invokevirtual 1552	java/net/HttpURLConnection:setDoOutput	(Z)V
    //   66: aload_1
    //   67: sipush 1024
    //   70: invokevirtual 1556	java/net/HttpURLConnection:setChunkedStreamingMode	(I)V
    //   73: aload_1
    //   74: sipush 30000
    //   77: invokevirtual 1559	java/net/HttpURLConnection:setConnectTimeout	(I)V
    //   80: aload_1
    //   81: sipush 30000
    //   84: invokevirtual 1562	java/net/HttpURLConnection:setReadTimeout	(I)V
    //   87: aload_1
    //   88: invokevirtual 1564	java/net/HttpURLConnection:connect	()V
    //   91: new 856	java/io/DataOutputStream
    //   94: dup
    //   95: aload_1
    //   96: invokevirtual 1568	java/net/HttpURLConnection:getOutputStream	()Ljava/io/OutputStream;
    //   99: invokespecial 1571	java/io/DataOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   102: astore 5
    //   104: new 440	java/lang/StringBuilder
    //   107: dup
    //   108: invokespecial 441	java/lang/StringBuilder:<init>	()V
    //   111: ldc_w 1573
    //   114: invokevirtual 445	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   117: ldc_w 1540
    //   120: invokevirtual 445	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   123: invokevirtual 448	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   126: astore 4
    //   128: aload 5
    //   130: aload 4
    //   132: invokevirtual 859	java/io/DataOutputStream:writeBytes	(Ljava/lang/String;)V
    //   135: aload_2
    //   136: invokeinterface 1574 1 0
    //   141: astore_2
    //   142: aload_2
    //   143: invokeinterface 812 1 0
    //   148: ifeq +48 -> 196
    //   151: aload_0
    //   152: aload_2
    //   153: invokeinterface 815 1 0
    //   158: checkcast 275	com/gmail/yuyang226/flickr/a
    //   161: aload 5
    //   163: aload 4
    //   165: invokespecial 1576	com/estrongs/android/pop/spfs/flickr/FlickrFileSystem:writeParam	(Lcom/gmail/yuyang226/flickr/a;Ljava/io/DataOutputStream;Ljava/lang/String;)V
    //   168: goto -26 -> 142
    //   171: astore_2
    //   172: aload_1
    //   173: astore 4
    //   175: aload_2
    //   176: astore_1
    //   177: aload 5
    //   179: astore_2
    //   180: aload_2
    //   181: invokestatic 1580	com/gmail/yuyang226/flickr/d/b:a	(Ljava/io/OutputStream;)V
    //   184: aload 4
    //   186: ifnull +8 -> 194
    //   189: aload 4
    //   191: invokevirtual 1583	java/net/HttpURLConnection:disconnect	()V
    //   194: aload_1
    //   195: athrow
    //   196: aload 5
    //   198: ldc_w 1585
    //   201: invokevirtual 859	java/io/DataOutputStream:writeBytes	(Ljava/lang/String;)V
    //   204: aload 5
    //   206: invokevirtual 1586	java/io/DataOutputStream:flush	()V
    //   209: aload 5
    //   211: invokevirtual 1587	java/io/DataOutputStream:close	()V
    //   214: aload_1
    //   215: invokevirtual 1590	java/net/HttpURLConnection:getResponseCode	()I
    //   218: istore_3
    //   219: iload_3
    //   220: sipush 200
    //   223: if_icmpeq +78 -> 301
    //   226: aload_1
    //   227: invokevirtual 1593	java/net/HttpURLConnection:getErrorStream	()Ljava/io/InputStream;
    //   230: invokestatic 1597	com/estrongs/android/pop/spfs/OAuthUtil:readFromStream	(Ljava/io/InputStream;)Ljava/lang/String;
    //   233: astore_2
    //   234: new 1026	java/io/IOException
    //   237: dup
    //   238: new 440	java/lang/StringBuilder
    //   241: dup
    //   242: invokespecial 441	java/lang/StringBuilder:<init>	()V
    //   245: ldc_w 1599
    //   248: invokevirtual 445	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   251: iload_3
    //   252: invokevirtual 669	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   255: ldc_w 1601
    //   258: invokevirtual 445	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   261: aload_1
    //   262: invokevirtual 1604	java/net/HttpURLConnection:getResponseMessage	()Ljava/lang/String;
    //   265: invokevirtual 445	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   268: ldc_w 1606
    //   271: invokevirtual 445	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   274: aload_2
    //   275: invokevirtual 445	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   278: invokevirtual 448	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   281: invokespecial 1607	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   284: athrow
    //   285: astore_2
    //   286: aload_1
    //   287: invokevirtual 1593	java/net/HttpURLConnection:getErrorStream	()Ljava/io/InputStream;
    //   290: ifnull +110 -> 400
    //   293: aload_1
    //   294: invokevirtual 1590	java/net/HttpURLConnection:getResponseCode	()I
    //   297: istore_3
    //   298: goto -79 -> 219
    //   301: new 1609	com/gmail/yuyang226/flickr/c/b
    //   304: dup
    //   305: invokespecial 1610	com/gmail/yuyang226/flickr/c/b:<init>	()V
    //   308: astore_2
    //   309: invokestatic 1616	javax/xml/parsers/DocumentBuilderFactory:newInstance	()Ljavax/xml/parsers/DocumentBuilderFactory;
    //   312: invokevirtual 1620	javax/xml/parsers/DocumentBuilderFactory:newDocumentBuilder	()Ljavax/xml/parsers/DocumentBuilder;
    //   315: astore 4
    //   317: aload 4
    //   319: aload_1
    //   320: invokevirtual 1623	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   323: invokevirtual 1628	javax/xml/parsers/DocumentBuilder:parse	(Ljava/io/InputStream;)Lorg/w3c/dom/Document;
    //   326: astore 4
    //   328: aload_2
    //   329: aload 4
    //   331: invokevirtual 1631	com/gmail/yuyang226/flickr/c/b:a	(Lorg/w3c/dom/Document;)V
    //   334: aload 5
    //   336: invokestatic 1580	com/gmail/yuyang226/flickr/d/b:a	(Ljava/io/OutputStream;)V
    //   339: aload_1
    //   340: ifnull +7 -> 347
    //   343: aload_1
    //   344: invokevirtual 1583	java/net/HttpURLConnection:disconnect	()V
    //   347: aload_2
    //   348: areturn
    //   349: astore_2
    //   350: new 1026	java/io/IOException
    //   353: dup
    //   354: new 440	java/lang/StringBuilder
    //   357: dup
    //   358: invokespecial 441	java/lang/StringBuilder:<init>	()V
    //   361: ldc_w 1633
    //   364: invokevirtual 445	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   367: aload_2
    //   368: invokevirtual 1636	java/io/IOException:getMessage	()Ljava/lang/String;
    //   371: invokevirtual 445	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   374: invokevirtual 448	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   377: invokespecial 1607	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   380: athrow
    //   381: astore_1
    //   382: aconst_null
    //   383: astore_2
    //   384: goto -204 -> 180
    //   387: astore 5
    //   389: aconst_null
    //   390: astore_2
    //   391: aload_1
    //   392: astore 4
    //   394: aload 5
    //   396: astore_1
    //   397: goto -217 -> 180
    //   400: sipush 200
    //   403: istore_3
    //   404: goto -185 -> 219
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	407	0	this	FlickrFileSystem
    //   0	407	1	paramURL	URL
    //   0	407	2	paramList	List<com.gmail.yuyang226.flickr.a>
    //   218	186	3	i	int
    //   1	392	4	localObject1	Object
    //   102	233	5	localDataOutputStream	DataOutputStream
    //   387	8	5	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   104	142	171	finally
    //   142	168	171	finally
    //   196	214	171	finally
    //   214	219	171	finally
    //   226	285	171	finally
    //   286	298	171	finally
    //   301	317	171	finally
    //   317	328	171	finally
    //   328	334	171	finally
    //   350	381	171	finally
    //   214	219	285	java/io/IOException
    //   317	328	349	java/io/IOException
    //   3	11	381	finally
    //   11	104	387	finally
  }
  
  public void setConfigDir(String paramString1, String paramString2)
  {
    storePath = paramString1;
    private_storePath = paramString2;
    FlickrFileSystemCache.setPath(paramString1);
  }
  
  public void setMeta(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    try
    {
      paramString3 = getCacheEntry(paramString1, paramString3);
      if (paramString3 == null)
      {
        l.e("Flickr", "can't get cache entry for set meta");
        return;
      }
      if (getTokenString(paramString1, paramString2) == null)
      {
        l.e("Flickr", "delete, can't get the token");
        return;
      }
    }
    catch (Exception paramString1)
    {
      throw new PhotoInfoException(paramString1);
    }
    paramString2 = new ArrayList();
    if (isDir == 1)
    {
      paramString2.add(new com.gmail.yuyang226.flickr.a("method", "flickr.photosets.editMeta"));
      paramString2.add(new com.gmail.yuyang226.flickr.a("oauth_consumer_key", "09cfe7214aec69fbda2b044b64305055"));
      if (isDir != 1) {
        break label237;
      }
      paramString2.add(new com.gmail.yuyang226.flickr.a("photoset_id", url_id));
    }
    for (;;)
    {
      paramString2.add(new com.gmail.yuyang226.flickr.a("title", paramString4));
      if (paramString5 != null) {
        paramString2.add(new com.gmail.yuyang226.flickr.a("description", paramString5));
      }
      addOAuthToken(paramString2, paramString1);
      paramString1 = postJSON("be578355f122df0a", paramString2, paramString1);
      if (!paramString1.b()) {
        return;
      }
      throw new FlickrException(paramString1.c(), paramString1.d());
      paramString2.add(new com.gmail.yuyang226.flickr.a("method", "flickr.photos.setMeta"));
      break;
      label237:
      paramString2.add(new com.gmail.yuyang226.flickr.a("photo_id", url_id));
    }
  }
  
  public void setPerms(String paramString1, String paramString2, String paramString3, TypedMap paramTypedMap)
  {
    FlickrFileSystemCache.FlickrFileCacheEntry localFlickrFileCacheEntry;
    try
    {
      localFlickrFileCacheEntry = getCacheEntry(paramString1, paramString3);
      if (localFlickrFileCacheEntry == null)
      {
        l.e("Flickr", "can't get cache entry for set permissions");
        return;
      }
      if (getTokenString(paramString1, paramString2) == null)
      {
        l.e("Flickr", "delete, can't get the token");
        return;
      }
    }
    catch (Exception paramString1)
    {
      throw new PhotoInfoException(paramString1);
    }
    paramString3 = new ArrayList();
    paramString3.add(new com.gmail.yuyang226.flickr.a("method", "flickr.photos.setPerms"));
    paramString3.add(new com.gmail.yuyang226.flickr.a("oauth_consumer_key", "09cfe7214aec69fbda2b044b64305055"));
    paramString3.add(new com.gmail.yuyang226.flickr.a("photo_id", url_id));
    if (paramTypedMap.getBoolean("is_public"))
    {
      paramString2 = "1";
      paramString3.add(new com.gmail.yuyang226.flickr.a("is_public", paramString2));
      if (!paramTypedMap.getBoolean("is_friend")) {
        break label274;
      }
    }
    label274:
    for (paramString2 = "1";; paramString2 = "0")
    {
      paramString3.add(new com.gmail.yuyang226.flickr.a("is_friend", paramString2));
      if (paramTypedMap.getBoolean("is_family")) {}
      for (paramString2 = "1";; paramString2 = "0")
      {
        paramString3.add(new com.gmail.yuyang226.flickr.a("is_family", paramString2));
        addOAuthToken(paramString3, paramString1);
        paramString1 = postJSON("be578355f122df0a", paramString3, paramString1);
        if (!paramString1.b()) {
          break;
        }
        throw new FlickrException(paramString1.c(), paramString1.d());
      }
      return;
      paramString2 = "0";
      break;
    }
  }
  
  public void setPrivateContent(String paramString1, String paramString2, Object paramObject)
  {
    locale = ((String)paramObject);
  }
  
  public void setTags(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    try
    {
      paramString3 = getCacheEntry(paramString1, paramString3);
      if (paramString3 == null)
      {
        l.e("Flickr", "can't get cache entry for set tags");
        return;
      }
      if (getTokenString(paramString1, paramString2) == null)
      {
        l.e("Flickr", "delete, can't get the token");
        return;
      }
    }
    catch (Exception paramString1)
    {
      throw new PhotoInfoException(paramString1);
    }
    paramString2 = new ArrayList();
    paramString2.add(new com.gmail.yuyang226.flickr.a("method", "flickr.photos.setTags"));
    paramString2.add(new com.gmail.yuyang226.flickr.a("oauth_consumer_key", "09cfe7214aec69fbda2b044b64305055"));
    paramString2.add(new com.gmail.yuyang226.flickr.a("photo_id", url_id));
    paramString2.add(new com.gmail.yuyang226.flickr.a("tags", paramString4));
    addOAuthToken(paramString2, paramString1);
    paramString1 = postJSON("be578355f122df0a", paramString2, paramString1);
    if (paramString1.b()) {
      throw new FlickrException(paramString1.c(), paramString1.d());
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.spfs.flickr.FlickrFileSystem
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
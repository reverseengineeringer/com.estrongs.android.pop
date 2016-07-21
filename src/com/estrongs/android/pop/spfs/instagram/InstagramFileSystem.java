package com.estrongs.android.pop.spfs.instagram;

import com.estrongs.android.pop.netfs.INetRefreshCallback;
import com.estrongs.android.pop.netfs.NetFsException;
import com.estrongs.android.pop.netfs.utils.HttpUtils;
import com.estrongs.android.pop.spfs.Album;
import com.estrongs.android.pop.spfs.AlbumException;
import com.estrongs.android.pop.spfs.ISPFileSystem;
import com.estrongs.android.pop.spfs.PhotoInfoException;
import com.estrongs.android.pop.spfs.SPFileInfo;
import com.estrongs.android.pop.spfs.note.IPhotoInfo;
import com.estrongs.android.util.TypedMap;
import com.estrongs.android.util.l;
import com.estrongs.android.util.n;
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
import java.net.URL;
import java.security.KeyStore;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.HttpVersion;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpUriRequest;
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

public class InstagramFileSystem
  implements ISPFileSystem, IPhotoInfo
{
  private static final String CONFIG_FILE = "Instagram.cfg";
  private static final String CONFIG_SPLIT = "#####";
  private static final ThreadLocal<SimpleDateFormat> DATE_FORMATS = new InstagramFileSystem.1();
  private static final int HTTP_AUTH_FAIL = 401;
  private static final String KEY_API_KEY = "api_key";
  public static final String KEY_EXTRAS = "extras";
  private static final String KEY_METHOD = "method";
  public static final String KEY_OAUTH_TOKEN = "oauth_token";
  public static final Set<String> MIN_EXTRAS = new HashSet();
  public static final String ORIGINAL_FORMAT = "original_format";
  public static final String OWNER_NAME = "owner_name";
  public static final String PARAMETER_DESCRIPTION = "description";
  public static final String PARAMETER_SETS = "sets";
  public static final String PARAMETER_TAGS = "tags";
  public static final String PARAMETER_TITLE = "title";
  public static final String PARAM_OAUTH_CONSUMER_KEY = "oauth_consumer_key";
  public static final String PRIVACY_IS_FAMILY = "is_family";
  public static final String PRIVACY_IS_FRIEND = "is_friend";
  public static final String PRIVACY_IS_PUBLIC = "is_public";
  public static final int PRIVACY_LEVEL_NO_FILTER = 0;
  private static final String client_id = "66f9c1cb708b4b9b9c96ac329260f536";
  private static final String client_secret = "d5b41a6c97344e3d8835e9d9a8fb17f6";
  private final int STAT_NET_TYPE_INSTAGRAM = 51;
  private final String TAG = "Instagram";
  private HashMap<String, InstagramFileSystem.User> access_tokens = new HashMap();
  private HashMap<String, String> access_tokens_type = new HashMap();
  private String apiUri = "https://api.instagram.com/v1";
  private String callbackUrl = "http://www.estrongs.com";
  SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss");
  private String lastErrorString = null;
  private String locale = null;
  private String oAuthTokenUri = "https://api.instagram.com/oauth/access_token";
  private String private_storePath = null;
  private String storePath = null;
  
  static
  {
    MIN_EXTRAS.add("original_format");
    MIN_EXTRAS.add("owner_name");
  }
  
  private InstagramFileSystemCache.InstagramFileCacheEntry getCacheEntry(String paramString1, String paramString2)
  {
    int i = getServerId(paramString1);
    if (i == 0) {
      return null;
    }
    int j = InstagramFileSystemCache.instance().getPathId(i, paramString2);
    return InstagramFileSystemCache.instance().getFile(i, j);
  }
  
  private String getChildValue(JSONObject paramJSONObject, String paramString)
  {
    if (paramJSONObject.has(paramString)) {
      return paramJSONObject.getJSONObject(paramString).optString("_content");
    }
    return null;
  }
  
  /* Error */
  private InstagramFileSystemCache.InstagramFileCacheEntry getFileCacheEntry(JSONObject paramJSONObject, String paramString, boolean paramBoolean)
  {
    // Byte code:
    //   0: new 200	com/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry
    //   3: dup
    //   4: invokespecial 201	com/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry:<init>	()V
    //   7: astore 6
    //   9: aload 6
    //   11: getfield 204	com/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry:isDir	I
    //   14: iconst_1
    //   15: if_icmpne +427 -> 442
    //   18: aload 6
    //   20: iconst_0
    //   21: putfield 207	com/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry:size	I
    //   24: aload_1
    //   25: ldc -47
    //   27: invokevirtual 186	org/json/JSONObject:getJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   30: ldc -45
    //   32: invokevirtual 186	org/json/JSONObject:getJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   35: ldc -43
    //   37: invokevirtual 192	org/json/JSONObject:optString	(Ljava/lang/String;)Ljava/lang/String;
    //   40: astore 5
    //   42: aload 5
    //   44: ldc -41
    //   46: invokevirtual 220	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   49: ifeq +10 -> 59
    //   52: aload 6
    //   54: aload 5
    //   56: putfield 222	com/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry:url	Ljava/lang/String;
    //   59: aload 5
    //   61: ifnull +15 -> 76
    //   64: aload 5
    //   66: astore 4
    //   68: aload 5
    //   70: invokevirtual 226	java/lang/String:length	()I
    //   73: ifne +46 -> 119
    //   76: aload_1
    //   77: ldc -47
    //   79: invokevirtual 186	org/json/JSONObject:getJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   82: ldc -28
    //   84: invokevirtual 186	org/json/JSONObject:getJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   87: ldc -43
    //   89: invokevirtual 192	org/json/JSONObject:optString	(Ljava/lang/String;)Ljava/lang/String;
    //   92: astore 5
    //   94: aload 5
    //   96: astore 4
    //   98: aload 5
    //   100: ldc -41
    //   102: invokevirtual 220	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   105: ifeq +14 -> 119
    //   108: aload 6
    //   110: aload 5
    //   112: putfield 222	com/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry:url	Ljava/lang/String;
    //   115: aload 5
    //   117: astore 4
    //   119: aload 4
    //   121: ifnull +11 -> 132
    //   124: aload 4
    //   126: invokevirtual 226	java/lang/String:length	()I
    //   129: ifne +38 -> 167
    //   132: aload_1
    //   133: ldc -47
    //   135: invokevirtual 186	org/json/JSONObject:getJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   138: ldc -26
    //   140: invokevirtual 186	org/json/JSONObject:getJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   143: ldc -43
    //   145: invokevirtual 192	org/json/JSONObject:optString	(Ljava/lang/String;)Ljava/lang/String;
    //   148: astore 4
    //   150: aload 4
    //   152: ldc -41
    //   154: invokevirtual 220	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   157: ifeq +10 -> 167
    //   160: aload 6
    //   162: aload 4
    //   164: putfield 222	com/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry:url	Ljava/lang/String;
    //   167: aload_1
    //   168: ldc -47
    //   170: invokevirtual 186	org/json/JSONObject:getJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   173: ldc -26
    //   175: invokevirtual 186	org/json/JSONObject:getJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   178: ldc -43
    //   180: invokevirtual 192	org/json/JSONObject:optString	(Ljava/lang/String;)Ljava/lang/String;
    //   183: astore 5
    //   185: aload 5
    //   187: ldc -41
    //   189: invokevirtual 220	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   192: ifeq +10 -> 202
    //   195: aload 6
    //   197: aload 5
    //   199: putfield 233	com/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry:thumbnail_url	Ljava/lang/String;
    //   202: aload 5
    //   204: ifnull +15 -> 219
    //   207: aload 5
    //   209: astore 4
    //   211: aload 5
    //   213: invokevirtual 226	java/lang/String:length	()I
    //   216: ifne +46 -> 262
    //   219: aload_1
    //   220: ldc -47
    //   222: invokevirtual 186	org/json/JSONObject:getJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   225: ldc -28
    //   227: invokevirtual 186	org/json/JSONObject:getJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   230: ldc -43
    //   232: invokevirtual 192	org/json/JSONObject:optString	(Ljava/lang/String;)Ljava/lang/String;
    //   235: astore 5
    //   237: aload 5
    //   239: astore 4
    //   241: aload 5
    //   243: ldc -41
    //   245: invokevirtual 220	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   248: ifeq +14 -> 262
    //   251: aload 6
    //   253: aload 5
    //   255: putfield 233	com/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry:thumbnail_url	Ljava/lang/String;
    //   258: aload 5
    //   260: astore 4
    //   262: aload 4
    //   264: ifnull +11 -> 275
    //   267: aload 4
    //   269: invokevirtual 226	java/lang/String:length	()I
    //   272: ifne +38 -> 310
    //   275: aload_1
    //   276: ldc -47
    //   278: invokevirtual 186	org/json/JSONObject:getJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   281: ldc -45
    //   283: invokevirtual 186	org/json/JSONObject:getJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   286: ldc -43
    //   288: invokevirtual 192	org/json/JSONObject:optString	(Ljava/lang/String;)Ljava/lang/String;
    //   291: astore 4
    //   293: aload 4
    //   295: ldc -41
    //   297: invokevirtual 220	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   300: ifeq +10 -> 310
    //   303: aload 6
    //   305: aload 4
    //   307: putfield 233	com/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry:thumbnail_url	Ljava/lang/String;
    //   310: aload 6
    //   312: aload_1
    //   313: ldc -21
    //   315: invokevirtual 238	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   318: putfield 241	com/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry:url_id	Ljava/lang/String;
    //   321: aload 6
    //   323: aload_1
    //   324: ldc -13
    //   326: invokevirtual 186	org/json/JSONObject:getJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   329: ldc -11
    //   331: invokevirtual 192	org/json/JSONObject:optString	(Ljava/lang/String;)Ljava/lang/String;
    //   334: putfield 248	com/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry:name	Ljava/lang/String;
    //   337: iload_3
    //   338: ifeq +238 -> 576
    //   341: aload 6
    //   343: getfield 204	com/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry:isDir	I
    //   346: iconst_1
    //   347: if_icmpne +157 -> 504
    //   350: aload_2
    //   351: ldc -6
    //   353: invokevirtual 253	java/lang/String:endsWith	(Ljava/lang/String;)Z
    //   356: ifeq +117 -> 473
    //   359: new 255	java/lang/StringBuilder
    //   362: dup
    //   363: invokespecial 256	java/lang/StringBuilder:<init>	()V
    //   366: aload_2
    //   367: invokevirtual 260	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   370: aload 6
    //   372: getfield 248	com/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry:name	Ljava/lang/String;
    //   375: invokevirtual 260	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   378: invokevirtual 264	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   381: astore_2
    //   382: aload 6
    //   384: aload_2
    //   385: putfield 267	com/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry:path	Ljava/lang/String;
    //   388: aload 6
    //   390: aload_0
    //   391: aload_1
    //   392: ldc_w 269
    //   395: invokevirtual 192	org/json/JSONObject:optString	(Ljava/lang/String;)Ljava/lang/String;
    //   398: invokevirtual 272	com/estrongs/android/pop/spfs/instagram/InstagramFileSystem:getDatePosted	(Ljava/lang/String;)I
    //   401: putfield 275	com/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry:mtime	I
    //   404: aload 6
    //   406: aload_1
    //   407: ldc_w 277
    //   410: invokevirtual 186	org/json/JSONObject:getJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   413: ldc -21
    //   415: invokevirtual 192	org/json/JSONObject:optString	(Ljava/lang/String;)Ljava/lang/String;
    //   418: putfield 280	com/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry:ownerId	Ljava/lang/String;
    //   421: aload 6
    //   423: aload_1
    //   424: ldc_w 277
    //   427: invokevirtual 186	org/json/JSONObject:getJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   430: ldc_w 282
    //   433: invokevirtual 192	org/json/JSONObject:optString	(Ljava/lang/String;)Ljava/lang/String;
    //   436: putfield 285	com/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry:ownerUsername	Ljava/lang/String;
    //   439: aload 6
    //   441: areturn
    //   442: aload 6
    //   444: iconst_m1
    //   445: putfield 207	com/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry:size	I
    //   448: goto -424 -> 24
    //   451: astore_1
    //   452: aload_1
    //   453: invokevirtual 288	java/lang/Exception:printStackTrace	()V
    //   456: aconst_null
    //   457: areturn
    //   458: astore 4
    //   460: aload 6
    //   462: aload 6
    //   464: getfield 241	com/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry:url_id	Ljava/lang/String;
    //   467: putfield 248	com/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry:name	Ljava/lang/String;
    //   470: goto -133 -> 337
    //   473: new 255	java/lang/StringBuilder
    //   476: dup
    //   477: invokespecial 256	java/lang/StringBuilder:<init>	()V
    //   480: aload_2
    //   481: invokevirtual 260	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   484: ldc -6
    //   486: invokevirtual 260	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   489: aload 6
    //   491: getfield 248	com/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry:name	Ljava/lang/String;
    //   494: invokevirtual 260	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   497: invokevirtual 264	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   500: astore_2
    //   501: goto -119 -> 382
    //   504: aload_2
    //   505: ldc -6
    //   507: invokevirtual 253	java/lang/String:endsWith	(Ljava/lang/String;)Z
    //   510: ifeq +35 -> 545
    //   513: new 255	java/lang/StringBuilder
    //   516: dup
    //   517: invokespecial 256	java/lang/StringBuilder:<init>	()V
    //   520: aload_2
    //   521: invokevirtual 260	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   524: aload 6
    //   526: getfield 241	com/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry:url_id	Ljava/lang/String;
    //   529: invokevirtual 260	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   532: invokevirtual 264	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   535: astore_2
    //   536: aload 6
    //   538: aload_2
    //   539: putfield 267	com/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry:path	Ljava/lang/String;
    //   542: goto -154 -> 388
    //   545: new 255	java/lang/StringBuilder
    //   548: dup
    //   549: invokespecial 256	java/lang/StringBuilder:<init>	()V
    //   552: aload_2
    //   553: invokevirtual 260	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   556: ldc -6
    //   558: invokevirtual 260	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   561: aload 6
    //   563: getfield 241	com/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry:url_id	Ljava/lang/String;
    //   566: invokevirtual 260	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   569: invokevirtual 264	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   572: astore_2
    //   573: goto -37 -> 536
    //   576: aload 6
    //   578: aload_2
    //   579: putfield 267	com/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry:path	Ljava/lang/String;
    //   582: goto -194 -> 388
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	585	0	this	InstagramFileSystem
    //   0	585	1	paramJSONObject	JSONObject
    //   0	585	2	paramString	String
    //   0	585	3	paramBoolean	boolean
    //   66	240	4	str1	String
    //   458	1	4	localJSONException	JSONException
    //   40	219	5	str2	String
    //   7	570	6	localInstagramFileCacheEntry	InstagramFileSystemCache.InstagramFileCacheEntry
    // Exception table:
    //   from	to	target	type
    //   0	24	451	java/lang/Exception
    //   24	59	451	java/lang/Exception
    //   68	76	451	java/lang/Exception
    //   76	94	451	java/lang/Exception
    //   98	115	451	java/lang/Exception
    //   124	132	451	java/lang/Exception
    //   132	167	451	java/lang/Exception
    //   167	202	451	java/lang/Exception
    //   211	219	451	java/lang/Exception
    //   219	237	451	java/lang/Exception
    //   241	258	451	java/lang/Exception
    //   267	275	451	java/lang/Exception
    //   275	310	451	java/lang/Exception
    //   310	321	451	java/lang/Exception
    //   321	337	451	java/lang/Exception
    //   341	382	451	java/lang/Exception
    //   382	388	451	java/lang/Exception
    //   388	439	451	java/lang/Exception
    //   442	448	451	java/lang/Exception
    //   460	470	451	java/lang/Exception
    //   473	501	451	java/lang/Exception
    //   504	536	451	java/lang/Exception
    //   536	542	451	java/lang/Exception
    //   545	573	451	java/lang/Exception
    //   576	582	451	java/lang/Exception
    //   321	337	458	org/json/JSONException
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
  
  private int getServerId(String paramString)
  {
    paramString = paramString + "@Instagram";
    int j = InstagramFileSystemCache.instance().getServerId(paramString);
    int i = j;
    if (j == 0)
    {
      InstagramFileSystemCache.instance().addServer(paramString);
      i = InstagramFileSystemCache.instance().getServerId(paramString);
    }
    return i;
  }
  
  private InstagramFileSystem.User getToken(String paramString1, String arg2)
  {
    if (access_tokens.size() == 0) {
      loadTokens();
    }
    synchronized (access_tokens)
    {
      paramString1 = (InstagramFileSystem.User)access_tokens.get(paramString1);
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
      ??? = new File(private_storePath + "/" + "Instagram.cfg");
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
            localHashMap.put(localObject3[1], new InstagramFileSystem.User(this, localObject3[0], localObject3[1], localObject3[2]));
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
    throw new AlbumException(new UnsupportedOperationException("removePhoto"));
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
      Object localObject1 = new File(private_storePath + "/" + "Instagram.cfg");
      ((File)localObject1).delete();
      try
      {
        localObject1 = new BufferedWriter(new FileWriter((File)localObject1));
        Iterator localIterator = access_tokens.entrySet().iterator();
        while (localIterator.hasNext())
        {
          Object localObject3 = (Map.Entry)localIterator.next();
          String str = (String)((Map.Entry)localObject3).getKey();
          localObject3 = (InstagramFileSystem.User)((Map.Entry)localObject3).getValue();
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
  
  public String addComment(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    Object localObject = null;
    try
    {
      paramString3 = getCacheEntry(paramString1, paramString3);
      if (paramString3 == null)
      {
        l.e("Instagram", "can't get cache entry for add comment");
        return null;
      }
      paramString1 = getTokenString(paramString1, paramString2);
      if (paramString1 == null)
      {
        l.e("Instagram", "delete, can't get the token");
        return null;
      }
    }
    catch (Exception paramString1)
    {
      throw new PhotoInfoException(paramString1);
    }
    paramString2 = String.format("/media/%s/comments", new Object[] { url_id });
    paramString2 = new HttpPost(apiUri + paramString2);
    HttpUtils.setParameters(paramString2, new Object[] { "text", paramString4, "access_token", paramString1 });
    paramString2 = parseAsJSON(getNewHttpClient().execute(paramString2));
    paramString1 = (String)localObject;
    if (paramString2 != null)
    {
      if ((paramString2.has("meta")) && (paramString2.getJSONObject("meta").has("error_type")))
      {
        l.e("Instagram", "AddComment failed, error code:" + paramString2.getJSONObject("meta").getString("error_message"));
        throw new PhotoInfoException(paramString2.getJSONObject("meta").getString("error_message"));
      }
      paramString1 = paramString2.getJSONObject("data").getString("id");
    }
    return paramString1;
  }
  
  public com.gmail.yuyang226.flickr.a.a addNote(String paramString1, String paramString2, String paramString3, com.gmail.yuyang226.flickr.a.a parama)
  {
    throw new PhotoInfoException(new UnsupportedOperationException("addNote"));
  }
  
  public void addPhoto(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    throw new AlbumException(new UnsupportedOperationException("addPhoto"));
  }
  
  public boolean addServer(String paramString1, String paramString2)
  {
    if (!authenticate(paramString1, paramString2)) {
      return false;
    }
    InstagramFileSystemCache.instance().addServer(paramString1 + "@Instagram");
    return true;
  }
  
  public boolean authenticate(String paramString1, String paramString2)
  {
    return getTokenString(paramString1, paramString2) != null;
  }
  
  public void close() {}
  
  public InstagramFileSystemCache.InstagramFileCacheEntry convertToCacheEntry(SPFileInfo paramSPFileInfo)
  {
    InstagramFileSystemCache.InstagramFileCacheEntry localInstagramFileCacheEntry = new InstagramFileSystemCache.InstagramFileCacheEntry();
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
      return localInstagramFileCacheEntry;
    }
  }
  
  public SPFileInfo convertToFileInfo(InstagramFileSystemCache.InstagramFileCacheEntry paramInstagramFileCacheEntry)
  {
    boolean bool = true;
    if (paramInstagramFileCacheEntry == null) {
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
    throw new AlbumException(new UnsupportedOperationException("createAlbum"));
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
      InstagramFileSystemCache.instance().delServer(paramString1 + "@Instagram");
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
        l.e("Instagram", "can't get cache entry for delete comment");
        return;
      }
      paramString1 = getTokenString(paramString1, paramString2);
      if (paramString1 == null)
      {
        l.e("Instagram", "delete, can't get the token");
        return;
      }
    }
    catch (NetFsException paramString1)
    {
      throw new PhotoInfoException(paramString1);
      paramString2 = String.format("/media/%s/comments/%s", new Object[] { url_id, paramString4 });
      paramString1 = new HttpGet(apiUri + paramString2 + "?" + "access_token=" + paramString1);
      paramString1 = parseAsJSON(getNewHttpClient().execute(paramString1));
      if ((paramString1.has("meta")) && (paramString1.getJSONObject("meta").has("error_type")))
      {
        l.e("Instagram", "lsit failed, error code:" + paramString1.getJSONObject("meta").getString("error_message"));
        return;
      }
    }
    catch (IOException paramString1)
    {
      throw new PhotoInfoException(paramString1);
    }
    catch (JSONException paramString1)
    {
      throw new PhotoInfoException(paramString1);
    }
  }
  
  public boolean deleteFile(String paramString1, String paramString2, String paramString3)
  {
    throw new NetFsException(new UnsupportedOperationException("deleteFile"));
  }
  
  public void deleteNote(String paramString1, String paramString2, String paramString3)
  {
    throw new PhotoInfoException(new UnsupportedOperationException("deleteNote"));
  }
  
  public void editComment(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    throw new PhotoInfoException(new UnsupportedOperationException("getPhotoInfo"));
  }
  
  public void editNote(String paramString1, String paramString2, com.gmail.yuyang226.flickr.a.a parama)
  {
    throw new PhotoInfoException(new UnsupportedOperationException("editNote"));
  }
  
  public boolean exists(String paramString1, String paramString2, String paramString3)
  {
    if (paramString3.equals("/")) {}
    while (getCacheEntry(paramString1, paramString3) != null) {
      return true;
    }
    return false;
  }
  
  public List<com.gmail.yuyang226.flickr.a> getAccessTokenParameters(String paramString1, String paramString2, String paramString3)
  {
    return null;
  }
  
  public URL getAccessTokenUrl()
  {
    return null;
  }
  
  public List<Album> getAlbums(String paramString1, String paramString2, String paramString3)
  {
    throw new AlbumException(new UnsupportedOperationException("getAlbums"));
  }
  
  public List<Album> getAllAlbums(String paramString1, String paramString2)
  {
    throw new AlbumException(new UnsupportedOperationException("getAllAlbums"));
  }
  
  public String getBuddyIcon(String paramString1, String paramString2)
  {
    try
    {
      paramString1 = getTokenString(paramString1, null);
      if (paramString1 == null)
      {
        l.e("Instagram", "getBuddyIcon, can't get the token");
        return null;
      }
      paramString2 = String.format("/users/%s", new Object[] { paramString2 });
      paramString1 = new HttpGet(apiUri + paramString2 + "?" + "access_token=" + paramString1);
      paramString1 = parseAsJSON(getNewHttpClient().execute(paramString1));
      if ((paramString1.has("meta")) && (paramString1.getJSONObject("meta").has("error_type")))
      {
        l.e("Instagram", "lsit failed, error code:" + paramString1.getJSONObject("meta").getString("error_message"));
        return null;
      }
    }
    catch (IOException paramString1)
    {
      throw new PhotoInfoException(paramString1);
      paramString1 = paramString1.getJSONObject("data").getString("profile_picture");
      return paramString1;
    }
    catch (JSONException paramString1)
    {
      throw new PhotoInfoException(paramString1);
    }
  }
  
  public List<com.gmail.yuyang226.flickr.a.a.a> getComments(String paramString1, String paramString2, String paramString3, TypedMap paramTypedMap)
  {
    try
    {
      paramString3 = getCacheEntry(paramString1, paramString3);
      if (paramString3 == null)
      {
        l.e("Instagram", "can't get cache entry for get comments");
        return null;
      }
      paramString1 = getTokenString(paramString1, paramString2);
      if (paramString1 == null)
      {
        l.e("Instagram", "delete, can't get the token");
        return null;
      }
    }
    catch (Exception paramString1)
    {
      throw new PhotoInfoException(paramString1);
    }
    paramString2 = String.format("/media/%s/comments", new Object[] { url_id });
    paramString1 = new HttpGet(apiUri + paramString2 + "?" + "access_token=" + paramString1);
    paramString1 = parseAsJSON(getNewHttpClient().execute(paramString1));
    if ((paramString1.has("meta")) && (paramString1.getJSONObject("meta").has("error_type")))
    {
      l.e("Instagram", "lsit failed, error code:" + paramString1.getJSONObject("meta").getString("error_message"));
      return null;
    }
    paramString3 = paramString1.getJSONArray("data");
    if (paramString3 == null)
    {
      l.e("Instagram", "list no data");
      return null;
    }
    paramTypedMap = new ArrayList();
    int i = 0;
    for (;;)
    {
      if ((paramString3 != null) && (i < paramString3.length()))
      {
        com.gmail.yuyang226.flickr.a.a.a locala = new com.gmail.yuyang226.flickr.a.a.a();
        paramString1 = paramString3.getJSONObject(i);
        locala.c(paramString1.getString("id"));
        locala.a(paramString1.getJSONObject("from").getString("id"));
        locala.b(paramString1.getJSONObject("from").getString("username"));
        locala.f(paramString1.getJSONObject("from").getString("profile_picture"));
        locala.a(new Date(getDatePosted(paramString1.getString("created_time")) * 1000L));
        paramString2 = paramString1.getString("text");
        paramString1 = paramString2;
        if (paramString2 != null) {
          paramString1 = EmojiUtil.stripEmoji(paramString2);
        }
        if ((paramString1 != null) && (paramString1.length() != 0))
        {
          locala.e(paramString1);
          paramTypedMap.add(locala);
        }
      }
      else
      {
        Collections.reverse(paramTypedMap);
        return paramTypedMap;
      }
      i += 1;
    }
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
    //   1: ldc -6
    //   3: invokevirtual 293	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   6: ifeq +5 -> 11
    //   9: aconst_null
    //   10: areturn
    //   11: aload_0
    //   12: aload_1
    //   13: aload_3
    //   14: invokespecial 297	com/estrongs/android/pop/spfs/instagram/InstagramFileSystem:getCacheEntry	(Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry;
    //   17: astore_2
    //   18: aload_2
    //   19: ifnull -10 -> 9
    //   22: aload_0
    //   23: aload_2
    //   24: invokevirtual 727	com/estrongs/android/pop/spfs/instagram/InstagramFileSystem:convertToFileInfo	(Lcom/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry;)Lcom/estrongs/android/pop/spfs/SPFileInfo;
    //   27: astore_1
    //   28: aload_1
    //   29: getfield 547	com/estrongs/android/pop/spfs/SPFileInfo:size	J
    //   32: lstore 4
    //   34: lload 4
    //   36: ldc2_w 728
    //   39: lcmp
    //   40: ifne +15 -> 55
    //   43: aload_1
    //   44: aload_2
    //   45: getfield 222	com/estrongs/android/pop/spfs/instagram/InstagramFileSystemCache$InstagramFileCacheEntry:url	Ljava/lang/String;
    //   48: invokestatic 734	com/estrongs/android/pop/spfs/ESURLUtil:getLength	(Ljava/lang/String;)I
    //   51: i2l
    //   52: putfield 547	com/estrongs/android/pop/spfs/SPFileInfo:size	J
    //   55: aload_1
    //   56: areturn
    //   57: astore_2
    //   58: aload_2
    //   59: invokevirtual 735	java/net/MalformedURLException:printStackTrace	()V
    //   62: new 606	com/estrongs/android/pop/netfs/NetFsException
    //   65: dup
    //   66: aload_2
    //   67: invokespecial 625	com/estrongs/android/pop/netfs/NetFsException:<init>	(Ljava/lang/Throwable;)V
    //   70: pop
    //   71: goto -16 -> 55
    //   74: astore_1
    //   75: aload_1
    //   76: invokevirtual 288	java/lang/Exception:printStackTrace	()V
    //   79: aconst_null
    //   80: areturn
    //   81: astore_2
    //   82: aload_2
    //   83: invokevirtual 736	java/io/IOException:printStackTrace	()V
    //   86: new 606	com/estrongs/android/pop/netfs/NetFsException
    //   89: dup
    //   90: aload_2
    //   91: invokespecial 625	com/estrongs/android/pop/netfs/NetFsException:<init>	(Ljava/lang/Throwable;)V
    //   94: pop
    //   95: goto -40 -> 55
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	98	0	this	InstagramFileSystem
    //   0	98	1	paramString1	String
    //   0	98	2	paramString2	String
    //   0	98	3	paramString3	String
    //   32	3	4	l	long
    // Exception table:
    //   from	to	target	type
    //   43	55	57	java/net/MalformedURLException
    //   11	18	74	java/lang/Exception
    //   22	34	74	java/lang/Exception
    //   43	55	74	java/lang/Exception
    //   58	71	74	java/lang/Exception
    //   82	95	74	java/lang/Exception
    //   43	55	81	java/io/IOException
  }
  
  public InputStream getFileInputStream(String paramString1, String paramString2, String paramString3, long paramLong)
  {
    paramString2 = null;
    try
    {
      paramString1 = getCacheEntry(paramString1, paramString3);
      if ((paramString1 == null) || (isDir != 0) || (url == null))
      {
        l.e("Instagram", "can't get cache entry for InputStream");
        return null;
      }
      paramString1 = new HttpGet(url);
      if (paramLong != 0L) {
        paramString1.addHeader("Range", "bytes=" + paramLong + "-");
      }
      paramString1 = getNewHttpClient().execute(paramString1);
      if ((paramString1.getStatusLine().getStatusCode() != 200) && (paramString1.getStatusLine().getStatusCode() != 206) && (paramString1.getStatusLine().getStatusCode() != 203))
      {
        l.e("Instagram", "getInputStream ret:" + paramString1.getStatusLine().getStatusCode());
        return null;
      }
    }
    catch (Exception paramString1)
    {
      paramString1.printStackTrace();
      return null;
    }
    paramString3 = paramString1.getEntity();
    paramString1 = paramString2;
    if (paramString3 != null) {
      paramString1 = paramString3.getContent();
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
    throw new NetFsException(new UnsupportedOperationException("getFileOutputStream"));
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
    return "https://api.instagram.com" + HttpUtils.buildGetUrl("/oauth/authorize", new Object[] { "client_id", "66f9c1cb708b4b9b9c96ac329260f536", "response_type", "code", "redirect_uri", "http://www.estrongs.com", "scope", "likes comments" }, true);
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
        l.e("Instagram", "can't get cache entry for get photo extension");
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
    throw new PhotoInfoException(new UnsupportedOperationException("getPhotoInfo"));
  }
  
  public boolean getRegisterPrepareInfo(Object[] paramArrayOfObject)
  {
    return false;
  }
  
  public URL getRequestTokenUrl()
  {
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
        l.e("Instagram", "can't get cache entry for InputStream");
        return null;
      }
      paramString3 = (String)localObject1;
      if (thumbnail_url == null) {
        return paramString3;
      }
      paramString3 = new HttpGet(thumbnail_url);
      localObject2 = getNewHttpClient();
      if (getTokenString(paramString1, paramString2) == null)
      {
        l.e("Instagram", "can't get token download");
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
      l.e("Instagram", "getInputStream ret:" + paramString1.getStatusLine().getStatusCode());
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
    try
    {
      Object localObject1 = new HttpPost(oAuthTokenUri);
      HttpUtils.setParameters((HttpPost)localObject1, new Object[] { "client_id", "66f9c1cb708b4b9b9c96ac329260f536", "client_secret", "d5b41a6c97344e3d8835e9d9a8fb17f6", "code", paramString, "redirect_uri", "http://www.estrongs.com", "grant_type", "authorization_code" });
      Object localObject2 = parseAsJSON(getNewHttpClient().execute((HttpUriRequest)localObject1));
      if (localObject2 == null) {
        return null;
      }
      if (((JSONObject)localObject2).has("error_type"))
      {
        l.e("Instagram", "get token failed:" + ((JSONObject)localObject2).optString("error_message"));
        return null;
      }
      paramString = (String)((JSONObject)localObject2).get("access_token");
      if (paramString == null)
      {
        l.e("Instagram", "get null token");
        return null;
      }
      localObject1 = ((JSONObject)localObject2).getJSONObject("user").getString("id");
      localObject2 = ((JSONObject)localObject2).getJSONObject("user").getString("username");
      if (localObject2 != null) {
        saveUserAndToken((String)localObject1, (String)localObject2, paramString, "");
      }
      return (String)localObject2;
    }
    catch (Exception paramString)
    {
      paramString.printStackTrace();
    }
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
          paramString4 = convertToFileInfo((InstagramFileSystemCache.InstagramFileCacheEntry)paramString1.get(paramINetRefreshCallback));
          if (paramString4 != null) {
            paramString2.put(paramINetRefreshCallback, paramString4);
          }
        }
        return paramString2;
      }
      catch (NetFsException paramString1)
      {
        paramString1.printStackTrace();
        throw paramString1;
      }
    }
  }
  
  public HashMap<String, InstagramFileSystemCache.InstagramFileCacheEntry> listFilesInternal(String paramString1, String paramString2, String paramString3, TypedMap paramTypedMap)
  {
    return listFilesInternal(paramString1, paramString2, paramString3, null, paramTypedMap);
  }
  
  public HashMap<String, InstagramFileSystemCache.InstagramFileCacheEntry> listFilesInternal(String paramString1, String paramString2, String paramString3, String paramString4, TypedMap paramTypedMap)
  {
    int j = getServerId(paramString1);
    paramString4 = getCacheEntry(paramString1, paramString3);
    int i;
    try
    {
      i = paramTypedMap.getInt("per_page", 10L);
      k = paramTypedMap.getInt("page", 1L);
      String str2 = paramTypedMap.getString("max_id", null);
      String str1 = getTokenString(paramString1, paramString2);
      if (str1 == null)
      {
        l.e("Instagram", "can't get the token");
        return null;
      }
      localLinkedHashMap = new LinkedHashMap();
      paramString2 = null;
      if (("mine".equals(paramTypedMap.getString("content_type"))) || ((com.estrongs.fs.a.a.c(paramString3).size() >= 2) && ("mine".equals(com.estrongs.fs.a.a.c(paramString3).get(1)))))
      {
        paramString2 = new StringBuilder().append(apiUri).append("/users/").append(access_tokens.get(paramString1)).id).append("/media/recent?").append("count=").append(i);
        if (str2 == null) {}
        for (paramString1 = "";; paramString1 = "&max_id=" + str2)
        {
          paramString1 = paramString1 + "&access_token=" + str1;
          break;
        }
      }
      if (!"hot".equals(paramTypedMap.getString("content_type")))
      {
        paramString1 = paramString2;
        if (com.estrongs.fs.a.a.c(paramString3).size() >= 2)
        {
          paramString1 = paramString2;
          if (!"hot".equals(com.estrongs.fs.a.a.c(paramString3).get(1))) {}
        }
      }
      else
      {
        paramString1 = apiUri + "/media/popular?" + "access_token=" + str1;
      }
    }
    catch (Exception paramString1)
    {
      int k;
      LinkedHashMap localLinkedHashMap;
      paramString1.printStackTrace();
      throw new NetFsException(paramString1);
    }
    paramString1 = new HttpGet(paramString1);
    paramString1 = parseAsJSON(getNewHttpClient().execute(paramString1));
    if ((paramString1.has("meta")) && (paramString1.getJSONObject("meta").has("error_type")))
    {
      l.e("Instagram", "lsit failed, error code:" + paramString1.getJSONObject("meta").getString("error_message"));
      return null;
    }
    paramString1 = paramString1.getJSONArray("data");
    if (paramString1 == null)
    {
      l.e("Instagram", "list no data");
      return null;
    }
    for (;;)
    {
      if (i < paramString1.length())
      {
        paramString2 = getFileCacheEntry(paramString1.getJSONObject(i), paramString3, true);
        if (paramString2 != null) {
          localLinkedHashMap.put(path, paramString2);
        }
      }
      else
      {
        if (paramString4 == null)
        {
          paramString1 = new InstagramFileSystemCache.InstagramFileCacheEntry();
          serverId = j;
          path = paramString3;
          isDir = 1;
          if ("/".equals(paramString3))
          {
            parentId = 0;
            InstagramFileSystemCache.instance().addFile(paramString1);
          }
        }
        for (paramString1 = InstagramFileSystemCache.instance().getFile(j, paramString3);; paramString1 = paramString4)
        {
          paramString2 = InstagramFileSystemCache.instance();
          i = id;
          if (k > 1) {}
          for (boolean bool = true;; bool = false)
          {
            paramString2.updateFiles(j, i, localLinkedHashMap, bool);
            return localLinkedHashMap;
            parentId = InstagramFileSystemCache.instance().getPathId(j, getParentPath(paramString3));
            break;
          }
        }
        if (paramString1 != null) {
          break;
        }
        return null;
        i = 0;
        continue;
      }
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
  
  public JSONObject parseAsJSON(HttpResponse paramHttpResponse)
  {
    paramHttpResponse = HttpUtils.readResponse(paramHttpResponse);
    if (paramHttpResponse != null) {}
    try
    {
      if (paramHttpResponse.length() == 0) {
        return new JSONObject();
      }
      new JSONParser();
      paramHttpResponse = new JSONObject(paramHttpResponse);
      return paramHttpResponse;
    }
    catch (JSONException paramHttpResponse)
    {
      paramHttpResponse = new JSONObject();
      try
      {
        paramHttpResponse.put("error", "Unknown Error");
        return paramHttpResponse;
      }
      catch (JSONException localJSONException)
      {
        localJSONException.printStackTrace();
      }
    }
    return paramHttpResponse;
  }
  
  public int register(String paramString1, String paramString2, Object[] paramArrayOfObject)
  {
    return 100;
  }
  
  public void removePhoto(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    throw new AlbumException(new UnsupportedOperationException("removePhoto"));
  }
  
  public boolean renameFile(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    throw new NetFsException(new UnsupportedOperationException("deleteFile"));
  }
  
  public void saveUserAndToken(String paramString1, String paramString2, String paramString3, String arg4)
  {
    if (access_tokens.size() == 0) {
      loadTokens();
    }
    synchronized (access_tokens)
    {
      access_tokens.put(paramString2, new InstagramFileSystem.User(this, paramString1, paramString2, paramString3));
      InstagramFileSystemCache.instance().addServer(paramString2 + "@Instagram");
      saveTokens();
      return;
    }
  }
  
  public void setConfigDir(String paramString1, String paramString2)
  {
    storePath = paramString1;
    private_storePath = paramString2;
    InstagramFileSystemCache.setPath(paramString1);
  }
  
  public void setMeta(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    throw new PhotoInfoException(new UnsupportedOperationException("getPhotoInfo"));
  }
  
  public void setPerms(String paramString1, String paramString2, String paramString3, TypedMap paramTypedMap)
  {
    throw new PhotoInfoException(new UnsupportedOperationException("getPhotoInfo"));
  }
  
  public void setPrivateContent(String paramString1, String paramString2, Object paramObject)
  {
    locale = ((String)paramObject);
  }
  
  public void setTags(String paramString1, String paramString2, String paramString3, String paramString4) {}
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.spfs.instagram.InstagramFileSystem
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
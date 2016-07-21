package com.estrongs.fs.impl.pcs;

import android.os.Build;
import android.os.Build.VERSION;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.netfs.INetFileSystem;
import com.estrongs.android.pop.netfs.INetRefreshCallback;
import com.estrongs.android.pop.netfs.NetFileInfo;
import com.estrongs.android.pop.netfs.utils.FastPipedInputStream;
import com.estrongs.android.pop.netfs.utils.FastPipedOutputStream;
import com.estrongs.android.pop.netfs.utils.HttpUtils;
import com.estrongs.android.pop.netfs.utils.UploadOutputStream;
import com.estrongs.android.util.TypedMap;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.bk;
import com.estrongs.android.util.l;
import com.estrongs.android.util.n;
import com.estrongs.fs.h;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.security.KeyStore;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Random;
import java.util.Set;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.HttpVersion;
import org.apache.http.NameValuePair;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpRequestBase;
import org.apache.http.client.params.HttpClientParams;
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
import org.apache.http.util.EntityUtils;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

public class PcsFileSystem
  implements INetFileSystem
{
  public static int a = 10485760;
  static final String b = "os_version=" + Build.VERSION.RELEASE + "&" + "brand_name=" + Build.MODEL + "";
  static final String[] c = { "https://openapi.baidu.com/yunid/device", "https://180.149.132.118/yunid/device" };
  private static final String[] p = { "https://passport.baidu.com/v2/sapi/smsgetlogin", "https://220.181.111.48/v2/sapi/smsgetlogin", "https://123.125.115.81/v2/sapi/smsgetlogin", "https://123.125.114.161/v2/sapi/smsgetlogin", "https://119.75.220.29/v2/sapi/smsgetlogin" };
  private final String d = "Pcs";
  private final int e = 7;
  private HashMap<String, String> f = new HashMap();
  private HashMap<String, String> g = new HashMap();
  private HashMap<String, String> h = new HashMap();
  private HashMap<String, Long> i = new HashMap();
  private String j = null;
  private String k = null;
  private String[] l = { "/files", "/videos", "/music", "/pictures", "/documents", "/apps", "/others" };
  private Random m = new Random();
  private String n = null;
  private com.estrongs.fs.impl.o.e o;
  
  private int a(JSONArray paramJSONArray, int paramInt)
  {
    paramJSONArray = paramJSONArray.iterator();
    paramInt = 0;
    while (paramJSONArray.hasNext())
    {
      Map localMap = (Map)paramJSONArray.next();
      paramInt += 1;
    }
    return paramInt;
  }
  
  private NetFileInfo a(e parame)
  {
    boolean bool = true;
    if (parame == null) {
      return null;
    }
    NetFileInfo localNetFileInfo = new NetFileInfo();
    path = f;
    name = n;
    lastModifiedTime = i;
    lastModifiedTime *= 1000L;
    readable = true;
    writable = true;
    hidden = name.startsWith(".");
    if (g == 1) {}
    for (;;)
    {
      isDirectory = bool;
      size = j;
      folder_type = l;
      md5_block_size = a;
      md5s = h;
      return localNetFileInfo;
      bool = false;
    }
  }
  
  private e a(Object paramObject, String paramString)
  {
    for (;;)
    {
      try
      {
        localMap = (Map)paramObject;
        locale = new e();
        paramObject = (String)localMap.get("path");
        n = ap.d((String)paramObject);
        f = g((String)paramObject, paramString);
        c = ("" + localMap.get("fs_id"));
        j = Long.parseLong(localMap.get("size") + "");
        g = HttpUtils.getInt(localMap, "isdir");
        paramString = localMap.get("mtime");
        paramObject = paramString;
        if (paramString != null) {
          break label220;
        }
        paramObject = localMap.get("server_mtime");
      }
      catch (Exception paramObject)
      {
        Map localMap;
        e locale;
        ((Exception)paramObject).printStackTrace();
        return null;
      }
      i = Integer.parseInt(paramString + "");
      h = ((String)localMap.get("md5"));
      if (h == null) {
        h = "";
      }
      return locale;
      label220:
      paramString = (String)paramObject;
      if (paramObject == null) {
        paramString = "";
      }
    }
  }
  
  private InputStream a(String paramString1, String paramString2, int paramInt1, int paramInt2, int paramInt3)
  {
    int i2 = 0;
    int i1 = 100;
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new BasicNameValuePair("method", "generate"));
    if (paramString1.startsWith("auth_code:"))
    {
      localArrayList.add(new BasicNameValuePair("access_token", g(paramString1)));
      if (paramString2 != null) {
        localArrayList.add(new BasicNameValuePair("path", paramString2));
      }
      if (paramInt1 >= 0) {
        break label343;
      }
      paramInt1 = i2;
    }
    label338:
    label343:
    for (;;)
    {
      if (paramInt1 > 100) {
        paramInt1 = i1;
      }
      for (;;)
      {
        i1 = paramInt2;
        if (paramInt2 > 1600) {
          i1 = 1600;
        }
        paramInt2 = paramInt3;
        if (paramInt3 > 1600) {
          paramInt2 = 1600;
        }
        localArrayList.add(new BasicNameValuePair("quality", String.valueOf(paramInt1)));
        localArrayList.add(new BasicNameValuePair("width", String.valueOf(i1)));
        localArrayList.add(new BasicNameValuePair("height", String.valueOf(paramInt2)));
        paramString2 = new HttpGet("https://pcs.baidu.com/rest/2.0/pcs/thumbnail?" + a(localArrayList));
        if (paramString1.startsWith("bduss:")) {
          paramString2.addHeader("Cookie", "BDUSS=" + g(paramString1));
        }
        paramString1 = a();
        try
        {
          paramString1 = paramString1.execute(paramString2);
          if (paramString1 == null) {
            break label338;
          }
          paramString1 = paramString1.getEntity().getContent();
          return paramString1;
        }
        catch (Exception paramString1)
        {
          paramString1.printStackTrace();
        }
        if (!paramString1.startsWith("bduss:")) {
          break;
        }
        localArrayList.add(new BasicNameValuePair("app_id", "266719"));
        break;
        return null;
      }
    }
  }
  
  private InputStream a(String paramString1, String paramString2, long paramLong)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new BasicNameValuePair("method", "download"));
    if (paramString1.startsWith("auth_code:")) {
      localArrayList.add(new BasicNameValuePair("access_token", g(paramString1)));
    }
    for (;;)
    {
      if (paramString2 != null) {
        localArrayList.add(new BasicNameValuePair("path", paramString2));
      }
      paramString2 = new HttpGet("https://pcs.baidu.com/rest/2.0/pcs/file?" + a(localArrayList));
      if (paramString1.startsWith("bduss:")) {
        paramString2.addHeader("Cookie", "BDUSS=" + g(paramString1));
      }
      if (paramLong != 0L) {
        paramString2.addHeader("Range", "bytes=" + paramLong + "-");
      }
      if (paramString2 != null)
      {
        paramString1 = a();
        try
        {
          paramString1 = paramString1.execute(paramString2);
          int i1 = paramString1.getStatusLine().getStatusCode();
          if ((i1 < 200) || (i1 >= 300))
          {
            return null;
            if (paramString1.startsWith("bduss:")) {
              localArrayList.add(new BasicNameValuePair("app_id", "266719"));
            }
          }
          else if (paramString1 != null)
          {
            paramString1 = new c(this, paramString1.getEntity().getContent(), paramString2);
            return paramString1;
          }
        }
        catch (Exception paramString1)
        {
          paramString1.printStackTrace();
        }
      }
    }
    return null;
  }
  
  public static Object a(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new BasicNameValuePair("ptpl", "esfb"));
    localArrayList.add(new BasicNameValuePair("username", paramString2));
    localArrayList.add(new BasicNameValuePair("password", paramString3));
    localArrayList.add(new BasicNameValuePair("bduss", paramString1));
    localArrayList.add(new BasicNameValuePair("captcha", paramString4));
    paramString1 = new HttpPost("https://openapi.baidu.com/yunid/user/fulfilbinding");
    paramString2 = a();
    try
    {
      paramString1.setEntity(new UrlEncodedFormEntity(localArrayList, "utf-8"));
      paramString1 = HttpUtils.parseAsJSON(paramString2.execute(paramString1));
      return paramString1;
    }
    catch (Exception paramString1)
    {
      paramString1.printStackTrace();
    }
    return null;
  }
  
  public static String a(String paramString)
  {
    if (paramString.startsWith("/files")) {
      paramString = paramString.substring("/files".length());
    }
    for (;;)
    {
      if (paramString != null)
      {
        str = paramString;
        if (paramString.length() != 0) {}
      }
      else
      {
        str = "/";
      }
      return str;
      String str = paramString.substring(paramString.indexOf("/", 1) + 1).replace(">", "/");
      paramString = str;
      if (str.charAt(0) != '/') {
        paramString = "/" + str;
      }
    }
  }
  
  /* Error */
  public static String a(String paramString, long paramLong)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 7
    //   3: aconst_null
    //   4: astore 4
    //   6: ldc_w 438
    //   9: invokestatic 444	java/security/MessageDigest:getInstance	(Ljava/lang/String;)Ljava/security/MessageDigest;
    //   12: astore 6
    //   14: new 446	java/io/FileInputStream
    //   17: dup
    //   18: aload_0
    //   19: invokespecial 447	java/io/FileInputStream:<init>	(Ljava/lang/String;)V
    //   22: astore 5
    //   24: new 449	java/security/DigestInputStream
    //   27: dup
    //   28: aload 5
    //   30: aload 6
    //   32: invokespecial 452	java/security/DigestInputStream:<init>	(Ljava/io/InputStream;Ljava/security/MessageDigest;)V
    //   35: astore 6
    //   37: aload 7
    //   39: astore_0
    //   40: ldc_w 453
    //   43: newarray <illegal type>
    //   45: astore 4
    //   47: goto +211 -> 258
    //   50: aload 7
    //   52: astore_0
    //   53: aload 6
    //   55: aload 4
    //   57: iconst_0
    //   58: iload_3
    //   59: invokevirtual 457	java/security/DigestInputStream:read	([BII)I
    //   62: istore_3
    //   63: iload_3
    //   64: ifgt +78 -> 142
    //   67: aload 7
    //   69: astore_0
    //   70: new 459	java/math/BigInteger
    //   73: dup
    //   74: iconst_1
    //   75: aload 6
    //   77: invokevirtual 463	java/security/DigestInputStream:getMessageDigest	()Ljava/security/MessageDigest;
    //   80: invokevirtual 467	java/security/MessageDigest:digest	()[B
    //   83: invokespecial 470	java/math/BigInteger:<init>	(I[B)V
    //   86: bipush 16
    //   88: invokevirtual 472	java/math/BigInteger:toString	(I)Ljava/lang/String;
    //   91: astore 4
    //   93: aload 4
    //   95: astore_0
    //   96: aload 4
    //   98: invokevirtual 416	java/lang/String:length	()I
    //   101: bipush 32
    //   103: if_icmpge +47 -> 150
    //   106: aload 4
    //   108: astore_0
    //   109: new 37	java/lang/StringBuilder
    //   112: dup
    //   113: invokespecial 40	java/lang/StringBuilder:<init>	()V
    //   116: ldc_w 474
    //   119: invokevirtual 46	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   122: aload 4
    //   124: invokevirtual 46	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   127: invokevirtual 66	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   130: astore 4
    //   132: goto -39 -> 93
    //   135: ldc_w 453
    //   138: istore_3
    //   139: goto -89 -> 50
    //   142: lload_1
    //   143: iload_3
    //   144: i2l
    //   145: lsub
    //   146: lstore_1
    //   147: goto +111 -> 258
    //   150: aload 6
    //   152: invokevirtual 477	java/security/DigestInputStream:close	()V
    //   155: aload 5
    //   157: invokevirtual 478	java/io/FileInputStream:close	()V
    //   160: aload 4
    //   162: areturn
    //   163: astore_0
    //   164: aconst_null
    //   165: astore_0
    //   166: aconst_null
    //   167: astore 5
    //   169: aload_0
    //   170: invokevirtual 477	java/security/DigestInputStream:close	()V
    //   173: aload 5
    //   175: invokevirtual 478	java/io/FileInputStream:close	()V
    //   178: aload 4
    //   180: areturn
    //   181: astore_0
    //   182: aload 4
    //   184: areturn
    //   185: astore_0
    //   186: aconst_null
    //   187: astore 5
    //   189: aconst_null
    //   190: astore 4
    //   192: aload 4
    //   194: invokevirtual 477	java/security/DigestInputStream:close	()V
    //   197: aload 5
    //   199: invokevirtual 478	java/io/FileInputStream:close	()V
    //   202: aload_0
    //   203: athrow
    //   204: astore_0
    //   205: goto -50 -> 155
    //   208: astore_0
    //   209: aload 4
    //   211: areturn
    //   212: astore_0
    //   213: goto -40 -> 173
    //   216: astore 4
    //   218: goto -21 -> 197
    //   221: astore 4
    //   223: goto -21 -> 202
    //   226: astore_0
    //   227: aconst_null
    //   228: astore 4
    //   230: goto -38 -> 192
    //   233: astore_0
    //   234: aload 6
    //   236: astore 4
    //   238: goto -46 -> 192
    //   241: astore_0
    //   242: aconst_null
    //   243: astore_0
    //   244: goto -75 -> 169
    //   247: astore 4
    //   249: aload_0
    //   250: astore 4
    //   252: aload 6
    //   254: astore_0
    //   255: goto -86 -> 169
    //   258: lload_1
    //   259: lconst_0
    //   260: lcmp
    //   261: ifle -194 -> 67
    //   264: lload_1
    //   265: ldc_w 453
    //   268: i2l
    //   269: lcmp
    //   270: ifge -135 -> 135
    //   273: lload_1
    //   274: l2i
    //   275: istore_3
    //   276: goto -226 -> 50
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	279	0	paramString	String
    //   0	279	1	paramLong	long
    //   58	218	3	i1	int
    //   4	206	4	localObject1	Object
    //   216	1	4	localException1	Exception
    //   221	1	4	localException2	Exception
    //   228	9	4	localObject2	Object
    //   247	1	4	localException3	Exception
    //   250	1	4	str	String
    //   22	176	5	localFileInputStream	FileInputStream
    //   12	241	6	localObject3	Object
    //   1	67	7	localObject4	Object
    // Exception table:
    //   from	to	target	type
    //   6	24	163	java/lang/Exception
    //   173	178	181	java/lang/Exception
    //   6	24	185	finally
    //   150	155	204	java/lang/Exception
    //   155	160	208	java/lang/Exception
    //   169	173	212	java/lang/Exception
    //   192	197	216	java/lang/Exception
    //   197	202	221	java/lang/Exception
    //   24	37	226	finally
    //   40	47	233	finally
    //   53	63	233	finally
    //   70	93	233	finally
    //   96	106	233	finally
    //   109	132	233	finally
    //   24	37	241	java/lang/Exception
    //   40	47	247	java/lang/Exception
    //   53	63	247	java/lang/Exception
    //   70	93	247	java/lang/Exception
    //   96	106	247	java/lang/Exception
    //   109	132	247	java/lang/Exception
  }
  
  private String a(String paramString1, String paramString2, long paramLong, List<String> paramList)
  {
    if (paramString1 == null) {
      try
      {
        throw new RuntimeException("Invalid upload target: null");
      }
      catch (Exception paramString1)
      {
        paramString1.printStackTrace();
        return null;
      }
    }
    Object localObject = new ArrayList();
    ((ArrayList)localObject).add(new BasicNameValuePair("method", "createsuperfile"));
    if (paramString2.startsWith("auth_code:")) {
      ((ArrayList)localObject).add(new BasicNameValuePair("access_token", g(paramString2)));
    }
    String str;
    int i2;
    for (;;)
    {
      ((ArrayList)localObject).add(new BasicNameValuePair("path", paramString1));
      str = "https://pcs.baidu.com/rest/2.0/pcs/file?" + a((List)localObject);
      paramString1 = "{\"block_list\":[";
      int i1 = 0;
      for (;;)
      {
        localObject = paramString1;
        i2 = i1;
        if (i1 >= paramList.size() - 1) {
          break;
        }
        paramString1 = paramString1 + "\"" + (String)paramList.get(i1) + "\",";
        i1 += 1;
      }
      if (paramString2.startsWith("bduss:")) {
        ((ArrayList)localObject).add(new BasicNameValuePair("app_id", "266719"));
      }
    }
    while (i2 < paramList.size())
    {
      localObject = (String)localObject + "\"" + (String)paramList.get(i2) + "\"";
      i2 += 1;
    }
    paramString1 = (String)localObject + "]}";
    paramList = new HttpPost(str);
    if (paramString2.startsWith("bduss:")) {
      paramList.addHeader("Cookie", "BDUSS=" + g(paramString2));
    }
    paramString2 = new ArrayList();
    paramString2.add(new BasicNameValuePair("param", paramString1));
    try
    {
      paramString1 = new UrlEncodedFormEntity(paramString2, "utf-8");
      paramList.setEntity(paramString1);
      paramString1 = HttpUtils.parseAsJSON(a(paramList));
      if (!a(paramString1, "createsuperfile"))
      {
        l.e("Pcs", "commit failed");
        return null;
      }
    }
    catch (UnsupportedEncodingException paramString1)
    {
      paramString1.printStackTrace();
      throw new RuntimeException(paramString1.getMessage());
    }
    paramString1 = paramString1.get("path");
    if (paramString1 == null)
    {
      l.e("Pcs", "commit data");
      return null;
    }
    paramString1 = (String)paramString1;
    return paramString1;
  }
  
  private static String a(List<NameValuePair> paramList)
  {
    Object localObject2 = null;
    Object localObject1 = localObject2;
    if (paramList != null)
    {
      localObject1 = localObject2;
      if (paramList.size() <= 0) {}
    }
    try
    {
      localObject1 = EntityUtils.toString(new UrlEncodedFormEntity(paramList, "utf8"));
      return (String)localObject1;
    }
    catch (Exception paramList)
    {
      paramList.printStackTrace();
    }
    return null;
  }
  
  /* Error */
  private HashMap<String, e> a(String paramString1, String paramString2, String paramString3, String paramString4, HashMap<String, Object> paramHashMap)
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_3
    //   2: invokespecial 536	com/estrongs/fs/impl/pcs/PcsFileSystem:f	(Ljava/lang/String;)Ljava/lang/String;
    //   5: astore 13
    //   7: aload_0
    //   8: aload_1
    //   9: aload_2
    //   10: invokespecial 538	com/estrongs/fs/impl/pcs/PcsFileSystem:f	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   13: astore_1
    //   14: iconst_0
    //   15: istore 6
    //   17: sipush 10000
    //   20: istore 8
    //   22: aconst_null
    //   23: invokestatic 543	com/estrongs/android/j/c:a	(Landroid/content/Context;)Lcom/estrongs/android/j/c;
    //   26: ifnull +9 -> 35
    //   29: aload_0
    //   30: aload_1
    //   31: invokespecial 545	com/estrongs/fs/impl/pcs/PcsFileSystem:h	(Ljava/lang/String;)I
    //   34: pop
    //   35: aload 5
    //   37: ifnull +1144 -> 1181
    //   40: aload 5
    //   42: ldc_w 547
    //   45: invokevirtual 550	java/util/HashMap:containsKey	(Ljava/lang/Object;)Z
    //   48: ifeq +1133 -> 1181
    //   51: aload 5
    //   53: ldc_w 552
    //   56: invokevirtual 550	java/util/HashMap:containsKey	(Ljava/lang/Object;)Z
    //   59: ifeq +1122 -> 1181
    //   62: aload 5
    //   64: ldc_w 547
    //   67: invokevirtual 553	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   70: checkcast 260	java/lang/Integer
    //   73: invokevirtual 556	java/lang/Integer:intValue	()I
    //   76: istore 8
    //   78: aload 5
    //   80: ldc_w 552
    //   83: invokevirtual 553	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   86: checkcast 260	java/lang/Integer
    //   89: invokevirtual 556	java/lang/Integer:intValue	()I
    //   92: istore 6
    //   94: iload 8
    //   96: ifle +1077 -> 1173
    //   99: aload 5
    //   101: ldc_w 558
    //   104: invokevirtual 550	java/util/HashMap:containsKey	(Ljava/lang/Object;)Z
    //   107: ifne +19 -> 126
    //   110: aload 5
    //   112: ldc_w 558
    //   115: new 98	java/util/HashMap
    //   118: dup
    //   119: invokespecial 99	java/util/HashMap:<init>	()V
    //   122: invokevirtual 562	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   125: pop
    //   126: aload 5
    //   128: ldc_w 558
    //   131: invokevirtual 553	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   134: checkcast 98	java/util/HashMap
    //   137: astore_3
    //   138: aload 5
    //   140: ldc_w 564
    //   143: invokevirtual 550	java/util/HashMap:containsKey	(Ljava/lang/Object;)Z
    //   146: ifne +16 -> 162
    //   149: aload 5
    //   151: ldc_w 564
    //   154: iconst_0
    //   155: invokestatic 567	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   158: invokevirtual 562	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   161: pop
    //   162: aload 5
    //   164: ldc_w 564
    //   167: aload 5
    //   169: ldc_w 564
    //   172: invokevirtual 553	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   175: checkcast 260	java/lang/Integer
    //   178: invokevirtual 556	java/lang/Integer:intValue	()I
    //   181: iconst_1
    //   182: iadd
    //   183: invokestatic 567	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   186: invokevirtual 562	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   189: pop
    //   190: iconst_1
    //   191: istore 7
    //   193: aload_0
    //   194: aload 13
    //   196: invokespecial 569	com/estrongs/fs/impl/pcs/PcsFileSystem:j	(Ljava/lang/String;)Z
    //   199: ifeq +475 -> 674
    //   202: new 137	org/json/simple/JSONArray
    //   205: dup
    //   206: invokespecial 570	org/json/simple/JSONArray:<init>	()V
    //   209: astore_2
    //   210: aload 13
    //   212: ldc 117
    //   214: invokevirtual 573	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   217: ifeq +262 -> 479
    //   220: aload_0
    //   221: aload_2
    //   222: ldc_w 575
    //   225: aload_1
    //   226: iload 6
    //   228: iload 8
    //   230: idiv
    //   231: iload 8
    //   233: invokespecial 578	com/estrongs/fs/impl/pcs/PcsFileSystem:a	(Lorg/json/simple/JSONArray;Ljava/lang/String;Ljava/lang/String;II)Lorg/json/simple/JSONArray;
    //   236: astore_1
    //   237: aload_0
    //   238: aload_1
    //   239: checkcast 137	org/json/simple/JSONArray
    //   242: iload 8
    //   244: invokespecial 580	com/estrongs/fs/impl/pcs/PcsFileSystem:a	(Lorg/json/simple/JSONArray;I)I
    //   247: pop
    //   248: aload_1
    //   249: astore_2
    //   250: new 98	java/util/HashMap
    //   253: dup
    //   254: invokespecial 99	java/util/HashMap:<init>	()V
    //   257: astore 14
    //   259: aload_2
    //   260: instanceof 137
    //   263: ifeq +776 -> 1039
    //   266: aload_2
    //   267: checkcast 137	org/json/simple/JSONArray
    //   270: invokevirtual 141	org/json/simple/JSONArray:iterator	()Ljava/util/Iterator;
    //   273: astore 15
    //   275: aload 15
    //   277: invokeinterface 147 1 0
    //   282: ifeq +757 -> 1039
    //   285: aload_0
    //   286: aload 15
    //   288: invokeinterface 151 1 0
    //   293: aload 13
    //   295: invokespecial 582	com/estrongs/fs/impl/pcs/PcsFileSystem:a	(Ljava/lang/Object;Ljava/lang/String;)Lcom/estrongs/fs/impl/pcs/e;
    //   298: astore 16
    //   300: aload 16
    //   302: ifnull -27 -> 275
    //   305: aload 14
    //   307: aload 16
    //   309: getfield 161	com/estrongs/fs/impl/pcs/e:f	Ljava/lang/String;
    //   312: aload 16
    //   314: invokevirtual 562	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   317: pop
    //   318: iload 7
    //   320: ifeq +15 -> 335
    //   323: aload_3
    //   324: aload 16
    //   326: getfield 161	com/estrongs/fs/impl/pcs/e:f	Ljava/lang/String;
    //   329: aload 16
    //   331: invokevirtual 562	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   334: pop
    //   335: aload 16
    //   337: getfield 161	com/estrongs/fs/impl/pcs/e:f	Ljava/lang/String;
    //   340: invokestatic 584	com/estrongs/fs/impl/pcs/PcsFileSystem:a	(Ljava/lang/String;)Ljava/lang/String;
    //   343: invokevirtual 587	java/lang/String:hashCode	()I
    //   346: istore 6
    //   348: aconst_null
    //   349: astore 4
    //   351: aconst_null
    //   352: astore 12
    //   354: new 37	java/lang/StringBuilder
    //   357: dup
    //   358: invokespecial 40	java/lang/StringBuilder:<init>	()V
    //   361: aload_0
    //   362: invokespecial 589	com/estrongs/fs/impl/pcs/PcsFileSystem:c	()Ljava/lang/String;
    //   365: invokevirtual 46	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   368: ldc_w 421
    //   371: invokevirtual 46	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   374: iload 6
    //   376: invokevirtual 592	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   379: ldc_w 594
    //   382: invokevirtual 46	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   385: invokevirtual 66	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   388: astore 17
    //   390: new 596	java/io/File
    //   393: dup
    //   394: aload 17
    //   396: invokespecial 597	java/io/File:<init>	(Ljava/lang/String;)V
    //   399: invokevirtual 600	java/io/File:exists	()Z
    //   402: ifeq +753 -> 1155
    //   405: new 602	java/io/InputStreamReader
    //   408: dup
    //   409: new 446	java/io/FileInputStream
    //   412: dup
    //   413: aload 17
    //   415: invokespecial 447	java/io/FileInputStream:<init>	(Ljava/lang/String;)V
    //   418: invokespecial 605	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   421: astore_1
    //   422: new 607	java/io/BufferedReader
    //   425: dup
    //   426: aload_1
    //   427: invokespecial 610	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   430: astore 4
    //   432: iconst_0
    //   433: istore 6
    //   435: aconst_null
    //   436: astore_2
    //   437: aload 4
    //   439: invokevirtual 613	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   442: astore 12
    //   444: aload 12
    //   446: ifnull +447 -> 893
    //   449: aload 12
    //   451: ldc_w 615
    //   454: invokevirtual 189	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   457: ifeq +352 -> 809
    //   460: aload 12
    //   462: ldc_w 615
    //   465: invokevirtual 416	java/lang/String:length	()I
    //   468: invokevirtual 419	java/lang/String:substring	(I)Ljava/lang/String;
    //   471: astore 12
    //   473: aload 12
    //   475: astore_2
    //   476: goto -39 -> 437
    //   479: aload 13
    //   481: ldc 115
    //   483: invokevirtual 573	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   486: ifeq +34 -> 520
    //   489: aload_0
    //   490: aload_2
    //   491: ldc_w 617
    //   494: aload_1
    //   495: iload 6
    //   497: iload 8
    //   499: idiv
    //   500: iload 8
    //   502: invokespecial 578	com/estrongs/fs/impl/pcs/PcsFileSystem:a	(Lorg/json/simple/JSONArray;Ljava/lang/String;Ljava/lang/String;II)Lorg/json/simple/JSONArray;
    //   505: astore_1
    //   506: aload_0
    //   507: aload_1
    //   508: checkcast 137	org/json/simple/JSONArray
    //   511: iload 8
    //   513: invokespecial 580	com/estrongs/fs/impl/pcs/PcsFileSystem:a	(Lorg/json/simple/JSONArray;I)I
    //   516: pop
    //   517: goto -269 -> 248
    //   520: aload 13
    //   522: ldc 119
    //   524: invokevirtual 573	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   527: ifeq +34 -> 561
    //   530: aload_0
    //   531: aload_2
    //   532: ldc_w 619
    //   535: aload_1
    //   536: iload 6
    //   538: iload 8
    //   540: idiv
    //   541: iload 8
    //   543: invokespecial 578	com/estrongs/fs/impl/pcs/PcsFileSystem:a	(Lorg/json/simple/JSONArray;Ljava/lang/String;Ljava/lang/String;II)Lorg/json/simple/JSONArray;
    //   546: astore_1
    //   547: aload_0
    //   548: aload_1
    //   549: checkcast 137	org/json/simple/JSONArray
    //   552: iload 8
    //   554: invokespecial 580	com/estrongs/fs/impl/pcs/PcsFileSystem:a	(Lorg/json/simple/JSONArray;I)I
    //   557: pop
    //   558: goto -310 -> 248
    //   561: aload 13
    //   563: ldc 121
    //   565: invokevirtual 573	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   568: ifeq +34 -> 602
    //   571: aload_0
    //   572: aload_2
    //   573: ldc_w 621
    //   576: aload_1
    //   577: iload 6
    //   579: iload 8
    //   581: idiv
    //   582: iload 8
    //   584: invokespecial 578	com/estrongs/fs/impl/pcs/PcsFileSystem:a	(Lorg/json/simple/JSONArray;Ljava/lang/String;Ljava/lang/String;II)Lorg/json/simple/JSONArray;
    //   587: astore_1
    //   588: aload_0
    //   589: aload_1
    //   590: checkcast 137	org/json/simple/JSONArray
    //   593: iload 8
    //   595: invokespecial 580	com/estrongs/fs/impl/pcs/PcsFileSystem:a	(Lorg/json/simple/JSONArray;I)I
    //   598: pop
    //   599: goto -351 -> 248
    //   602: aload 13
    //   604: ldc 123
    //   606: invokevirtual 573	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   609: ifeq +34 -> 643
    //   612: aload_0
    //   613: aload_2
    //   614: ldc_w 623
    //   617: aload_1
    //   618: iload 6
    //   620: iload 8
    //   622: idiv
    //   623: iload 8
    //   625: invokespecial 578	com/estrongs/fs/impl/pcs/PcsFileSystem:a	(Lorg/json/simple/JSONArray;Ljava/lang/String;Ljava/lang/String;II)Lorg/json/simple/JSONArray;
    //   628: astore_1
    //   629: aload_0
    //   630: aload_1
    //   631: checkcast 137	org/json/simple/JSONArray
    //   634: iload 8
    //   636: invokespecial 580	com/estrongs/fs/impl/pcs/PcsFileSystem:a	(Lorg/json/simple/JSONArray;I)I
    //   639: pop
    //   640: goto -392 -> 248
    //   643: aload_0
    //   644: aload_2
    //   645: ldc_w 625
    //   648: aload_1
    //   649: iload 6
    //   651: iload 8
    //   653: idiv
    //   654: iload 8
    //   656: invokespecial 578	com/estrongs/fs/impl/pcs/PcsFileSystem:a	(Lorg/json/simple/JSONArray;Ljava/lang/String;Ljava/lang/String;II)Lorg/json/simple/JSONArray;
    //   659: astore_1
    //   660: aload_0
    //   661: aload_1
    //   662: checkcast 137	org/json/simple/JSONArray
    //   665: iload 8
    //   667: invokespecial 580	com/estrongs/fs/impl/pcs/PcsFileSystem:a	(Lorg/json/simple/JSONArray;I)I
    //   670: pop
    //   671: goto -423 -> 248
    //   674: aload 13
    //   676: ldc_w 421
    //   679: invokevirtual 628	java/lang/String:endsWith	(Ljava/lang/String;)Z
    //   682: ifeq +28 -> 710
    //   685: aload_0
    //   686: iload 6
    //   688: iload 8
    //   690: invokespecial 631	com/estrongs/fs/impl/pcs/PcsFileSystem:a	(II)Lorg/json/simple/JSONArray;
    //   693: astore_1
    //   694: aload_1
    //   695: astore_2
    //   696: aload_1
    //   697: ifnonnull -447 -> 250
    //   700: ldc 92
    //   702: ldc_w 633
    //   705: invokestatic 517	com/estrongs/android/util/l:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   708: aconst_null
    //   709: areturn
    //   710: aload_0
    //   711: aload_0
    //   712: aload 13
    //   714: invokestatic 584	com/estrongs/fs/impl/pcs/PcsFileSystem:a	(Ljava/lang/String;)Ljava/lang/String;
    //   717: invokespecial 536	com/estrongs/fs/impl/pcs/PcsFileSystem:f	(Ljava/lang/String;)Ljava/lang/String;
    //   720: ldc_w 634
    //   723: ldc_w 636
    //   726: new 37	java/lang/StringBuilder
    //   729: dup
    //   730: invokespecial 40	java/lang/StringBuilder:<init>	()V
    //   733: ldc 62
    //   735: invokevirtual 46	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   738: iload 6
    //   740: invokevirtual 592	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   743: ldc_w 360
    //   746: invokevirtual 46	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   749: iload 6
    //   751: iload 8
    //   753: iadd
    //   754: invokevirtual 592	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   757: invokevirtual 66	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   760: aload_1
    //   761: invokespecial 639	com/estrongs/fs/impl/pcs/PcsFileSystem:b	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    //   764: astore_2
    //   765: aconst_null
    //   766: astore_1
    //   767: aload_2
    //   768: invokestatic 408	com/estrongs/android/pop/netfs/utils/HttpUtils:parseAsJSON	(Lorg/apache/http/HttpResponse;)Ljava/util/Map;
    //   771: astore_2
    //   772: aload_2
    //   773: astore_1
    //   774: aload_1
    //   775: ifnull +393 -> 1168
    //   778: aload_0
    //   779: aload_1
    //   780: invokespecial 642	com/estrongs/fs/impl/pcs/PcsFileSystem:a	(Ljava/util/Map;)V
    //   783: aload_1
    //   784: ldc_w 644
    //   787: invokeinterface 224 2 0
    //   792: astore_1
    //   793: goto -99 -> 694
    //   796: astore_2
    //   797: ldc 92
    //   799: ldc_w 646
    //   802: aload_2
    //   803: invokestatic 649	com/estrongs/android/util/l:c	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   806: goto -32 -> 774
    //   809: aload 12
    //   811: ldc_w 651
    //   814: invokevirtual 655	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   817: astore 12
    //   819: aload 12
    //   821: ifnull -384 -> 437
    //   824: aload 12
    //   826: arraylength
    //   827: iconst_2
    //   828: if_icmpne -391 -> 437
    //   831: aload 12
    //   833: iconst_0
    //   834: aaload
    //   835: ldc_w 657
    //   838: invokevirtual 573	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   841: ifeq -404 -> 437
    //   844: invokestatic 663	java/lang/System:currentTimeMillis	()J
    //   847: aload 12
    //   849: iconst_1
    //   850: aaload
    //   851: invokestatic 246	java/lang/Long:parseLong	(Ljava/lang/String;)J
    //   854: lsub
    //   855: ldc2_w 175
    //   858: ldiv
    //   859: ldc2_w 664
    //   862: ldiv
    //   863: ldc2_w 664
    //   866: ldiv
    //   867: ldc2_w 666
    //   870: ldiv
    //   871: lstore 10
    //   873: lload 10
    //   875: lconst_1
    //   876: lcmp
    //   877: ifge -440 -> 437
    //   880: lload 10
    //   882: lconst_0
    //   883: lcmp
    //   884: iflt -447 -> 437
    //   887: iconst_1
    //   888: istore 6
    //   890: goto -453 -> 437
    //   893: aload_1
    //   894: ifnull +7 -> 901
    //   897: aload_1
    //   898: invokevirtual 668	java/io/InputStreamReader:close	()V
    //   901: iload 6
    //   903: istore 9
    //   905: aload_2
    //   906: astore_1
    //   907: aload 4
    //   909: ifnull +14 -> 923
    //   912: aload 4
    //   914: invokevirtual 669	java/io/BufferedReader:close	()V
    //   917: aload_2
    //   918: astore_1
    //   919: iload 6
    //   921: istore 9
    //   923: iload 9
    //   925: ifeq +98 -> 1023
    //   928: aload_1
    //   929: ifnull +94 -> 1023
    //   932: aload 16
    //   934: aload_1
    //   935: putfield 670	com/estrongs/fs/impl/pcs/e:b	Ljava/lang/String;
    //   938: goto -663 -> 275
    //   941: astore_1
    //   942: iconst_0
    //   943: istore 6
    //   945: aconst_null
    //   946: astore_2
    //   947: aload 4
    //   949: astore_1
    //   950: aload 12
    //   952: astore 4
    //   954: aload_1
    //   955: ifnull +7 -> 962
    //   958: aload_1
    //   959: invokevirtual 668	java/io/InputStreamReader:close	()V
    //   962: iload 6
    //   964: istore 9
    //   966: aload_2
    //   967: astore_1
    //   968: aload 4
    //   970: ifnull -47 -> 923
    //   973: aload 4
    //   975: invokevirtual 669	java/io/BufferedReader:close	()V
    //   978: iload 6
    //   980: istore 9
    //   982: aload_2
    //   983: astore_1
    //   984: goto -61 -> 923
    //   987: astore_1
    //   988: iload 6
    //   990: istore 9
    //   992: aload_2
    //   993: astore_1
    //   994: goto -71 -> 923
    //   997: astore_2
    //   998: aconst_null
    //   999: astore_1
    //   1000: aconst_null
    //   1001: astore 4
    //   1003: aload_1
    //   1004: ifnull +7 -> 1011
    //   1007: aload_1
    //   1008: invokevirtual 668	java/io/InputStreamReader:close	()V
    //   1011: aload 4
    //   1013: ifnull +8 -> 1021
    //   1016: aload 4
    //   1018: invokevirtual 669	java/io/BufferedReader:close	()V
    //   1021: aload_2
    //   1022: athrow
    //   1023: new 596	java/io/File
    //   1026: dup
    //   1027: aload 17
    //   1029: invokespecial 597	java/io/File:<init>	(Ljava/lang/String;)V
    //   1032: invokevirtual 673	java/io/File:delete	()Z
    //   1035: pop
    //   1036: goto -761 -> 275
    //   1039: iload 7
    //   1041: ifeq +56 -> 1097
    //   1044: aload 14
    //   1046: invokevirtual 674	java/util/HashMap:size	()I
    //   1049: ifeq +13 -> 1062
    //   1052: aload 14
    //   1054: invokevirtual 674	java/util/HashMap:size	()I
    //   1057: iload 8
    //   1059: if_icmpge +38 -> 1097
    //   1062: aload_3
    //   1063: invokevirtual 677	java/util/HashMap:clear	()V
    //   1066: aload 5
    //   1068: ldc_w 558
    //   1071: invokevirtual 680	java/util/HashMap:remove	(Ljava/lang/Object;)Ljava/lang/Object;
    //   1074: pop
    //   1075: aload 5
    //   1077: ldc_w 564
    //   1080: invokevirtual 680	java/util/HashMap:remove	(Ljava/lang/Object;)Ljava/lang/Object;
    //   1083: pop
    //   1084: aload 5
    //   1086: ldc_w 682
    //   1089: iconst_1
    //   1090: invokestatic 687	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   1093: invokevirtual 562	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   1096: pop
    //   1097: aload 14
    //   1099: areturn
    //   1100: astore_1
    //   1101: goto -200 -> 901
    //   1104: astore_1
    //   1105: iload 6
    //   1107: istore 9
    //   1109: aload_2
    //   1110: astore_1
    //   1111: goto -188 -> 923
    //   1114: astore_1
    //   1115: goto -153 -> 962
    //   1118: astore_1
    //   1119: goto -108 -> 1011
    //   1122: astore_1
    //   1123: goto -102 -> 1021
    //   1126: astore_2
    //   1127: aconst_null
    //   1128: astore 4
    //   1130: goto -127 -> 1003
    //   1133: astore_2
    //   1134: goto -131 -> 1003
    //   1137: astore_2
    //   1138: iconst_0
    //   1139: istore 6
    //   1141: aconst_null
    //   1142: astore_2
    //   1143: aload 12
    //   1145: astore 4
    //   1147: goto -193 -> 954
    //   1150: astore 12
    //   1152: goto -198 -> 954
    //   1155: iconst_0
    //   1156: istore 6
    //   1158: aconst_null
    //   1159: astore_2
    //   1160: aconst_null
    //   1161: astore_1
    //   1162: aconst_null
    //   1163: astore 4
    //   1165: goto -272 -> 893
    //   1168: aconst_null
    //   1169: astore_1
    //   1170: goto -476 -> 694
    //   1173: iconst_0
    //   1174: istore 7
    //   1176: aconst_null
    //   1177: astore_3
    //   1178: goto -985 -> 193
    //   1181: iconst_0
    //   1182: istore 7
    //   1184: aconst_null
    //   1185: astore_3
    //   1186: goto -993 -> 193
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	1189	0	this	PcsFileSystem
    //   0	1189	1	paramString1	String
    //   0	1189	2	paramString2	String
    //   0	1189	3	paramString3	String
    //   0	1189	4	paramString4	String
    //   0	1189	5	paramHashMap	HashMap<String, Object>
    //   15	1142	6	i1	int
    //   191	992	7	i2	int
    //   20	1040	8	i3	int
    //   903	205	9	i4	int
    //   871	10	10	l1	long
    //   352	792	12	localObject	Object
    //   1150	1	12	localException	Exception
    //   5	708	13	str1	String
    //   257	841	14	localHashMap	HashMap
    //   273	14	15	localIterator	Iterator
    //   298	635	16	locale	e
    //   388	640	17	str2	String
    // Exception table:
    //   from	to	target	type
    //   767	772	796	java/lang/Exception
    //   390	422	941	java/lang/Exception
    //   973	978	987	java/lang/Exception
    //   390	422	997	finally
    //   897	901	1100	java/lang/Exception
    //   912	917	1104	java/lang/Exception
    //   958	962	1114	java/lang/Exception
    //   1007	1011	1118	java/lang/Exception
    //   1016	1021	1122	java/lang/Exception
    //   422	432	1126	finally
    //   437	444	1133	finally
    //   449	473	1133	finally
    //   809	819	1133	finally
    //   824	873	1133	finally
    //   422	432	1137	java/lang/Exception
    //   437	444	1150	java/lang/Exception
    //   449	473	1150	java/lang/Exception
    //   809	819	1150	java/lang/Exception
    //   824	873	1150	java/lang/Exception
  }
  
  private HashMap<String, e> a(String paramString1, String paramString2, String paramString3, HashMap<String, Object> paramHashMap)
  {
    return a(paramString1, paramString2, paramString3, null, paramHashMap);
  }
  
  private HttpResponse a(String paramString1, String paramString2, int paramInt1, int paramInt2)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new BasicNameValuePair("method", "listbycategory"));
    localArrayList.add(new BasicNameValuePair("category", paramString1));
    localArrayList.add(new BasicNameValuePair("pn", "" + paramInt1));
    localArrayList.add(new BasicNameValuePair("limit", "" + paramInt2));
    if (paramString2.startsWith("auth_code:")) {
      localArrayList.add(new BasicNameValuePair("access_token", g(paramString2)));
    }
    for (;;)
    {
      paramString1 = new HttpGet("https://pcs.baidu.com/rest/2.0/pcs/file?" + a(localArrayList));
      if (paramString2.startsWith("bduss:")) {
        paramString1.addHeader("Cookie", "BDUSS=" + g(paramString2));
      }
      return a(paramString1);
      if (paramString2.startsWith("bduss:")) {
        localArrayList.add(new BasicNameValuePair("app_id", "266719"));
      }
    }
  }
  
  private HttpResponse a(HttpRequestBase paramHttpRequestBase)
  {
    if (paramHttpRequestBase != null)
    {
      HttpClient localHttpClient = a();
      try
      {
        paramHttpRequestBase = localHttpClient.execute(paramHttpRequestBase);
        return paramHttpRequestBase;
      }
      catch (Exception paramHttpRequestBase)
      {
        paramHttpRequestBase.printStackTrace();
      }
    }
    n = "Network error";
    return null;
  }
  
  public static HttpClient a()
  {
    return a(true);
  }
  
  public static HttpClient a(boolean paramBoolean)
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
      if (!paramBoolean) {
        HttpClientParams.setRedirecting((HttpParams)localObject1, false);
      }
      localObject1 = new DefaultHttpClient((ClientConnectionManager)localObject2, (HttpParams)localObject1);
      return (HttpClient)localObject1;
    }
    catch (Exception localException) {}
    return new DefaultHttpClient();
  }
  
  private JSONArray a(int paramInt1, int paramInt2)
  {
    JSONArray localJSONArray = new JSONArray();
    int i1 = paramInt1;
    while ((i1 < l.length) && (i1 < paramInt1 + paramInt2))
    {
      JSONObject localJSONObject = new JSONObject();
      localJSONObject.put("path", "" + l[i1]);
      localJSONObject.put("size", Integer.valueOf(0));
      localJSONObject.put("isdir", Integer.valueOf(1));
      localJSONObject.put("mtime", Integer.valueOf(0));
      localJSONObject.put("md5", "");
      localJSONObject.put("fs_id", l[i1].substring(1));
      localJSONArray.add(localJSONObject);
      i1 += 1;
    }
    return localJSONArray;
  }
  
  private JSONArray a(JSONArray paramJSONArray, String paramString1, String paramString2, int paramInt1, int paramInt2)
  {
    paramJSONArray = a(paramString1, paramString2, paramInt1, paramInt2);
    do
    {
      try
      {
        paramJSONArray = HttpUtils.parseAsJSON(paramJSONArray);
        a(paramJSONArray);
        paramString1 = (JSONArray)paramJSONArray.get("list");
        if (paramString1 == null)
        {
          paramJSONArray = null;
          return paramJSONArray;
        }
      }
      catch (IOException paramJSONArray)
      {
        return null;
      }
      paramJSONArray = paramString1;
    } while ((paramString1 instanceof JSONArray));
    return null;
  }
  
  private void a(Map paramMap)
  {
    if (paramMap.get("ERROR") != null)
    {
      JSONParser localJSONParser = new JSONParser();
      try
      {
        paramMap = (JSONObject)localJSONParser.parse(paramMap.get("RESULT").toString());
        if (paramMap != null)
        {
          paramMap = paramMap.get("error_code");
          if (paramMap != null) {
            throw new PcsFileSystem.PcsFileSystemException(bk.a(paramMap));
          }
        }
      }
      catch (ParseException paramMap)
      {
        for (;;)
        {
          paramMap.printStackTrace();
          paramMap = null;
        }
      }
    }
  }
  
  private boolean a(String paramString1, h paramh, String paramString2)
  {
    long l1 = paramh.length();
    if (l1 < 262144L) {
      return false;
    }
    String str = paramh.getAbsolutePath();
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new BasicNameValuePair("method", "rapidupload"));
    if (paramString1.startsWith("auth_code:"))
    {
      localArrayList.add(new BasicNameValuePair("access_token", g(paramString1)));
      if (paramString2 != null) {
        localArrayList.add(new BasicNameValuePair("path", paramString2));
      }
      if (!ap.ci(paramh.getAbsolutePath())) {
        break label394;
      }
      localArrayList.add(new BasicNameValuePair("content-length", "" + l1));
      localArrayList.add(new BasicNameValuePair("content-md5", String.valueOf(paramh.getExtra("content-md5"))));
      localArrayList.add(new BasicNameValuePair("slice-md5", String.valueOf(paramh.getExtra("slice-md5"))));
      localArrayList.add(new BasicNameValuePair("content-crc32", String.valueOf(paramh.getExtra("content-crc32"))));
    }
    for (;;)
    {
      localArrayList.add(new BasicNameValuePair("ondup", "overwrite"));
      paramh = new HttpPost("https://pcs.baidu.com/rest/2.0/pcs/file?" + a(localArrayList));
      if (paramString1.startsWith("bduss:")) {
        paramh.addHeader("Cookie", "BDUSS=" + g(paramString1));
      }
      paramString1 = a(paramh);
      try
      {
        paramString1 = HttpUtils.parseAsJSON(paramString1);
        if (a(paramString1, "rapidupload")) {
          break label508;
        }
        l.e("Pcs", "move failed");
        return false;
      }
      catch (IOException paramString1)
      {
        paramString1.printStackTrace();
        return false;
      }
      if (!paramString1.startsWith("bduss:")) {
        break;
      }
      localArrayList.add(new BasicNameValuePair("app_id", "266719"));
      break;
      label394:
      localArrayList.add(new BasicNameValuePair("content-length", "" + l1));
      localArrayList.add(new BasicNameValuePair("content-md5", a(str, l1)));
      localArrayList.add(new BasicNameValuePair("slice-md5", a(str, 262144L)));
      localArrayList.add(new BasicNameValuePair("content-crc32", k(str)));
    }
    label508:
    return true;
  }
  
  private boolean a(Map paramMap, String paramString)
  {
    if (paramMap.get("ERROR") != null) {
      n = "Unknow error";
    }
    try
    {
      paramMap = (JSONObject)new JSONParser().parse(paramMap.get("RESULT").toString());
      if (paramMap != null)
      {
        Object localObject = paramMap.get("error_code");
        if (localObject != null)
        {
          int i1 = bk.a(localObject);
          n = (paramMap.get("error_msg").toString() + " (errorcode:" + i1 + ")");
          if (o != null) {
            o.a(paramString, i1, n);
          }
        }
      }
    }
    catch (Exception paramMap)
    {
      for (;;) {}
    }
    return false;
    return true;
  }
  
  public static String b()
  {
    return "https://openapi.baidu.com" + HttpUtils.buildGetUrl("/oauth/2.0/authorize", new Object[] { "response_type", "code", "client_id", "4YchBAkgxfWug3KRYCGOv8EK", "redirect_uri", "http://www.estrongs.com", "display", "mobile", "scope", "basic netdisk" }, true);
  }
  
  public static String b(String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new BasicNameValuePair("tpl", "es"));
    if (j(paramString, "os_type").equals("sinaweibo")) {
      localArrayList.add(new BasicNameValuePair("type", "2"));
    }
    for (;;)
    {
      localArrayList.add(new BasicNameValuePair("u", "www.estongs.com"));
      localArrayList.add(new BasicNameValuePair("display", "native"));
      localArrayList.add(new BasicNameValuePair("act", "implicit"));
      return "http://passport.baidu.com/phoenix/account/startlogin?" + a(localArrayList);
      if (j(paramString, "os_type").equals("qq")) {
        localArrayList.add(new BasicNameValuePair("type", "15"));
      } else if (j(paramString, "os_type").equals("renren")) {
        localArrayList.add(new BasicNameValuePair("type", "1"));
      }
    }
  }
  
  private HttpResponse b(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    ArrayList localArrayList = new ArrayList();
    if (paramString1 != null) {
      localArrayList.add(new BasicNameValuePair("path", paramString1));
    }
    localArrayList.add(new BasicNameValuePair("method", "list"));
    if (paramString5.startsWith("auth_code:")) {
      localArrayList.add(new BasicNameValuePair("access_token", g(paramString5)));
    }
    for (;;)
    {
      if ((paramString2 != null) && ((paramString2.equals("time")) || (paramString2.equals("name")) || (paramString2.equals("size")))) {
        localArrayList.add(new BasicNameValuePair("by", paramString2));
      }
      if ((paramString3 != null) && ((paramString3.equals("asc")) || (paramString3.equals("desc")))) {
        localArrayList.add(new BasicNameValuePair("order", paramString3));
      }
      if (paramString4 != null) {
        localArrayList.add(new BasicNameValuePair("limit", paramString4));
      }
      paramString1 = new HttpGet("https://pcs.baidu.com/rest/2.0/pcs/file?" + a(localArrayList));
      if (paramString5.startsWith("bduss:")) {
        paramString1.addHeader("Cookie", "BDUSS=" + g(paramString5));
      }
      return a(paramString1);
      if (paramString5.startsWith("bduss:")) {
        localArrayList.add(new BasicNameValuePair("app_id", "266719"));
      }
    }
  }
  
  private void b(Map paramMap)
  {
    if (!a(paramMap, "list_task"))
    {
      l.b("Pcs", "addDownload failed: " + paramMap);
      JSONParser localJSONParser = new JSONParser();
      Object localObject = new HashMap();
      try
      {
        paramMap = (Map)localJSONParser.parse(String.valueOf(paramMap.get("RESULT")));
        localObject = new PcsFileSystem.PcsFileSystemException();
        errorCode = bk.a(paramMap.get("error_code"));
        throw ((Throwable)localObject);
      }
      catch (ParseException paramMap)
      {
        for (;;)
        {
          paramMap.printStackTrace();
          paramMap = (Map)localObject;
        }
      }
    }
  }
  
  private String c()
  {
    String str2 = ap.a(new File(com.estrongs.android.pop.a.b), ".shares", true);
    String str1 = str2;
    if (str2 == null) {
      str1 = ap.a(FexApplication.a().getCacheDir(), ".shares", false);
    }
    return str1;
  }
  
  public static String d(String paramString)
  {
    try
    {
      HttpPost localHttpPost = new HttpPost("http://dwz.cn/create.php");
      HttpUtils.setParameters(localHttpPost, new String[] { "url", paramString });
      paramString = HttpUtils.parseAsJSON(a().execute(localHttpPost));
      if (HttpUtils.getInt(paramString, "status") != 0) {
        return null;
      }
      paramString = (String)paramString.get("tinyurl");
      return paramString;
    }
    catch (Exception paramString) {}
    return null;
  }
  
  private boolean d()
  {
    ??? = new HashMap();
    HashMap localHashMap1 = new HashMap();
    try
    {
      ??? = new File(k + "/" + "Pcs.cfg");
      if (((File)???).exists())
      {
        ??? = new DataInputStream(new FileInputStream((File)???));
        BufferedReader localBufferedReader = new BufferedReader(new InputStreamReader((InputStream)???));
        for (;;)
        {
          Object localObject4 = localBufferedReader.readLine();
          if (localObject4 == null) {
            break;
          }
          localObject4 = ((String)localObject4).split("#####");
          ???.put(localObject4[0], localObject4[1]);
          localHashMap1.put(localObject4[0], localObject4[2]);
        }
        ((DataInputStream)???).close();
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      return false;
    }
    synchronized (f)
    {
      f = ???;
      synchronized (h)
      {
        h = localException;
        return true;
      }
    }
  }
  
  private boolean d(String paramString1, String paramString2, String paramString3)
  {
    if ((paramString2 != null) && (paramString3 != null) && (paramString2.equals(paramString3))) {
      return false;
    }
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new BasicNameValuePair("method", "move"));
    if (paramString1.startsWith("auth_code:")) {
      localArrayList.add(new BasicNameValuePair("access_token", g(paramString1)));
    }
    for (;;)
    {
      if (paramString2 != null) {
        localArrayList.add(new BasicNameValuePair("from", paramString2));
      }
      if (paramString3 != null) {
        localArrayList.add(new BasicNameValuePair("to", paramString3));
      }
      paramString2 = new HttpPost("https://pcs.baidu.com/rest/2.0/pcs/file?" + a(localArrayList));
      if (paramString1.startsWith("bduss:")) {
        paramString2.addHeader("Cookie", "BDUSS=" + g(paramString1));
      }
      paramString1 = a(paramString2);
      try
      {
        paramString1 = HttpUtils.parseAsJSON(paramString1);
        if (a(paramString1, "move")) {
          break;
        }
        l.e("Pcs", "move failed");
        return false;
      }
      catch (IOException paramString1)
      {
        paramString1.printStackTrace();
        return false;
      }
      if (paramString1.startsWith("bduss:")) {
        localArrayList.add(new BasicNameValuePair("app_id", "266719"));
      }
    }
    return true;
  }
  
  public static Object e(String paramString1, String paramString2)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new BasicNameValuePair("ptpl", "esfb"));
    localArrayList.add(new BasicNameValuePair("username", paramString2));
    localArrayList.add(new BasicNameValuePair("bduss", paramString1));
    paramString1 = new HttpPost("https://openapi.baidu.com/yunid/user/bindingcaptcha");
    paramString2 = a();
    try
    {
      paramString1.setEntity(new UrlEncodedFormEntity(localArrayList, "utf-8"));
      paramString1 = HttpUtils.parseAsJSON(paramString2.execute(paramString1));
      return paramString1;
    }
    catch (Exception paramString1)
    {
      paramString1.printStackTrace();
    }
    return null;
  }
  
  public static String e(String paramString)
  {
    try
    {
      HttpPost localHttpPost = new HttpPost("http://dwz.cn/query.php");
      HttpUtils.setParameters(localHttpPost, new String[] { "tinyurl", paramString });
      paramString = HttpUtils.parseAsJSON(a().execute(localHttpPost));
      if (HttpUtils.getInt(paramString, "status") != 0) {
        return null;
      }
      paramString = (String)paramString.get("longurl");
      return paramString;
    }
    catch (Exception paramString)
    {
      paramString.printStackTrace();
    }
    return null;
  }
  
  private boolean e()
  {
    synchronized (f)
    {
      Object localObject1 = new File(k + "/" + "Pcs.cfg");
      ((File)localObject1).delete();
      try
      {
        localObject1 = new BufferedWriter(new FileWriter((File)localObject1));
        Iterator localIterator = f.entrySet().iterator();
        while (localIterator.hasNext())
        {
          Object localObject3 = (Map.Entry)localIterator.next();
          String str1 = (String)((Map.Entry)localObject3).getKey();
          localObject3 = (String)((Map.Entry)localObject3).getValue();
          String str2 = (String)h.get(str1);
          ((BufferedWriter)localObject1).write(str1 + "#####" + (String)localObject3 + "#####" + str2 + "\r\n");
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
  
  private boolean e(String paramString1, String paramString2, String paramString3)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new BasicNameValuePair("method", "copy"));
    if (paramString1.startsWith("auth_code:")) {
      localArrayList.add(new BasicNameValuePair("access_token", g(paramString1)));
    }
    for (;;)
    {
      if (paramString2 != null) {
        localArrayList.add(new BasicNameValuePair("from", paramString2));
      }
      if (paramString3 != null) {
        localArrayList.add(new BasicNameValuePair("to", paramString3));
      }
      paramString2 = new HttpPost("https://pcs.baidu.com/rest/2.0/pcs/file?" + a(localArrayList));
      if (paramString1.startsWith("bduss:")) {
        paramString2.addHeader("Cookie", "BDUSS=" + g(paramString1));
      }
      paramString1 = a(paramString2);
      try
      {
        paramString1 = HttpUtils.parseAsJSON(paramString1);
        if (a(paramString1, "copy")) {
          break;
        }
        l.e("Pcs", "copy failed");
        return false;
      }
      catch (IOException paramString1)
      {
        paramString1.printStackTrace();
        return false;
      }
      if (paramString1.startsWith("bduss:")) {
        localArrayList.add(new BasicNameValuePair("app_id", "266719"));
      }
    }
    return true;
  }
  
  private static native String encryptDeviceId(String paramString1, String paramString2);
  
  private String f(String paramString)
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
  
  /* Error */
  private String f(String paramString1, String arg2)
  {
    // Byte code:
    //   0: aload_0
    //   1: ldc_w 1065
    //   4: putfield 134	com/estrongs/fs/impl/pcs/PcsFileSystem:n	Ljava/lang/String;
    //   7: aload_0
    //   8: getfield 101	com/estrongs/fs/impl/pcs/PcsFileSystem:f	Ljava/util/HashMap;
    //   11: astore_2
    //   12: aload_2
    //   13: monitorenter
    //   14: aload_0
    //   15: getfield 101	com/estrongs/fs/impl/pcs/PcsFileSystem:f	Ljava/util/HashMap;
    //   18: aload_1
    //   19: invokevirtual 553	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   22: checkcast 70	java/lang/String
    //   25: astore_3
    //   26: aload_2
    //   27: monitorexit
    //   28: aload_3
    //   29: ifnull +10 -> 39
    //   32: aload_3
    //   33: areturn
    //   34: astore_1
    //   35: aload_2
    //   36: monitorexit
    //   37: aload_1
    //   38: athrow
    //   39: aload_0
    //   40: getfield 105	com/estrongs/fs/impl/pcs/PcsFileSystem:h	Ljava/util/HashMap;
    //   43: astore_3
    //   44: aload_3
    //   45: monitorenter
    //   46: aload_0
    //   47: getfield 105	com/estrongs/fs/impl/pcs/PcsFileSystem:h	Ljava/util/HashMap;
    //   50: aload_1
    //   51: invokevirtual 553	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   54: checkcast 70	java/lang/String
    //   57: astore_2
    //   58: aload_3
    //   59: monitorexit
    //   60: aload_2
    //   61: ifnonnull +10 -> 71
    //   64: aconst_null
    //   65: areturn
    //   66: astore_1
    //   67: aload_3
    //   68: monitorexit
    //   69: aload_1
    //   70: athrow
    //   71: new 304	org/apache/http/client/methods/HttpGet
    //   74: dup
    //   75: new 37	java/lang/StringBuilder
    //   78: dup
    //   79: invokespecial 40	java/lang/StringBuilder:<init>	()V
    //   82: ldc_w 895
    //   85: invokevirtual 46	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   88: ldc_w 1067
    //   91: bipush 8
    //   93: anewarray 4	java/lang/Object
    //   96: dup
    //   97: iconst_0
    //   98: ldc_w 1069
    //   101: aastore
    //   102: dup
    //   103: iconst_1
    //   104: ldc_w 1071
    //   107: aastore
    //   108: dup
    //   109: iconst_2
    //   110: ldc_w 1071
    //   113: aastore
    //   114: dup
    //   115: iconst_3
    //   116: aload_2
    //   117: aastore
    //   118: dup
    //   119: iconst_4
    //   120: ldc_w 903
    //   123: aastore
    //   124: dup
    //   125: iconst_5
    //   126: ldc_w 905
    //   129: aastore
    //   130: dup
    //   131: bipush 6
    //   133: ldc_w 1073
    //   136: aastore
    //   137: dup
    //   138: bipush 7
    //   140: ldc_w 1075
    //   143: aastore
    //   144: invokestatic 1078	com/estrongs/android/pop/netfs/utils/HttpUtils:buildGetUrl	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   147: invokevirtual 46	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   150: invokevirtual 66	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   153: invokespecial 312	org/apache/http/client/methods/HttpGet:<init>	(Ljava/lang/String;)V
    //   156: astore_3
    //   157: invokestatic 324	com/estrongs/fs/impl/pcs/PcsFileSystem:a	()Lorg/apache/http/client/HttpClient;
    //   160: aload_3
    //   161: invokeinterface 330 2 0
    //   166: astore_3
    //   167: aload_3
    //   168: invokestatic 408	com/estrongs/android/pop/netfs/utils/HttpUtils:parseAsJSON	(Lorg/apache/http/HttpResponse;)Ljava/util/Map;
    //   171: astore 4
    //   173: aload_3
    //   174: invokeinterface 336 1 0
    //   179: ifnull +14 -> 193
    //   182: aload_3
    //   183: invokeinterface 336 1 0
    //   188: invokeinterface 1081 1 0
    //   193: aload_0
    //   194: aload 4
    //   196: ldc_w 1071
    //   199: invokespecial 511	com/estrongs/fs/impl/pcs/PcsFileSystem:a	(Ljava/util/Map;Ljava/lang/String;)Z
    //   202: ifne +13 -> 215
    //   205: ldc 92
    //   207: ldc_w 1083
    //   210: invokestatic 517	com/estrongs/android/util/l:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   213: aconst_null
    //   214: areturn
    //   215: aload 4
    //   217: ldc_w 290
    //   220: invokeinterface 224 2 0
    //   225: checkcast 70	java/lang/String
    //   228: astore_3
    //   229: aload_3
    //   230: ifnonnull +13 -> 243
    //   233: ldc 92
    //   235: ldc_w 1085
    //   238: invokestatic 517	com/estrongs/android/util/l:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   241: aconst_null
    //   242: areturn
    //   243: aload_0
    //   244: getfield 101	com/estrongs/fs/impl/pcs/PcsFileSystem:f	Ljava/util/HashMap;
    //   247: astore 5
    //   249: aload 5
    //   251: monitorenter
    //   252: aload_0
    //   253: getfield 101	com/estrongs/fs/impl/pcs/PcsFileSystem:f	Ljava/util/HashMap;
    //   256: aload_1
    //   257: new 37	java/lang/StringBuilder
    //   260: dup
    //   261: invokespecial 40	java/lang/StringBuilder:<init>	()V
    //   264: ldc_w 288
    //   267: invokevirtual 46	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   270: aload_3
    //   271: invokevirtual 46	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   274: invokevirtual 66	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   277: invokevirtual 562	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   280: pop
    //   281: aload 5
    //   283: monitorexit
    //   284: aload 4
    //   286: ldc_w 1071
    //   289: invokeinterface 224 2 0
    //   294: checkcast 70	java/lang/String
    //   297: astore 4
    //   299: aload 4
    //   301: ifnull +32 -> 333
    //   304: aload 4
    //   306: aload_2
    //   307: invokevirtual 573	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   310: ifne +23 -> 333
    //   313: aload_0
    //   314: getfield 105	com/estrongs/fs/impl/pcs/PcsFileSystem:h	Ljava/util/HashMap;
    //   317: astore_2
    //   318: aload_2
    //   319: monitorenter
    //   320: aload_0
    //   321: getfield 105	com/estrongs/fs/impl/pcs/PcsFileSystem:h	Ljava/util/HashMap;
    //   324: aload_1
    //   325: aload 4
    //   327: invokevirtual 562	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   330: pop
    //   331: aload_2
    //   332: monitorexit
    //   333: aload_0
    //   334: invokespecial 1087	com/estrongs/fs/impl/pcs/PcsFileSystem:e	()Z
    //   337: pop
    //   338: aload_3
    //   339: areturn
    //   340: astore_1
    //   341: aload 5
    //   343: monitorexit
    //   344: aload_1
    //   345: athrow
    //   346: astore_1
    //   347: aload_1
    //   348: invokevirtual 269	java/lang/Exception:printStackTrace	()V
    //   351: aconst_null
    //   352: areturn
    //   353: astore_1
    //   354: aload_2
    //   355: monitorexit
    //   356: aload_1
    //   357: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	358	0	this	PcsFileSystem
    //   0	358	1	paramString1	String
    //   25	314	3	localObject1	Object
    //   171	155	4	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   14	28	34	finally
    //   35	37	34	finally
    //   46	60	66	finally
    //   67	69	66	finally
    //   252	284	340	finally
    //   341	344	340	finally
    //   71	193	346	java/lang/Exception
    //   193	213	346	java/lang/Exception
    //   215	229	346	java/lang/Exception
    //   233	241	346	java/lang/Exception
    //   243	252	346	java/lang/Exception
    //   284	299	346	java/lang/Exception
    //   304	320	346	java/lang/Exception
    //   333	338	346	java/lang/Exception
    //   344	346	346	java/lang/Exception
    //   356	358	346	java/lang/Exception
    //   320	333	353	finally
    //   354	356	353	finally
  }
  
  private String g(String paramString)
  {
    String str;
    if (paramString.startsWith("bduss:")) {
      str = bk.d(paramString.substring("bduss:".length())).split("\n")[0];
    }
    do
    {
      return str;
      str = paramString;
    } while (!paramString.startsWith("auth_code:"));
    return bk.d(paramString.substring("auth_code:".length())).split("\n")[0];
  }
  
  private String g(String paramString1, String paramString2)
  {
    if (paramString2.startsWith("/files")) {
      return paramString2 + "/" + ap.d(paramString1);
    }
    return paramString2 + "/" + paramString1.replace("/", ">");
  }
  
  private int h(String paramString)
  {
    int i1 = 3;
    if (paramString.startsWith("bduss:"))
    {
      paramString = bk.d(paramString.substring("bduss:".length())).split("\n");
      if ((paramString.length == 4) && (paramString[3].equals("临时用户"))) {
        i1 = 1;
      }
      do
      {
        return i1;
        if ((paramString.length == 5) && (paramString[4].equals("1"))) {
          return 2;
        }
      } while ((paramString.length == 5) && (paramString[4].equals("2")));
      if ((paramString.length == 5) && (paramString[4].equals("15"))) {
        return 4;
      }
      return 0;
    }
    return 0;
  }
  
  private String h(String paramString1, String paramString2)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new BasicNameValuePair("method", "mkdir"));
    if (paramString1.startsWith("auth_code:")) {
      localArrayList.add(new BasicNameValuePair("access_token", g(paramString1)));
    }
    for (;;)
    {
      if (paramString2 != null) {
        localArrayList.add(new BasicNameValuePair("path", paramString2));
      }
      paramString2 = new HttpPost("https://pcs.baidu.com/rest/2.0/pcs/file?" + a(localArrayList));
      if (paramString1.startsWith("bduss:")) {
        paramString2.addHeader("Cookie", "BDUSS=" + g(paramString1));
      }
      paramString1 = a(paramString2);
      try
      {
        paramString1 = HttpUtils.parseAsJSON(paramString1);
        if (a(paramString1, "mkdir")) {
          break;
        }
        l.e("Pcs", "mkdir failed");
        return null;
      }
      catch (Exception paramString1)
      {
        paramString1.printStackTrace();
        return null;
      }
      if (paramString1.startsWith("bduss:")) {
        localArrayList.add(new BasicNameValuePair("app_id", "266719"));
      }
    }
    paramString1 = paramString1.get("path");
    if (paramString1 == null)
    {
      l.e("Pcs", "mkdir no data");
      return null;
    }
    return (String)paramString1;
  }
  
  private String i(String paramString)
  {
    if (paramString.equals("/")) {}
    int i1;
    do
    {
      return null;
      paramString = f(paramString);
      i1 = paramString.lastIndexOf('/');
    } while (i1 < 0);
    return paramString.substring(i1 + 1);
  }
  
  private boolean i(String paramString1, String paramString2)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new BasicNameValuePair("method", "delete"));
    if (paramString1.startsWith("auth_code:")) {
      localArrayList.add(new BasicNameValuePair("access_token", g(paramString1)));
    }
    for (;;)
    {
      if (paramString2 != null) {
        localArrayList.add(new BasicNameValuePair("path", paramString2));
      }
      paramString2 = new HttpPost("https://pcs.baidu.com/rest/2.0/pcs/file?" + a(localArrayList));
      if (paramString1.startsWith("bduss:")) {
        paramString2.addHeader("Cookie", "BDUSS=" + g(paramString1));
      }
      paramString1 = a(paramString2);
      try
      {
        paramString1 = HttpUtils.parseAsJSON(paramString1);
        if (a(paramString1, "delete")) {
          break;
        }
        l.e("Pcs", "delete failed");
        return false;
      }
      catch (IOException paramString1)
      {
        paramString1.printStackTrace();
        return false;
      }
      if (paramString1.startsWith("bduss:")) {
        localArrayList.add(new BasicNameValuePair("app_id", "266719"));
      }
    }
    return true;
  }
  
  private static String j(String paramString1, String paramString2)
  {
    paramString1 = paramString1.split("&");
    if (paramString1 != null)
    {
      int i1 = 0;
      while (i1 < paramString1.length)
      {
        String[] arrayOfString = paramString1[i1].split("=");
        if ((arrayOfString.length == 2) && (arrayOfString[0].equals(paramString2))) {
          return arrayOfString[1];
        }
        i1 += 1;
      }
    }
    return "";
  }
  
  private boolean j(String paramString)
  {
    int i1 = 1;
    while (i1 < l.length)
    {
      if (paramString.equals(l[i1])) {
        return true;
      }
      i1 += 1;
    }
    return false;
  }
  
  /* Error */
  private static String k(String paramString)
  {
    // Byte code:
    //   0: new 446	java/io/FileInputStream
    //   3: dup
    //   4: aload_0
    //   5: invokespecial 447	java/io/FileInputStream:<init>	(Ljava/lang/String;)V
    //   8: astore_3
    //   9: aload_3
    //   10: astore_2
    //   11: new 1112	java/util/zip/CRC32
    //   14: dup
    //   15: invokespecial 1113	java/util/zip/CRC32:<init>	()V
    //   18: astore_0
    //   19: aload_3
    //   20: astore_2
    //   21: ldc_w 453
    //   24: newarray <illegal type>
    //   26: astore 4
    //   28: aload_3
    //   29: astore_2
    //   30: aload_3
    //   31: aload 4
    //   33: invokevirtual 1118	java/io/InputStream:read	([B)I
    //   36: istore_1
    //   37: iload_1
    //   38: iconst_m1
    //   39: if_icmpeq +41 -> 80
    //   42: aload_3
    //   43: astore_2
    //   44: aload_0
    //   45: aload 4
    //   47: iconst_0
    //   48: iload_1
    //   49: invokevirtual 1122	java/util/zip/CRC32:update	([BII)V
    //   52: goto -24 -> 28
    //   55: astore 4
    //   57: aconst_null
    //   58: astore_0
    //   59: aload_3
    //   60: astore_2
    //   61: aload 4
    //   63: invokevirtual 1123	java/io/FileNotFoundException:printStackTrace	()V
    //   66: aload_0
    //   67: astore_2
    //   68: aload_3
    //   69: ifnull +9 -> 78
    //   72: aload_3
    //   73: invokevirtual 1124	java/io/InputStream:close	()V
    //   76: aload_0
    //   77: astore_2
    //   78: aload_2
    //   79: areturn
    //   80: aload_3
    //   81: astore_2
    //   82: aload_0
    //   83: invokevirtual 1126	java/util/zip/CRC32:getValue	()J
    //   86: invokestatic 1130	java/lang/Long:toHexString	(J)Ljava/lang/String;
    //   89: astore_0
    //   90: aload_3
    //   91: astore_2
    //   92: aload_0
    //   93: invokevirtual 416	java/lang/String:length	()I
    //   96: bipush 8
    //   98: if_icmpge +33 -> 131
    //   101: aload_3
    //   102: astore_2
    //   103: new 37	java/lang/StringBuilder
    //   106: dup
    //   107: invokespecial 40	java/lang/StringBuilder:<init>	()V
    //   110: ldc_w 474
    //   113: invokevirtual 46	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   116: aload_0
    //   117: invokevirtual 46	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   120: invokevirtual 66	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   123: astore 4
    //   125: aload 4
    //   127: astore_0
    //   128: goto -38 -> 90
    //   131: aload_0
    //   132: astore_2
    //   133: aload_3
    //   134: ifnull -56 -> 78
    //   137: aload_3
    //   138: invokevirtual 1124	java/io/InputStream:close	()V
    //   141: aload_0
    //   142: areturn
    //   143: astore_2
    //   144: aload_2
    //   145: invokevirtual 878	java/io/IOException:printStackTrace	()V
    //   148: aload_0
    //   149: areturn
    //   150: astore_2
    //   151: aload_2
    //   152: invokevirtual 878	java/io/IOException:printStackTrace	()V
    //   155: aload_0
    //   156: areturn
    //   157: astore 4
    //   159: aconst_null
    //   160: astore_3
    //   161: aconst_null
    //   162: astore_0
    //   163: aload_3
    //   164: astore_2
    //   165: aload 4
    //   167: invokevirtual 878	java/io/IOException:printStackTrace	()V
    //   170: aload_0
    //   171: astore_2
    //   172: aload_3
    //   173: ifnull -95 -> 78
    //   176: aload_3
    //   177: invokevirtual 1124	java/io/InputStream:close	()V
    //   180: aload_0
    //   181: areturn
    //   182: astore_2
    //   183: aload_2
    //   184: invokevirtual 878	java/io/IOException:printStackTrace	()V
    //   187: aload_0
    //   188: areturn
    //   189: astore_0
    //   190: aconst_null
    //   191: astore_2
    //   192: aload_2
    //   193: ifnull +7 -> 200
    //   196: aload_2
    //   197: invokevirtual 1124	java/io/InputStream:close	()V
    //   200: aload_0
    //   201: athrow
    //   202: astore_2
    //   203: aload_2
    //   204: invokevirtual 878	java/io/IOException:printStackTrace	()V
    //   207: goto -7 -> 200
    //   210: astore_0
    //   211: goto -19 -> 192
    //   214: astore 4
    //   216: aconst_null
    //   217: astore_0
    //   218: goto -55 -> 163
    //   221: astore 4
    //   223: goto -60 -> 163
    //   226: astore 4
    //   228: aconst_null
    //   229: astore_3
    //   230: aconst_null
    //   231: astore_0
    //   232: goto -173 -> 59
    //   235: astore 4
    //   237: goto -178 -> 59
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	240	0	paramString	String
    //   36	13	1	i1	int
    //   10	123	2	localObject1	Object
    //   143	2	2	localIOException1	IOException
    //   150	2	2	localIOException2	IOException
    //   164	8	2	localObject2	Object
    //   182	2	2	localIOException3	IOException
    //   191	6	2	localObject3	Object
    //   202	2	2	localIOException4	IOException
    //   8	222	3	localFileInputStream	FileInputStream
    //   26	20	4	arrayOfByte	byte[]
    //   55	7	4	localFileNotFoundException1	java.io.FileNotFoundException
    //   123	3	4	str	String
    //   157	9	4	localIOException5	IOException
    //   214	1	4	localIOException6	IOException
    //   221	1	4	localIOException7	IOException
    //   226	1	4	localFileNotFoundException2	java.io.FileNotFoundException
    //   235	1	4	localFileNotFoundException3	java.io.FileNotFoundException
    // Exception table:
    //   from	to	target	type
    //   11	19	55	java/io/FileNotFoundException
    //   21	28	55	java/io/FileNotFoundException
    //   30	37	55	java/io/FileNotFoundException
    //   44	52	55	java/io/FileNotFoundException
    //   82	90	55	java/io/FileNotFoundException
    //   137	141	143	java/io/IOException
    //   72	76	150	java/io/IOException
    //   0	9	157	java/io/IOException
    //   176	180	182	java/io/IOException
    //   0	9	189	finally
    //   196	200	202	java/io/IOException
    //   11	19	210	finally
    //   21	28	210	finally
    //   30	37	210	finally
    //   44	52	210	finally
    //   61	66	210	finally
    //   82	90	210	finally
    //   92	101	210	finally
    //   103	125	210	finally
    //   165	170	210	finally
    //   11	19	214	java/io/IOException
    //   21	28	214	java/io/IOException
    //   30	37	214	java/io/IOException
    //   44	52	214	java/io/IOException
    //   82	90	214	java/io/IOException
    //   92	101	221	java/io/IOException
    //   103	125	221	java/io/IOException
    //   0	9	226	java/io/FileNotFoundException
    //   92	101	235	java/io/FileNotFoundException
    //   103	125	235	java/io/FileNotFoundException
  }
  
  private String l(String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new BasicNameValuePair("method", "upload"));
    if (paramString.startsWith("auth_code:")) {
      localArrayList.add(new BasicNameValuePair("access_token", g(paramString)));
    }
    for (;;)
    {
      localArrayList.add(new BasicNameValuePair("type", "tmpfile"));
      return "https://pcs.baidu.com/rest/2.0/pcs/file?" + a(localArrayList);
      if (paramString.startsWith("bduss:")) {
        localArrayList.add(new BasicNameValuePair("app_id", "266719"));
      }
    }
  }
  
  private HttpResponse m(String paramString)
  {
    Object localObject = new ArrayList();
    ((ArrayList)localObject).add(new BasicNameValuePair("method", "info"));
    if (paramString.startsWith("auth_code:")) {
      ((ArrayList)localObject).add(new BasicNameValuePair("access_token", g(paramString)));
    }
    for (;;)
    {
      localObject = new HttpGet("https://pcs.baidu.com/rest/2.0/pcs/quota?" + a((List)localObject));
      if (paramString.startsWith("bduss:")) {
        ((HttpGet)localObject).addHeader("Cookie", "BDUSS=" + g(paramString));
      }
      return a((HttpRequestBase)localObject);
      if (paramString.startsWith("bduss:")) {
        ((ArrayList)localObject).add(new BasicNameValuePair("app_id", "266719"));
      }
    }
  }
  
  public InputStream a(String paramString1, String paramString2, String paramString3, int paramInt1, int paramInt2)
  {
    try
    {
      paramString1 = f(paramString1, paramString2);
      if (paramString1 == null)
      {
        l.e("Pcs", "getThumbnail, can't get the token");
        return null;
      }
      paramString1 = a(paramString1, a(paramString3), 100, paramInt1, paramInt2);
      return paramString1;
    }
    catch (Exception paramString1) {}
    return null;
  }
  
  public OutputStream a(String paramString1, String paramString2, String paramString3, long paramLong)
  {
    return getFileOutputStream(paramString1, paramString2, paramString3, paramLong, false);
  }
  
  public Object a(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    return a(g(f(paramString1, paramString2)), paramString3, paramString4, paramString5);
  }
  
  public List<a> a(String paramString1, String paramString2, TypedMap paramTypedMap)
  {
    if (h.size() == 0) {
      d();
    }
    Object localObject1 = f(paramString1, paramString2);
    Object localObject2 = new ArrayList();
    ((ArrayList)localObject2).add(new BasicNameValuePair("method", "list_task"));
    if (bk.b(paramTypedMap.getString("source_url"))) {
      ((ArrayList)localObject2).add(new BasicNameValuePair("source_url", paramTypedMap.getString("source_url")));
    }
    if (bk.b(paramTypedMap.getString("save_path"))) {
      ((ArrayList)localObject2).add(new BasicNameValuePair("save_path", paramTypedMap.getString("save_path")));
    }
    if (bk.b(paramTypedMap.getString("start"))) {
      ((ArrayList)localObject2).add(new BasicNameValuePair("start", paramTypedMap.getString("start")));
    }
    if (bk.b(paramTypedMap.getString("limit"))) {
      ((ArrayList)localObject2).add(new BasicNameValuePair("limit", paramTypedMap.getString("limit")));
    }
    if (bk.b(paramTypedMap.getString("asc"))) {
      ((ArrayList)localObject2).add(new BasicNameValuePair("asc", paramTypedMap.getString("asc")));
    }
    if (bk.b(paramTypedMap.getString("status"))) {
      ((ArrayList)localObject2).add(new BasicNameValuePair("status", paramTypedMap.getString("status")));
    }
    if (bk.b(paramTypedMap.getString("need_task_info"))) {
      ((ArrayList)localObject2).add(new BasicNameValuePair("need_task_info", paramTypedMap.getString("need_task_info")));
    }
    if (((String)localObject1).startsWith("auth_code:"))
    {
      ((ArrayList)localObject2).add(new BasicNameValuePair("access_token", g((String)localObject1)));
      ((ArrayList)localObject2).add(new BasicNameValuePair("app_id", "266719"));
    }
    for (;;)
    {
      paramTypedMap = new HttpPost("https://pcs.baidu.com/rest/2.0/pcs/services/cloud_dl?" + a((List)localObject2));
      if (((String)localObject1).startsWith("bduss:")) {
        paramTypedMap.addHeader("Cookie", "BDUSS=" + g((String)localObject1));
      }
      paramTypedMap = a(paramTypedMap);
      try
      {
        paramTypedMap = HttpUtils.parseAsJSON(paramTypedMap);
        b(paramTypedMap);
        localObject1 = paramTypedMap.get("task_info");
        if (localObject1 != null) {
          break;
        }
        l.b("Pcs", "addDownload no data: " + paramTypedMap);
        throw new PcsFileSystem.PcsFileSystemException(-1);
      }
      catch (Exception paramString1)
      {
        throw new PcsFileSystem.PcsFileSystemException(paramString1);
      }
      if (((String)localObject1).startsWith("bduss:"))
      {
        ((ArrayList)localObject2).add(new BasicNameValuePair("app_id", "266719"));
        ((ArrayList)localObject2).add(new BasicNameValuePair("BDUSS", g((String)localObject1)));
      }
    }
    paramTypedMap = new LinkedList();
    if ((localObject1 instanceof JSONArray))
    {
      localObject1 = (JSONArray)localObject1;
      int i2 = ((JSONArray)localObject1).size();
      int i1 = 0;
      while (i1 < i2)
      {
        localObject2 = (JSONObject)((JSONArray)localObject1).get(i1);
        Object localObject3 = ap.bB(((JSONObject)localObject2).get("save_path").toString());
        String str = ap.d(((JSONObject)localObject2).get("save_path").toString());
        localObject3 = new a(paramString1, paramString2, ((JSONObject)localObject2).get("source_url").toString(), (String)localObject3);
        a = ((JSONObject)localObject2).get("task_id").toString();
        ((a)localObject3).putExtra("name", str);
        ((a)localObject3).putExtra("status", ((JSONObject)localObject2).get("status").toString());
        paramTypedMap.add(localObject3);
        i1 += 1;
      }
    }
    return paramTypedMap;
  }
  
  public Map<String, NetFileInfo> a(String paramString1, String paramString2, String paramString3, boolean paramBoolean, INetRefreshCallback paramINetRefreshCallback, HashMap<String, Object> paramHashMap, String paramString4)
  {
    if (paramString3.equals("/")) {}
    do
    {
      do
      {
        return null;
        if (h.size() == 0) {
          d();
        }
      } while (paramString3 == null);
      paramString2 = a(paramString1, paramString2, paramString3, paramHashMap);
    } while (paramString2 == null);
    paramString1 = new HashMap();
    paramString3 = paramString2.keySet().iterator();
    while (paramString3.hasNext())
    {
      paramINetRefreshCallback = (String)paramString3.next();
      paramHashMap = (e)paramString2.get(paramINetRefreshCallback);
      paramString4 = a(paramHashMap);
      paramString4.putExtra("public_share_link", b);
      if (paramString4 != null) {
        paramString1.put(paramINetRefreshCallback, paramString4);
      }
    }
    try
    {
      Thread.sleep(3000L);
      return paramString1;
    }
    catch (InterruptedException paramString2)
    {
      for (;;)
      {
        paramString2.printStackTrace();
      }
    }
  }
  
  public void a(com.estrongs.fs.impl.o.e parame)
  {
    o = parame;
  }
  
  public void a(String paramString1, String paramString2, a parama, int paramInt)
  {
    if (h.size() == 0) {
      d();
    }
    paramString1 = f(paramString1, paramString2);
    paramString2 = new ArrayList();
    if (paramString1.startsWith("auth_code:"))
    {
      paramString2.add(new BasicNameValuePair("access_token", g(paramString1)));
      paramString2.add(new BasicNameValuePair("app_id", "266719"));
    }
    for (;;)
    {
      paramString2.add(new BasicNameValuePair("method", "query_task"));
      paramString2.add(new BasicNameValuePair("task_ids", a));
      paramString2.add(new BasicNameValuePair("op_type", String.valueOf(paramInt)));
      paramString2 = new HttpPost("https://pcs.baidu.com/rest/2.0/pcs/services/cloud_dl?" + a(paramString2));
      if (paramString1.startsWith("bduss:")) {
        paramString2.addHeader("Cookie", "BDUSS=" + g(paramString1));
      }
      paramString1 = a(paramString2);
      new HashMap();
      try
      {
        paramString1 = HttpUtils.parseAsJSON(paramString1);
        b(paramString1);
        paramString2 = (Map)paramString1.get("task_info");
        if (paramString2 != null) {
          break;
        }
        l.b("Pcs", "addDownload no data: " + paramString1);
        throw new PcsFileSystem.PcsFileSystemException(-1);
      }
      catch (Exception paramString1)
      {
        throw new PcsFileSystem.PcsFileSystemException(paramString1);
      }
      if (paramString1.startsWith("bduss:"))
      {
        paramString2.add(new BasicNameValuePair("app_id", "266719"));
        paramString2.add(new BasicNameValuePair("BDUSS", g(paramString1)));
      }
    }
    paramString2 = paramString2.get(a);
    if ((paramString2 instanceof Map)) {
      paramString1 = (Map)paramString2;
    }
    if (paramInt == 0)
    {
      Object localObject = paramString1.get("save_path");
      paramString2 = null;
      if (localObject != null) {
        paramString2 = localObject.toString();
      }
      if (paramString2 != null) {
        parama.putExtra("name", ap.d(paramString2));
      }
    }
    for (;;)
    {
      parama.putExtra("status", paramString1.get("status"));
      return;
      if (paramInt == 1)
      {
        d = bk.a(paramString1.get("finished_size"), 0L);
        parama.a(bk.a(paramString1.get("file_size"), 0L));
        parama.b(bk.a(paramString1.get("finish_time"), 0L) * 1000L);
      }
    }
  }
  
  public boolean a(String paramString1, String paramString2, h paramh, String paramString3)
  {
    try
    {
      paramString3 = f(a(paramString3));
      paramString1 = f(paramString1, paramString2);
      if (paramString1 == null)
      {
        l.e("Pcs", "can't get token for rename");
        return false;
      }
      boolean bool = a(paramString1, paramh, paramString3);
      if (bool) {
        return true;
      }
    }
    catch (Exception paramString1)
    {
      paramString1.printStackTrace();
    }
    return false;
  }
  
  public boolean a(String paramString1, String paramString2, String paramString3)
  {
    return exists(paramString1, paramString2, paramString3, true);
  }
  
  public long[] a(String paramString1, String paramString2)
  {
    if (h.size() == 0) {
      d();
    }
    paramString1 = f(paramString1, paramString2);
    if (paramString1 == null) {
      return null;
    }
    paramString1 = m(paramString1);
    try
    {
      paramString1 = HttpUtils.parseAsJSON(paramString1);
      if (!a(paramString1, "quota"))
      {
        l.e("Pcs", "move failed");
        return null;
      }
    }
    catch (IOException paramString1)
    {
      paramString1.printStackTrace();
      return null;
    }
    return new long[] { ((Long)paramString1.get("quota")).longValue(), ((Long)paramString1.get("used")).longValue() };
  }
  
  public boolean addServer(String paramString1, String paramString2)
  {
    return b(paramString1, paramString2);
  }
  
  public NetFileInfo b(String paramString1, String paramString2, String paramString3)
  {
    return getFileInfo(paramString1, paramString2, paramString3, false);
  }
  
  public String b(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    if (h.size() == 0) {
      d();
    }
    paramString2 = f(paramString1, paramString2);
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new BasicNameValuePair("method", "add_task"));
    paramString1 = paramString3;
    if (paramString3.startsWith("https://")) {
      paramString1 = paramString3.replace("https://", "http://");
    }
    localArrayList.add(new BasicNameValuePair("source_url", paramString1));
    localArrayList.add(new BasicNameValuePair("save_path", paramString4));
    if (paramString2.startsWith("auth_code:"))
    {
      localArrayList.add(new BasicNameValuePair("access_token", g(paramString2)));
      localArrayList.add(new BasicNameValuePair("app_id", "266719"));
    }
    for (;;)
    {
      localArrayList.add(new BasicNameValuePair("rate_limit", "10"));
      paramString1 = new HttpPost("https://pcs.baidu.com/rest/2.0/pcs/services/cloud_dl?" + a(localArrayList));
      if (paramString2.startsWith("bduss:")) {
        paramString1.addHeader("Cookie", "BDUSS=" + g(paramString2));
      }
      paramString1 = a(paramString1);
      try
      {
        paramString1 = HttpUtils.parseAsJSON(paramString1);
        b(paramString1);
        paramString2 = paramString1.get("task_id");
        if (paramString2 != null) {
          break;
        }
        l.b("Pcs", "addDownload no data: " + paramString1);
        throw new PcsFileSystem.PcsFileSystemException(-1);
      }
      catch (Exception paramString1)
      {
        throw new PcsFileSystem.PcsFileSystemException(paramString1);
      }
      if (paramString2.startsWith("bduss:"))
      {
        localArrayList.add(new BasicNameValuePair("app_id", "266719"));
        localArrayList.add(new BasicNameValuePair("BDUSS", g(paramString2)));
      }
    }
    return String.valueOf(paramString2);
  }
  
  public boolean b(String paramString1, String paramString2)
  {
    return f(paramString1, paramString2) != null;
  }
  
  public Object c(String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new BasicNameValuePair("ptpl", "esfb"));
    localArrayList.add(new BasicNameValuePair("device_id", encryptDeviceId(paramString, "js52je)927!hsm^%3m")));
    localArrayList.add(new BasicNameValuePair("device_info", b));
    int i1 = 0;
    while (i1 < c.length) {
      try
      {
        paramString = new HttpPost(c[i1] + "/reg");
        HttpClient localHttpClient = a();
        paramString.setEntity(new UrlEncodedFormEntity(localArrayList, "utf-8"));
        paramString = HttpUtils.parseAsJSON(localHttpClient.execute(paramString));
        return paramString;
      }
      catch (Exception paramString)
      {
        paramString.printStackTrace();
        i1 += 1;
      }
    }
    return null;
  }
  
  public Object c(String paramString1, String paramString2)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new BasicNameValuePair("ptpl", "esfb"));
    localArrayList.add(new BasicNameValuePair("device_id", encryptDeviceId(paramString1, "js52je)927!hsm^%3m")));
    localArrayList.add(new BasicNameValuePair("device_token", paramString2));
    int i1 = 0;
    while (i1 < c.length) {
      try
      {
        paramString1 = new HttpPost(c[i1] + "/login");
        paramString2 = a();
        paramString1.setEntity(new UrlEncodedFormEntity(localArrayList, "utf-8"));
        paramString1 = HttpUtils.parseAsJSON(paramString2.execute(paramString1));
        return paramString1;
      }
      catch (Exception paramString1)
      {
        paramString1.printStackTrace();
        i1 += 1;
      }
    }
    return null;
  }
  
  public String c(String paramString1, String paramString2, String paramString3)
  {
    if (h.size() == 0) {
      d();
    }
    paramString1 = f(paramString1, paramString2);
    paramString2 = new ArrayList();
    if (paramString1.startsWith("auth_code:"))
    {
      paramString2.add(new BasicNameValuePair("access_token", g(paramString1)));
      paramString2.add(new BasicNameValuePair("app_id", "266719"));
    }
    for (;;)
    {
      paramString2.add(new BasicNameValuePair("method", "cancel_task"));
      paramString2.add(new BasicNameValuePair("task_id", paramString3));
      paramString2 = new HttpPost("https://pcs.baidu.com/rest/2.0/pcs/services/cloud_dl?" + a(paramString2));
      if (paramString1.startsWith("bduss:")) {
        paramString2.addHeader("Cookie", "BDUSS=" + g(paramString1));
      }
      paramString1 = a(paramString2);
      new HashMap();
      try
      {
        paramString1 = HttpUtils.parseAsJSON(paramString1);
        b(paramString1);
        paramString2 = paramString1.get("request_id");
        if (paramString2 != null) {
          break;
        }
        l.b("Pcs", "addDownload no data: " + paramString1);
        throw new PcsFileSystem.PcsFileSystemException(-1);
      }
      catch (Exception paramString1)
      {
        throw new PcsFileSystem.PcsFileSystemException(paramString1);
      }
      if (paramString1.startsWith("bduss:"))
      {
        paramString2.add(new BasicNameValuePair("app_id", "266719"));
        paramString2.add(new BasicNameValuePair("BDUSS", g(paramString1)));
      }
    }
    l.b("Pcs", "cancelDownloadTask:" + paramString2);
    return paramString2.toString();
  }
  
  public boolean copyFile(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    try
    {
      paramString4 = a(paramString4);
      paramString3 = f(a(paramString3));
      paramString4 = f(paramString4);
      paramString1 = f(paramString1, paramString2);
      if (paramString1 == null)
      {
        l.e("Pcs", "can't get token for rename");
        return false;
      }
      boolean bool = e(paramString1, paramString3, paramString4);
      if (bool) {
        return true;
      }
    }
    catch (Exception paramString1)
    {
      paramString1.printStackTrace();
    }
    return false;
  }
  
  public boolean createFile(String paramString1, String paramString2, String paramString3, boolean paramBoolean)
  {
    if (paramString3.equals("/")) {
      return true;
    }
    if (paramBoolean)
    {
      paramString1 = f(paramString1, paramString2);
      if (paramString1 == null)
      {
        l.e("Pcs", "can't get token createfile");
        return false;
      }
      if (h(paramString1, f(a(paramString3))) != null) {}
      for (paramBoolean = true;; paramBoolean = false) {
        return paramBoolean;
      }
    }
    try
    {
      a(paramString1, paramString2, paramString3, 0L).close();
      return true;
    }
    catch (Exception paramString1)
    {
      paramString1.printStackTrace();
    }
    return false;
  }
  
  public String createShare(String paramString1, String paramString2, String paramString3, HashMap<String, Object> paramHashMap)
  {
    paramString3 = f(a(paramString3));
    paramString1 = f(paramString1, paramString2);
    if (paramString1 == null)
    {
      l.e("Pcs", "can't get token createfile");
      return null;
    }
    paramString2 = new ArrayList();
    paramString2.add(new BasicNameValuePair("method", "create"));
    paramString2.add(new BasicNameValuePair("type", "public"));
    if (paramString3 != null) {
      paramString2.add(new BasicNameValuePair("path", paramString3));
    }
    if (paramString1.startsWith("auth_code:")) {
      paramString2.add(new BasicNameValuePair("access_token", g(paramString1)));
    }
    for (;;)
    {
      paramString2 = new HttpPost("https://pcs.baidu.com/rest/2.0/pcs/share?" + a(paramString2));
      if (paramString1.startsWith("bduss:")) {
        paramString2.addHeader("Cookie", "BDUSS=" + g(paramString1));
      }
      paramString1 = a(paramString2);
      try
      {
        paramString1 = HttpUtils.parseAsJSON(paramString1);
        if (a(paramString1, "createshare")) {
          break;
        }
        return null;
      }
      catch (Exception paramString1)
      {
        paramString1.printStackTrace();
        return null;
      }
      if (paramString1.startsWith("bduss:")) {
        paramString2.add(new BasicNameValuePair("app_id", "266719"));
      }
    }
    paramString1 = paramString1.get("list");
    if ((paramString1 instanceof JSONArray))
    {
      paramString1 = ((JSONArray)paramString1).iterator();
      if (paramString1.hasNext())
      {
        paramString1 = paramString1.next();
        try
        {
          int i1 = paramString3.hashCode();
          paramString2 = new FileOutputStream(c() + "/" + i1 + ".share.info");
          paramString2.write(("link:" + (String)paramString1 + "\n").getBytes());
          paramString2.write(("ctime:" + System.currentTimeMillis()).getBytes());
          paramString2.flush();
          paramString2.close();
          return (String)paramString1;
        }
        catch (Exception paramString1)
        {
          return null;
        }
      }
    }
    return null;
  }
  
  public Object d(String paramString1, String paramString2)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new BasicNameValuePair("ptpl", "esfb"));
    localArrayList.add(new BasicNameValuePair("device_id", encryptDeviceId(paramString1, "js52je)927!hsm^%3m")));
    localArrayList.add(new BasicNameValuePair("force_reg_token", paramString2));
    localArrayList.add(new BasicNameValuePair("device_info", b));
    int i1 = 0;
    while (i1 < c.length) {
      try
      {
        paramString1 = new HttpPost(c[i1] + "/forcereg");
        paramString2 = a();
        paramString1.setEntity(new UrlEncodedFormEntity(localArrayList, "utf-8"));
        paramString1 = HttpUtils.parseAsJSON(paramString2.execute(paramString1));
        return paramString1;
      }
      catch (Exception paramString1)
      {
        paramString1.printStackTrace();
        i1 += 1;
      }
    }
    return null;
  }
  
  public void delServer(String paramString1, String arg2)
  {
    if (h.size() == 0) {
      d();
    }
    synchronized (f)
    {
      f.remove(paramString1);
    }
    synchronized (h)
    {
      h.remove(paramString1);
      e();
      return;
      paramString1 = finally;
      throw paramString1;
    }
  }
  
  public boolean deleteFile(String paramString1, String paramString2, String paramString3)
  {
    try
    {
      if (h.size() == 0) {
        d();
      }
      paramString3 = f(paramString3);
      String str1 = f(paramString1, paramString2);
      if (str1 == null)
      {
        l.e("Pcs", "delete, can't get the token");
        return false;
      }
      if (paramString3.endsWith(".pcs"))
      {
        String str2 = ap.d(paramString3);
        if (str2 != null)
        {
          int i1 = str2.lastIndexOf('.');
          if (i1 > 0)
          {
            if (!bk.b(c(paramString1, paramString2, str2.substring(0, i1)))) {
              break label125;
            }
            return true;
          }
        }
      }
      boolean bool = i(str1, a(paramString3));
      if (bool) {
        return true;
      }
    }
    catch (Exception paramString1)
    {
      paramString1.printStackTrace();
    }
    label125:
    return false;
  }
  
  public boolean exists(String paramString1, String paramString2, String paramString3, boolean paramBoolean)
  {
    if (paramString3.equals("/")) {}
    while (b(paramString1, paramString2, paramString3) != null) {
      return true;
    }
    return false;
  }
  
  public NetFileInfo getFileInfo(String paramString1, String paramString2, String paramString3, boolean paramBoolean)
  {
    NetFileInfo localNetFileInfo = new NetFileInfo();
    path = paramString3;
    name = i(paramString3);
    if ((paramString3.equals("/")) || (paramString3.equals("/files")) || (paramString3.equals("/pictures")) || (paramString3.equals("/music")) || (paramString3.equals("/videos")) || (paramString3.equals("/documents")) || (paramString3.equals("/apps")) || (paramString3.equals("/others")))
    {
      isDirectory = true;
      return localNetFileInfo;
    }
    if (h.size() == 0) {
      d();
    }
    paramString1 = f(paramString1, paramString2);
    if (paramString1 == null)
    {
      l.e("Pcs", "getFileInfo, can't get the token");
      return null;
    }
    paramString2 = new ArrayList();
    paramString2.add(new BasicNameValuePair("method", "meta"));
    if (paramString1.startsWith("auth_code:")) {
      paramString2.add(new BasicNameValuePair("access_token", g(paramString1)));
    }
    for (;;)
    {
      if (paramString3 != null) {
        paramString2.add(new BasicNameValuePair("path", a(paramString3)));
      }
      paramString2 = new HttpGet("https://pcs.baidu.com/rest/2.0/pcs/file?" + a(paramString2));
      if (paramString1.startsWith("bduss:")) {
        paramString2.addHeader("Cookie", "BDUSS=" + g(paramString1));
      }
      if (paramString2 != null)
      {
        paramString1 = a();
        try
        {
          paramString1 = paramString1.execute(paramString2);
          if (paramString1 != null)
          {
            paramString1 = HttpUtils.parseAsJSON(paramString1);
            paramBoolean = a(paramString1, "meta");
            if (!paramBoolean)
            {
              return null;
              if (!paramString1.startsWith("bduss:")) {
                continue;
              }
              paramString2.add(new BasicNameValuePair("app_id", "266719"));
              continue;
            }
            if (paramString1.containsKey("list"))
            {
              paramString1 = (JSONObject)((JSONArray)paramString1.get("list")).get(0);
              if (((Long)paramString1.get("isdir")).longValue() == 1L) {}
              for (paramBoolean = true;; paramBoolean = false)
              {
                isDirectory = paramBoolean;
                size = ((Long)paramString1.get("size")).longValue();
                lastModifiedTime = ((Long)paramString1.get("mtime")).longValue();
                lastModifiedTime *= 1000L;
                return localNetFileInfo;
              }
            }
            return null;
          }
        }
        catch (Exception paramString1)
        {
          paramString1.printStackTrace();
        }
      }
    }
    return null;
  }
  
  public InputStream getFileInputStream(String paramString1, String paramString2, String paramString3, long paramLong)
  {
    if (h.size() == 0) {
      d();
    }
    try
    {
      paramString1 = f(paramString1, paramString2);
      paramString2 = a(paramString1, a(paramString3), paramLong);
      if (paramString2 != null)
      {
        int i1 = h(paramString1);
        if (i1 == 1) {}
        return paramString2;
      }
      return null;
    }
    catch (Exception paramString1)
    {
      paramString1.printStackTrace();
    }
    return null;
  }
  
  public long getFileLength(String paramString1, String paramString2, String paramString3)
  {
    paramString1 = b(paramString1, paramString2, paramString3);
    if (paramString1 == null) {
      return 0L;
    }
    return size;
  }
  
  public OutputStream getFileOutputStream(String paramString1, String paramString2, String paramString3, long paramLong, boolean paramBoolean)
  {
    if (h.size() == 0) {
      d();
    }
    for (;;)
    {
      try
      {
        Object localObject = a(paramString3);
        boolean bool = a(paramString1, paramString2, paramString3);
        if (bool)
        {
          int i1 = m.nextInt();
          str1 = paramString3 + i1;
          paramBoolean = renameFile(paramString1, paramString2, paramString3, str1);
          String str2 = f(paramString1, paramString2);
          if (str2 == null)
          {
            l.e("Pcs", "getFileOutputStream, can't get the token");
            return null;
          }
          String str3 = l(str2);
          if (str3 == null)
          {
            l.e("Pcs", "getFileOutputStream, can't get upload url");
            return null;
          }
          String str4 = f((String)localObject);
          localObject = new UploadOutputStream();
          FastPipedInputStream localFastPipedInputStream = new FastPipedInputStream();
          try
          {
            localFastPipedInputStream.connect((FastPipedOutputStream)localObject);
            paramString1 = new d(this, paramLong, localFastPipedInputStream, str4, str3, str2, (UploadOutputStream)localObject, bool, paramBoolean, paramString1, paramString2, str1, paramString3);
            ((UploadOutputStream)localObject).setTask(paramString1, localFastPipedInputStream);
            paramString1.start();
            if (paramLong == 0L) {
              ((UploadOutputStream)localObject).write(32);
            }
            paramString1 = (String)localObject;
            if (h(str2) == 1) {
              return (OutputStream)localObject;
            }
          }
          catch (IOException paramString1)
          {
            l.e("Pcs", "Can't create pipe stream");
            return null;
          }
          return paramString1;
        }
      }
      catch (Exception paramString1)
      {
        paramString1 = null;
      }
      String str1 = null;
      paramBoolean = false;
    }
  }
  
  public String getLastErrorString(String paramString)
  {
    return n;
  }
  
  public long getLeftSpaceSize(String paramString1, String paramString2, String paramString3)
  {
    if (h.size() == 0) {
      d();
    }
    paramString1 = f(paramString1, paramString2);
    if (paramString1 == null) {
      return -1L;
    }
    paramString1 = m(paramString1);
    try
    {
      paramString1 = HttpUtils.parseAsJSON(paramString1);
      if (!a(paramString1, "quota"))
      {
        l.e("Pcs", "move failed");
        return -1L;
      }
    }
    catch (IOException paramString1)
    {
      paramString1.printStackTrace();
      return -1L;
    }
    return ((Long)paramString1.get("quota")).longValue() - ((Long)paramString1.get("used")).longValue();
  }
  
  public String getOAuthLoginUrl()
  {
    return "https://openapi.baidu.com" + HttpUtils.buildGetUrl("/oauth/2.0/authorize", new Object[] { "response_type", "code", "client_id", "4YchBAkgxfWug3KRYCGOv8EK", "redirect_uri", "http://www.estrongs.com", "display", "mobile", "scope", "basic netdisk" }, true);
  }
  
  public boolean getRegisterPrepareInfo(Object[] paramArrayOfObject)
  {
    return false;
  }
  
  public InputStream getThumbnail(String paramString1, String paramString2, String paramString3)
  {
    try
    {
      paramString1 = f(paramString1, paramString2);
      if (paramString1 == null)
      {
        l.e("Pcs", "getThumbnail, can't get the token");
        return null;
      }
      paramString1 = a(paramString1, a(paramString3), 50, 64, 64);
      return paramString1;
    }
    catch (Exception paramString1) {}
    return null;
  }
  
  /* Error */
  public String getUserLoginName(String paramString)
  {
    // Byte code:
    //   0: aload_1
    //   1: ldc_w 651
    //   4: invokevirtual 655	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   7: astore 6
    //   9: aload 6
    //   11: ifnull +10 -> 21
    //   14: aload 6
    //   16: arraylength
    //   17: iconst_2
    //   18: if_icmpeq +9 -> 27
    //   21: aconst_null
    //   22: astore 5
    //   24: aload 5
    //   26: areturn
    //   27: aload 6
    //   29: iconst_0
    //   30: aaload
    //   31: ldc_w 1429
    //   34: invokevirtual 573	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   37: ifeq +501 -> 538
    //   40: aload 6
    //   42: iconst_1
    //   43: aload 6
    //   45: iconst_1
    //   46: aaload
    //   47: invokestatic 1088	com/estrongs/android/util/bk:d	(Ljava/lang/String;)Ljava/lang/String;
    //   50: aastore
    //   51: aload 6
    //   53: iconst_1
    //   54: aaload
    //   55: ldc_w 1431
    //   58: invokevirtual 1433	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   61: istore_2
    //   62: aload 6
    //   64: iconst_1
    //   65: aaload
    //   66: ldc_w 1435
    //   69: invokevirtual 1433	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   72: istore_3
    //   73: iload_2
    //   74: iconst_m1
    //   75: if_icmpeq +943 -> 1018
    //   78: iload_3
    //   79: iconst_m1
    //   80: if_icmpeq +938 -> 1018
    //   83: aload 6
    //   85: iconst_1
    //   86: aaload
    //   87: iload_2
    //   88: ldc_w 1431
    //   91: invokevirtual 416	java/lang/String:length	()I
    //   94: iadd
    //   95: iload_3
    //   96: invokevirtual 1063	java/lang/String:substring	(II)Ljava/lang/String;
    //   99: astore_1
    //   100: aload 6
    //   102: iconst_1
    //   103: aaload
    //   104: ldc_w 1437
    //   107: invokevirtual 1433	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   110: istore_2
    //   111: aload 6
    //   113: iconst_1
    //   114: aaload
    //   115: ldc_w 1439
    //   118: invokevirtual 1433	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   121: istore_3
    //   122: ldc 62
    //   124: astore 5
    //   126: aload 5
    //   128: astore 4
    //   130: iload_2
    //   131: iconst_m1
    //   132: if_icmpeq +30 -> 162
    //   135: aload 5
    //   137: astore 4
    //   139: iload_3
    //   140: iconst_m1
    //   141: if_icmpeq +21 -> 162
    //   144: aload 6
    //   146: iconst_1
    //   147: aaload
    //   148: iload_2
    //   149: ldc_w 1437
    //   152: invokevirtual 416	java/lang/String:length	()I
    //   155: iadd
    //   156: iload_3
    //   157: invokevirtual 1063	java/lang/String:substring	(II)Ljava/lang/String;
    //   160: astore 4
    //   162: new 37	java/lang/StringBuilder
    //   165: dup
    //   166: invokespecial 40	java/lang/StringBuilder:<init>	()V
    //   169: aload_1
    //   170: invokevirtual 46	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   173: ldc_w 1090
    //   176: invokevirtual 46	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   179: aload 4
    //   181: invokevirtual 46	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   184: invokevirtual 66	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   187: astore 5
    //   189: aload 6
    //   191: iconst_1
    //   192: aaload
    //   193: ldc_w 1441
    //   196: invokevirtual 1433	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   199: istore_2
    //   200: aload 6
    //   202: iconst_1
    //   203: aaload
    //   204: ldc_w 1443
    //   207: invokevirtual 1433	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   210: istore_3
    //   211: ldc 62
    //   213: astore 4
    //   215: aload 4
    //   217: astore_1
    //   218: iload_2
    //   219: iconst_m1
    //   220: if_icmpeq +28 -> 248
    //   223: aload 4
    //   225: astore_1
    //   226: iload_3
    //   227: iconst_m1
    //   228: if_icmpeq +20 -> 248
    //   231: aload 6
    //   233: iconst_1
    //   234: aaload
    //   235: iload_2
    //   236: ldc_w 1441
    //   239: invokevirtual 416	java/lang/String:length	()I
    //   242: iadd
    //   243: iload_3
    //   244: invokevirtual 1063	java/lang/String:substring	(II)Ljava/lang/String;
    //   247: astore_1
    //   248: new 37	java/lang/StringBuilder
    //   251: dup
    //   252: invokespecial 40	java/lang/StringBuilder:<init>	()V
    //   255: aload 5
    //   257: invokevirtual 46	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   260: ldc_w 1090
    //   263: invokevirtual 46	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   266: aload_1
    //   267: invokevirtual 46	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   270: invokevirtual 66	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   273: astore 5
    //   275: aload 6
    //   277: iconst_1
    //   278: aaload
    //   279: ldc_w 1445
    //   282: invokevirtual 1433	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   285: istore_2
    //   286: aload 6
    //   288: iconst_1
    //   289: aaload
    //   290: ldc_w 1447
    //   293: invokevirtual 1433	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   296: istore_3
    //   297: ldc 62
    //   299: astore 4
    //   301: iload_2
    //   302: iconst_m1
    //   303: if_icmpeq +710 -> 1013
    //   306: iload_3
    //   307: iconst_m1
    //   308: if_icmpeq +705 -> 1013
    //   311: aload 6
    //   313: iconst_1
    //   314: aaload
    //   315: iload_2
    //   316: ldc_w 1445
    //   319: invokevirtual 416	java/lang/String:length	()I
    //   322: iadd
    //   323: iload_3
    //   324: invokevirtual 1063	java/lang/String:substring	(II)Ljava/lang/String;
    //   327: astore 4
    //   329: aload 4
    //   331: astore_1
    //   332: new 37	java/lang/StringBuilder
    //   335: dup
    //   336: invokespecial 40	java/lang/StringBuilder:<init>	()V
    //   339: aload 5
    //   341: invokevirtual 46	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   344: ldc_w 1090
    //   347: invokevirtual 46	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   350: aload 4
    //   352: invokevirtual 46	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   355: invokevirtual 66	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   358: astore 7
    //   360: aload 6
    //   362: iconst_1
    //   363: aaload
    //   364: ldc_w 1449
    //   367: invokevirtual 1433	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   370: istore_2
    //   371: aload 6
    //   373: iconst_1
    //   374: aaload
    //   375: ldc_w 1451
    //   378: invokevirtual 1433	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   381: istore_3
    //   382: ldc 62
    //   384: astore 5
    //   386: aload 5
    //   388: astore 4
    //   390: iload_2
    //   391: iconst_m1
    //   392: if_icmpeq +30 -> 422
    //   395: aload 5
    //   397: astore 4
    //   399: iload_3
    //   400: iconst_m1
    //   401: if_icmpeq +21 -> 422
    //   404: aload 6
    //   406: iconst_1
    //   407: aaload
    //   408: iload_2
    //   409: ldc_w 1449
    //   412: invokevirtual 416	java/lang/String:length	()I
    //   415: iadd
    //   416: iload_3
    //   417: invokevirtual 1063	java/lang/String:substring	(II)Ljava/lang/String;
    //   420: astore 4
    //   422: new 37	java/lang/StringBuilder
    //   425: dup
    //   426: invokespecial 40	java/lang/StringBuilder:<init>	()V
    //   429: aload 7
    //   431: invokevirtual 46	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   434: ldc_w 1090
    //   437: invokevirtual 46	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   440: aload 4
    //   442: invokevirtual 46	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   445: invokevirtual 66	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   448: astore 4
    //   450: aload 6
    //   452: iconst_0
    //   453: ldc_w 386
    //   456: aastore
    //   457: aload_1
    //   458: astore 5
    //   460: aload_1
    //   461: ifnull -437 -> 24
    //   464: aload_1
    //   465: astore 5
    //   467: aload 4
    //   469: ifnull -445 -> 24
    //   472: aload_0
    //   473: getfield 101	com/estrongs/fs/impl/pcs/PcsFileSystem:f	Ljava/util/HashMap;
    //   476: astore 5
    //   478: aload 5
    //   480: monitorenter
    //   481: aload_0
    //   482: getfield 101	com/estrongs/fs/impl/pcs/PcsFileSystem:f	Ljava/util/HashMap;
    //   485: aload_1
    //   486: new 37	java/lang/StringBuilder
    //   489: dup
    //   490: invokespecial 40	java/lang/StringBuilder:<init>	()V
    //   493: aload 6
    //   495: iconst_0
    //   496: aaload
    //   497: invokevirtual 46	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   500: ldc_w 651
    //   503: invokevirtual 46	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   506: aload 4
    //   508: invokestatic 1453	com/estrongs/android/util/bk:c	(Ljava/lang/String;)Ljava/lang/String;
    //   511: invokevirtual 46	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   514: invokevirtual 66	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   517: invokevirtual 562	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   520: pop
    //   521: aload 5
    //   523: monitorexit
    //   524: aload_0
    //   525: invokespecial 1087	com/estrongs/fs/impl/pcs/PcsFileSystem:e	()Z
    //   528: pop
    //   529: aload_1
    //   530: areturn
    //   531: astore_1
    //   532: aload_1
    //   533: invokevirtual 269	java/lang/Exception:printStackTrace	()V
    //   536: aconst_null
    //   537: areturn
    //   538: aload 6
    //   540: iconst_0
    //   541: aaload
    //   542: ldc_w 1455
    //   545: invokevirtual 573	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   548: ifeq +40 -> 588
    //   551: aload 6
    //   553: iconst_0
    //   554: ldc_w 386
    //   557: aastore
    //   558: aload 6
    //   560: iconst_1
    //   561: aaload
    //   562: invokestatic 1088	com/estrongs/android/util/bk:d	(Ljava/lang/String;)Ljava/lang/String;
    //   565: astore 4
    //   567: aload 4
    //   569: ldc_w 1090
    //   572: invokevirtual 655	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   575: iconst_3
    //   576: aaload
    //   577: astore_1
    //   578: goto -121 -> 457
    //   581: astore_1
    //   582: aload_1
    //   583: invokevirtual 269	java/lang/Exception:printStackTrace	()V
    //   586: aconst_null
    //   587: areturn
    //   588: aload 6
    //   590: iconst_0
    //   591: aaload
    //   592: ldc_w 1457
    //   595: invokevirtual 573	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   598: ifeq +40 -> 638
    //   601: aload 6
    //   603: iconst_0
    //   604: ldc_w 386
    //   607: aastore
    //   608: aload 6
    //   610: iconst_1
    //   611: aaload
    //   612: invokestatic 1088	com/estrongs/android/util/bk:d	(Ljava/lang/String;)Ljava/lang/String;
    //   615: astore 4
    //   617: aload 4
    //   619: ldc_w 1090
    //   622: invokevirtual 655	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   625: iconst_1
    //   626: aaload
    //   627: astore_1
    //   628: goto -171 -> 457
    //   631: astore_1
    //   632: aload_1
    //   633: invokevirtual 269	java/lang/Exception:printStackTrace	()V
    //   636: aconst_null
    //   637: areturn
    //   638: aload 6
    //   640: iconst_0
    //   641: aaload
    //   642: ldc_w 1459
    //   645: invokevirtual 573	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   648: ifne +114 -> 762
    //   651: aload 6
    //   653: iconst_1
    //   654: aload 6
    //   656: iconst_1
    //   657: aaload
    //   658: invokestatic 1088	com/estrongs/android/util/bk:d	(Ljava/lang/String;)Ljava/lang/String;
    //   661: aastore
    //   662: aload 6
    //   664: iconst_1
    //   665: aaload
    //   666: astore_1
    //   667: new 304	org/apache/http/client/methods/HttpGet
    //   670: dup
    //   671: new 37	java/lang/StringBuilder
    //   674: dup
    //   675: invokespecial 40	java/lang/StringBuilder:<init>	()V
    //   678: ldc_w 895
    //   681: invokevirtual 46	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   684: ldc_w 1461
    //   687: bipush 6
    //   689: anewarray 4	java/lang/Object
    //   692: dup
    //   693: iconst_0
    //   694: ldc_w 290
    //   697: aastore
    //   698: dup
    //   699: iconst_1
    //   700: aload_1
    //   701: aastore
    //   702: dup
    //   703: iconst_2
    //   704: ldc_w 1463
    //   707: aastore
    //   708: dup
    //   709: iconst_3
    //   710: ldc_w 1465
    //   713: aastore
    //   714: dup
    //   715: iconst_4
    //   716: ldc_w 1467
    //   719: aastore
    //   720: dup
    //   721: iconst_5
    //   722: ldc_w 382
    //   725: aastore
    //   726: invokestatic 1078	com/estrongs/android/pop/netfs/utils/HttpUtils:buildGetUrl	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   729: invokevirtual 46	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   732: invokevirtual 66	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   735: invokespecial 312	org/apache/http/client/methods/HttpGet:<init>	(Ljava/lang/String;)V
    //   738: astore 4
    //   740: invokestatic 324	com/estrongs/fs/impl/pcs/PcsFileSystem:a	()Lorg/apache/http/client/HttpClient;
    //   743: aload 4
    //   745: invokeinterface 330 2 0
    //   750: invokestatic 408	com/estrongs/android/pop/netfs/utils/HttpUtils:parseAsJSON	(Lorg/apache/http/HttpResponse;)Ljava/util/Map;
    //   753: astore 4
    //   755: aload 4
    //   757: ifnonnull +216 -> 973
    //   760: aconst_null
    //   761: areturn
    //   762: aload 6
    //   764: iconst_1
    //   765: aload 6
    //   767: iconst_1
    //   768: aaload
    //   769: invokestatic 1088	com/estrongs/android/util/bk:d	(Ljava/lang/String;)Ljava/lang/String;
    //   772: aastore
    //   773: aload 6
    //   775: iconst_1
    //   776: aaload
    //   777: astore_1
    //   778: new 304	org/apache/http/client/methods/HttpGet
    //   781: dup
    //   782: new 37	java/lang/StringBuilder
    //   785: dup
    //   786: invokespecial 40	java/lang/StringBuilder:<init>	()V
    //   789: ldc_w 895
    //   792: invokevirtual 46	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   795: ldc_w 1067
    //   798: bipush 10
    //   800: anewarray 4	java/lang/Object
    //   803: dup
    //   804: iconst_0
    //   805: ldc_w 1069
    //   808: aastore
    //   809: dup
    //   810: iconst_1
    //   811: ldc_w 1469
    //   814: aastore
    //   815: dup
    //   816: iconst_2
    //   817: ldc_w 901
    //   820: aastore
    //   821: dup
    //   822: iconst_3
    //   823: aload_1
    //   824: aastore
    //   825: dup
    //   826: iconst_4
    //   827: ldc_w 903
    //   830: aastore
    //   831: dup
    //   832: iconst_5
    //   833: ldc_w 905
    //   836: aastore
    //   837: dup
    //   838: bipush 6
    //   840: ldc_w 1073
    //   843: aastore
    //   844: dup
    //   845: bipush 7
    //   847: ldc_w 1075
    //   850: aastore
    //   851: dup
    //   852: bipush 8
    //   854: ldc_w 907
    //   857: aastore
    //   858: dup
    //   859: bipush 9
    //   861: ldc_w 909
    //   864: aastore
    //   865: invokestatic 1078	com/estrongs/android/pop/netfs/utils/HttpUtils:buildGetUrl	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   868: invokevirtual 46	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   871: invokevirtual 66	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   874: invokespecial 312	org/apache/http/client/methods/HttpGet:<init>	(Ljava/lang/String;)V
    //   877: astore_1
    //   878: invokestatic 324	com/estrongs/fs/impl/pcs/PcsFileSystem:a	()Lorg/apache/http/client/HttpClient;
    //   881: aload_1
    //   882: invokeinterface 330 2 0
    //   887: invokestatic 408	com/estrongs/android/pop/netfs/utils/HttpUtils:parseAsJSON	(Lorg/apache/http/HttpResponse;)Ljava/util/Map;
    //   890: astore_1
    //   891: aload_1
    //   892: ifnonnull +5 -> 897
    //   895: aconst_null
    //   896: areturn
    //   897: aload_1
    //   898: ldc_w 1471
    //   901: invokeinterface 1372 2 0
    //   906: ifeq +39 -> 945
    //   909: ldc_w 1473
    //   912: new 37	java/lang/StringBuilder
    //   915: dup
    //   916: invokespecial 40	java/lang/StringBuilder:<init>	()V
    //   919: ldc_w 1475
    //   922: invokevirtual 46	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   925: aload_1
    //   926: ldc_w 1477
    //   929: invokeinterface 224 2 0
    //   934: invokevirtual 237	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   937: invokevirtual 66	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   940: invokestatic 517	com/estrongs/android/util/l:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   943: aconst_null
    //   944: areturn
    //   945: aload_1
    //   946: ldc_w 290
    //   949: invokeinterface 224 2 0
    //   954: checkcast 70	java/lang/String
    //   957: astore_1
    //   958: aload_1
    //   959: ifnonnull +51 -> 1010
    //   962: ldc_w 1473
    //   965: ldc_w 1479
    //   968: invokestatic 517	com/estrongs/android/util/l:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   971: aconst_null
    //   972: areturn
    //   973: aload 4
    //   975: ldc_w 382
    //   978: invokeinterface 224 2 0
    //   983: checkcast 70	java/lang/String
    //   986: astore 5
    //   988: aload_1
    //   989: astore 4
    //   991: aload 5
    //   993: astore_1
    //   994: goto -537 -> 457
    //   997: astore_1
    //   998: aload_1
    //   999: invokevirtual 269	java/lang/Exception:printStackTrace	()V
    //   1002: aconst_null
    //   1003: areturn
    //   1004: astore_1
    //   1005: aload 5
    //   1007: monitorexit
    //   1008: aload_1
    //   1009: athrow
    //   1010: goto -343 -> 667
    //   1013: aconst_null
    //   1014: astore_1
    //   1015: goto -683 -> 332
    //   1018: ldc 62
    //   1020: astore_1
    //   1021: goto -921 -> 100
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	1024	0	this	PcsFileSystem
    //   0	1024	1	paramString	String
    //   61	355	2	i1	int
    //   72	345	3	i2	int
    //   128	862	4	localObject1	Object
    //   7	767	6	arrayOfString	String[]
    //   358	72	7	str	String
    // Exception table:
    //   from	to	target	type
    //   40	73	531	java/lang/Exception
    //   83	100	531	java/lang/Exception
    //   100	122	531	java/lang/Exception
    //   144	162	531	java/lang/Exception
    //   162	211	531	java/lang/Exception
    //   231	248	531	java/lang/Exception
    //   248	297	531	java/lang/Exception
    //   311	329	531	java/lang/Exception
    //   332	382	531	java/lang/Exception
    //   404	422	531	java/lang/Exception
    //   422	450	531	java/lang/Exception
    //   558	578	581	java/lang/Exception
    //   608	628	631	java/lang/Exception
    //   638	662	997	java/lang/Exception
    //   667	755	997	java/lang/Exception
    //   762	773	997	java/lang/Exception
    //   778	891	997	java/lang/Exception
    //   897	943	997	java/lang/Exception
    //   945	958	997	java/lang/Exception
    //   962	971	997	java/lang/Exception
    //   973	988	997	java/lang/Exception
    //   481	524	1004	finally
    //   1005	1008	1004	finally
  }
  
  public boolean isDir(String paramString1, String paramString2, String paramString3)
  {
    paramString1 = b(paramString1, paramString2, paramString3);
    if (paramString1 == null) {
      return false;
    }
    return isDirectory;
  }
  
  public boolean isPagingSupported()
  {
    return true;
  }
  
  public Map<String, NetFileInfo> listFiles(String paramString1, String paramString2, String paramString3, boolean paramBoolean, INetRefreshCallback paramINetRefreshCallback, HashMap<String, Object> paramHashMap)
  {
    return a(paramString1, paramString2, paramString3, paramBoolean, paramINetRefreshCallback, paramHashMap, null);
  }
  
  public boolean mkDirs(String paramString1, String paramString2, String paramString3)
  {
    return createFile(paramString1, paramString2, paramString3, true);
  }
  
  public boolean moveFile(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    return renameFile(paramString1, paramString2, paramString3, paramString4);
  }
  
  public int register(String paramString1, String paramString2, Object[] paramArrayOfObject)
  {
    return 100;
  }
  
  public boolean removeShare(String paramString1, String paramString2, String paramString3, HashMap<String, Object> paramHashMap)
  {
    paramString1 = a(paramString3);
    new File(c() + "/" + paramString1.hashCode() + ".share.info").delete();
    return true;
  }
  
  public boolean renameFile(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    try
    {
      paramString2 = f(paramString1, paramString2);
      if (paramString2 == null)
      {
        l.e("Pcs", "can't get token for rename");
        return false;
      }
      paramString1 = paramString4;
      if (!paramString3.startsWith("/files")) {
        paramString1 = paramString3.substring(0, paramString3.lastIndexOf(">") + 1) + ap.d(paramString4);
      }
      paramString1 = a(paramString1);
      boolean bool = d(paramString2, a(paramString3), paramString1);
      if (bool) {
        return true;
      }
    }
    catch (Exception paramString1) {}
    return false;
  }
  
  public void setConfigDir(String paramString1, String paramString2)
  {
    j = paramString1;
    k = paramString2;
  }
  
  public void setPrivateContent(String paramString1, String paramString2, Object paramObject) {}
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.pcs.PcsFileSystem
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
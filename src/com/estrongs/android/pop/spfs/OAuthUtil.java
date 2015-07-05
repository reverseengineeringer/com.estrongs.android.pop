package com.estrongs.android.pop.spfs;

import com.gmail.yuyang226.flickr.a;
import com.gmail.yuyang226.flickr.d.b;
import com.gmail.yuyang226.flickr.d.c;
import com.gmail.yuyang226.flickr.d.d;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class OAuthUtil
{
  public static final String UTF8 = "UTF-8";
  
  public static URL buildUrl(URL paramURL, List<a> paramList)
  {
    if ((paramList == null) || (paramList.size() == 0)) {
      return paramURL;
    }
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append(paramURL.toString());
    paramURL = paramList.iterator();
    if (paramURL.hasNext()) {
      localStringBuffer.append("?");
    }
    while (paramURL.hasNext())
    {
      paramList = (a)paramURL.next();
      localStringBuffer.append(paramList.a());
      localStringBuffer.append("=");
      paramList = paramList.b();
      if (paramList != null) {
        localStringBuffer.append(d.a(paramList.toString()));
      }
      if (paramURL.hasNext()) {
        localStringBuffer.append("&");
      }
    }
    return new URL(localStringBuffer.toString());
  }
  
  public static String encodeParameters(List<a> paramList)
  {
    if ((paramList == null) || (paramList.isEmpty())) {
      return "";
    }
    StringBuffer localStringBuffer = new StringBuffer();
    int i = 0;
    while (i < paramList.size())
    {
      if (i != 0) {
        localStringBuffer.append("&");
      }
      a locala = (a)paramList.get(i);
      localStringBuffer.append(d.a(locala.a())).append("=").append(d.a(String.valueOf(locala.b())));
      i += 1;
    }
    return localStringBuffer.toString();
  }
  
  public static Map<String, String> getDataAsMap(String paramString)
  {
    HashMap localHashMap = new HashMap();
    if (paramString != null)
    {
      paramString = c.a(paramString, "&");
      int j = paramString.length;
      int i = 0;
      while (i < j)
      {
        String[] arrayOfString = c.a(paramString[i], "=");
        if (arrayOfString.length == 2) {
          localHashMap.put(arrayOfString[0], arrayOfString[1]);
        }
        i += 1;
      }
    }
    return localHashMap;
  }
  
  private static InputStream getInputStream(URL paramURL, List<a> paramList)
  {
    paramURL = (HttpURLConnection)buildUrl(paramURL, paramList).openConnection();
    paramURL.addRequestProperty("Cache-Control", "no-cache,max-age=0");
    paramURL.addRequestProperty("Pragma", "no-cache");
    paramURL.setRequestMethod("GET");
    paramURL.connect();
    return paramURL.getInputStream();
  }
  
  /* Error */
  public static String getLine(URL paramURL, List<a> paramList)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aload_0
    //   3: aload_1
    //   4: invokestatic 147	com/estrongs/android/pop/spfs/OAuthUtil:getInputStream	(Ljava/net/URL;Ljava/util/List;)Ljava/io/InputStream;
    //   7: astore_0
    //   8: new 149	java/io/BufferedReader
    //   11: dup
    //   12: new 151	java/io/InputStreamReader
    //   15: dup
    //   16: aload_0
    //   17: ldc 8
    //   19: invokespecial 154	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;Ljava/lang/String;)V
    //   22: invokespecial 157	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   25: astore_1
    //   26: new 23	java/lang/StringBuffer
    //   29: dup
    //   30: invokespecial 24	java/lang/StringBuffer:<init>	()V
    //   33: astore_2
    //   34: aload_1
    //   35: invokevirtual 160	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   38: astore_3
    //   39: aload_3
    //   40: ifnull +27 -> 67
    //   43: aload_2
    //   44: aload_3
    //   45: invokevirtual 34	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   48: pop
    //   49: goto -15 -> 34
    //   52: astore_3
    //   53: aload_0
    //   54: astore_2
    //   55: aload_3
    //   56: astore_0
    //   57: aload_2
    //   58: invokestatic 165	com/gmail/yuyang226/flickr/d/b:a	(Ljava/io/InputStream;)V
    //   61: aload_1
    //   62: invokestatic 167	com/gmail/yuyang226/flickr/d/b:a	(Ljava/io/Reader;)V
    //   65: aload_0
    //   66: athrow
    //   67: aload_2
    //   68: invokevirtual 69	java/lang/StringBuffer:toString	()Ljava/lang/String;
    //   71: astore_2
    //   72: aload_0
    //   73: invokestatic 165	com/gmail/yuyang226/flickr/d/b:a	(Ljava/io/InputStream;)V
    //   76: aload_1
    //   77: invokestatic 167	com/gmail/yuyang226/flickr/d/b:a	(Ljava/io/Reader;)V
    //   80: aload_2
    //   81: areturn
    //   82: astore_0
    //   83: aconst_null
    //   84: astore_1
    //   85: goto -28 -> 57
    //   88: astore_3
    //   89: aconst_null
    //   90: astore_1
    //   91: aload_0
    //   92: astore_2
    //   93: aload_3
    //   94: astore_0
    //   95: goto -38 -> 57
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	98	0	paramURL	URL
    //   0	98	1	paramList	List<a>
    //   1	92	2	localObject1	Object
    //   38	7	3	str	String
    //   52	4	3	localObject2	Object
    //   88	6	3	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   26	34	52	finally
    //   34	39	52	finally
    //   43	49	52	finally
    //   67	72	52	finally
    //   2	8	82	finally
    //   8	26	88	finally
  }
  
  public static String readFromStream(InputStream paramInputStream)
  {
    try
    {
      localBufferedReader = new BufferedReader(new InputStreamReader(paramInputStream));
      try
      {
        StringBuffer localStringBuffer = new StringBuffer();
        for (;;)
        {
          String str2 = localBufferedReader.readLine();
          if (str2 == null) {
            break;
          }
          localStringBuffer.append(str2);
        }
        b.a(paramInputStream);
      }
      finally {}
    }
    finally
    {
      for (;;)
      {
        String str1;
        BufferedReader localBufferedReader = null;
      }
    }
    b.a(localBufferedReader);
    throw ((Throwable)localObject1);
    str1 = ((StringBuffer)localObject1).toString();
    b.a(paramInputStream);
    b.a(localBufferedReader);
    return str1;
  }
  
  /* Error */
  public static String sendPost(URL paramURL, List<a> paramList)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: aload_0
    //   3: invokevirtual 117	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   6: checkcast 119	java/net/HttpURLConnection
    //   9: astore_0
    //   10: aload_0
    //   11: ldc -79
    //   13: invokevirtual 136	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   16: aload_1
    //   17: invokestatic 179	com/estrongs/android/pop/spfs/OAuthUtil:encodeParameters	(Ljava/util/List;)Ljava/lang/String;
    //   20: ldc 8
    //   22: invokevirtual 183	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   25: astore_3
    //   26: aload_0
    //   27: ldc -71
    //   29: aload_3
    //   30: arraylength
    //   31: invokestatic 190	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   34: invokevirtual 193	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   37: aload_0
    //   38: ldc -61
    //   40: ldc -59
    //   42: invokevirtual 127	java/net/HttpURLConnection:addRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   45: aload_0
    //   46: ldc 121
    //   48: ldc 123
    //   50: invokevirtual 127	java/net/HttpURLConnection:addRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   53: aload_0
    //   54: ldc -127
    //   56: ldc -125
    //   58: invokevirtual 127	java/net/HttpURLConnection:addRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   61: aload_0
    //   62: iconst_0
    //   63: invokevirtual 201	java/net/HttpURLConnection:setUseCaches	(Z)V
    //   66: aload_0
    //   67: iconst_1
    //   68: invokevirtual 204	java/net/HttpURLConnection:setDoOutput	(Z)V
    //   71: aload_0
    //   72: iconst_1
    //   73: invokevirtual 207	java/net/HttpURLConnection:setDoInput	(Z)V
    //   76: aload_0
    //   77: invokevirtual 139	java/net/HttpURLConnection:connect	()V
    //   80: new 209	java/io/DataOutputStream
    //   83: dup
    //   84: aload_0
    //   85: invokevirtual 213	java/net/HttpURLConnection:getOutputStream	()Ljava/io/OutputStream;
    //   88: invokespecial 216	java/io/DataOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   91: astore_1
    //   92: aload_1
    //   93: aload_3
    //   94: invokevirtual 220	java/io/DataOutputStream:write	([B)V
    //   97: aload_1
    //   98: invokevirtual 223	java/io/DataOutputStream:flush	()V
    //   101: aload_1
    //   102: invokevirtual 226	java/io/DataOutputStream:close	()V
    //   105: aload_0
    //   106: invokevirtual 229	java/net/HttpURLConnection:getResponseCode	()I
    //   109: istore_2
    //   110: iload_2
    //   111: sipush 200
    //   114: if_icmpeq +96 -> 210
    //   117: aload_0
    //   118: invokevirtual 232	java/net/HttpURLConnection:getErrorStream	()Ljava/io/InputStream;
    //   121: invokestatic 234	com/estrongs/android/pop/spfs/OAuthUtil:readFromStream	(Ljava/io/InputStream;)Ljava/lang/String;
    //   124: astore_3
    //   125: new 175	java/io/IOException
    //   128: dup
    //   129: new 236	java/lang/StringBuilder
    //   132: dup
    //   133: invokespecial 237	java/lang/StringBuilder:<init>	()V
    //   136: ldc -17
    //   138: invokevirtual 242	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   141: iload_2
    //   142: invokevirtual 245	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   145: ldc -9
    //   147: invokevirtual 242	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   150: aload_0
    //   151: invokevirtual 250	java/net/HttpURLConnection:getResponseMessage	()Ljava/lang/String;
    //   154: invokevirtual 242	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   157: ldc -4
    //   159: invokevirtual 242	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   162: aload_3
    //   163: invokevirtual 242	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   166: invokevirtual 253	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   169: invokespecial 254	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   172: athrow
    //   173: astore 4
    //   175: aload_0
    //   176: astore_3
    //   177: aload 4
    //   179: astore_0
    //   180: aload_1
    //   181: invokestatic 256	com/gmail/yuyang226/flickr/d/b:a	(Ljava/io/OutputStream;)V
    //   184: aload_3
    //   185: ifnull +7 -> 192
    //   188: aload_3
    //   189: invokevirtual 259	java/net/HttpURLConnection:disconnect	()V
    //   192: aload_0
    //   193: athrow
    //   194: astore_3
    //   195: aload_0
    //   196: invokevirtual 232	java/net/HttpURLConnection:getErrorStream	()Ljava/io/InputStream;
    //   199: ifnull +54 -> 253
    //   202: aload_0
    //   203: invokevirtual 229	java/net/HttpURLConnection:getResponseCode	()I
    //   206: istore_2
    //   207: goto -97 -> 110
    //   210: aload_0
    //   211: invokevirtual 142	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   214: invokestatic 234	com/estrongs/android/pop/spfs/OAuthUtil:readFromStream	(Ljava/io/InputStream;)Ljava/lang/String;
    //   217: invokevirtual 262	java/lang/String:trim	()Ljava/lang/String;
    //   220: astore_3
    //   221: aload_1
    //   222: invokestatic 256	com/gmail/yuyang226/flickr/d/b:a	(Ljava/io/OutputStream;)V
    //   225: aload_0
    //   226: ifnull +7 -> 233
    //   229: aload_0
    //   230: invokevirtual 259	java/net/HttpURLConnection:disconnect	()V
    //   233: aload_3
    //   234: areturn
    //   235: astore_0
    //   236: aconst_null
    //   237: astore_1
    //   238: goto -58 -> 180
    //   241: astore 4
    //   243: aconst_null
    //   244: astore_1
    //   245: aload_0
    //   246: astore_3
    //   247: aload 4
    //   249: astore_0
    //   250: goto -70 -> 180
    //   253: sipush 200
    //   256: istore_2
    //   257: goto -147 -> 110
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	260	0	paramURL	URL
    //   0	260	1	paramList	List<a>
    //   109	148	2	i	int
    //   1	188	3	localObject1	Object
    //   194	1	3	localIOException	java.io.IOException
    //   220	27	3	localObject2	Object
    //   173	5	4	localObject3	Object
    //   241	7	4	localObject4	Object
    // Exception table:
    //   from	to	target	type
    //   92	105	173	finally
    //   105	110	173	finally
    //   117	173	173	finally
    //   195	207	173	finally
    //   210	221	173	finally
    //   105	110	194	java/io/IOException
    //   2	10	235	finally
    //   10	92	241	finally
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.spfs.OAuthUtil
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
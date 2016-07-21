package com.dianxinos.lockscreen.b;

import android.content.Context;
import android.net.ConnectivityManager;
import android.text.TextUtils;
import com.dianxinos.lockscreen.c.g;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.util.Iterator;
import java.util.List;
import org.apache.http.NameValuePair;
import org.json.JSONException;
import org.json.JSONObject;

public class e
{
  private Context a;
  
  public e(Context paramContext)
  {
    a = paramContext;
  }
  
  private String a(String paramString1, String paramString2)
  {
    return paramString1 + "?" + paramString2;
  }
  
  private void a(HttpURLConnection paramHttpURLConnection)
  {
    paramHttpURLConnection.setRequestMethod("POST");
    paramHttpURLConnection.setRequestProperty("Accept-Encoding", "gzip, deflate");
    paramHttpURLConnection.setRequestProperty("User-Agent", "dianxinos-user-agent");
    paramHttpURLConnection.setRequestProperty("accept", "*/*");
    paramHttpURLConnection.setRequestProperty("Connection", "Keep-Alive");
    paramHttpURLConnection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
    paramHttpURLConnection.setConnectTimeout(45000);
    paramHttpURLConnection.setReadTimeout(30000);
    paramHttpURLConnection.setDoOutput(true);
    paramHttpURLConnection.setDoInput(true);
    paramHttpURLConnection.setUseCaches(false);
  }
  
  private boolean a()
  {
    return ((ConnectivityManager)a.getSystemService("connectivity")).getActiveNetworkInfo() != null;
  }
  
  private byte[] a(List<NameValuePair> paramList)
  {
    Object localObject = null;
    try
    {
      String str = b(paramList);
      g.a("LockScreenPostRequest", "params is :" + str);
      paramList = (List<NameValuePair>)localObject;
      if (!TextUtils.isEmpty(str)) {
        paramList = str.getBytes("UTF-8");
      }
      return paramList;
    }
    catch (UnsupportedEncodingException paramList)
    {
      return null;
    }
    catch (JSONException paramList) {}
    return null;
  }
  
  private String b(List<NameValuePair> paramList)
  {
    JSONObject localJSONObject = new JSONObject();
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      NameValuePair localNameValuePair = (NameValuePair)paramList.next();
      localJSONObject.put(localNameValuePair.getName(), localNameValuePair.getValue());
    }
    return localJSONObject.toString();
  }
  
  public a a(String paramString1, List<NameValuePair> paramList, String paramString2)
  {
    return a(paramString1, a(paramList), paramString2);
  }
  
  /* Error */
  public a a(String paramString1, byte[] paramArrayOfByte, String paramString2)
  {
    // Byte code:
    //   0: ldc 105
    //   2: new 17	java/lang/StringBuilder
    //   5: dup
    //   6: invokespecial 18	java/lang/StringBuilder:<init>	()V
    //   9: ldc -86
    //   11: invokevirtual 22	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   14: aload_1
    //   15: invokevirtual 22	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   18: invokevirtual 28	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   21: invokestatic 111	com/dianxinos/lockscreen/c/g:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   24: aload_0
    //   25: invokespecial 172	com/dianxinos/lockscreen/b/e:a	()Z
    //   28: ifne +12 -> 40
    //   31: ldc 105
    //   33: ldc -82
    //   35: invokestatic 111	com/dianxinos/lockscreen/c/g:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   38: aconst_null
    //   39: areturn
    //   40: new 17	java/lang/StringBuilder
    //   43: dup
    //   44: invokespecial 18	java/lang/StringBuilder:<init>	()V
    //   47: astore 5
    //   49: new 176	java/net/URL
    //   52: dup
    //   53: aload_0
    //   54: aload_1
    //   55: aload_3
    //   56: invokespecial 178	com/dianxinos/lockscreen/b/e:a	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   59: invokespecial 180	java/net/URL:<init>	(Ljava/lang/String;)V
    //   62: invokevirtual 184	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   65: checkcast 33	java/net/HttpURLConnection
    //   68: astore_1
    //   69: aload_0
    //   70: aload_1
    //   71: invokespecial 186	com/dianxinos/lockscreen/b/e:a	(Ljava/net/HttpURLConnection;)V
    //   74: aload_1
    //   75: invokevirtual 189	java/net/HttpURLConnection:connect	()V
    //   78: aload_2
    //   79: ifnull +24 -> 103
    //   82: new 191	java/io/BufferedOutputStream
    //   85: dup
    //   86: aload_1
    //   87: invokevirtual 195	java/net/HttpURLConnection:getOutputStream	()Ljava/io/OutputStream;
    //   90: invokespecial 198	java/io/BufferedOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   93: astore_3
    //   94: aload_3
    //   95: aload_2
    //   96: invokevirtual 202	java/io/BufferedOutputStream:write	([B)V
    //   99: aload_3
    //   100: invokevirtual 205	java/io/BufferedOutputStream:flush	()V
    //   103: aload_1
    //   104: invokevirtual 209	java/net/HttpURLConnection:getResponseCode	()I
    //   107: istore 4
    //   109: aload_1
    //   110: invokevirtual 212	java/net/HttpURLConnection:getContentEncoding	()Ljava/lang/String;
    //   113: astore_2
    //   114: ldc 105
    //   116: ldc -42
    //   118: iconst_2
    //   119: anewarray 4	java/lang/Object
    //   122: dup
    //   123: iconst_0
    //   124: iload 4
    //   126: invokestatic 220	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   129: aastore
    //   130: dup
    //   131: iconst_1
    //   132: aload_2
    //   133: aastore
    //   134: invokestatic 223	com/dianxinos/lockscreen/c/g:a	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   137: aload_2
    //   138: ifnull +97 -> 235
    //   141: aload_2
    //   142: ldc -31
    //   144: invokevirtual 229	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   147: iconst_m1
    //   148: if_icmpeq +87 -> 235
    //   151: new 231	java/util/zip/GZIPInputStream
    //   154: dup
    //   155: aload_1
    //   156: invokevirtual 235	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   159: invokespecial 238	java/util/zip/GZIPInputStream:<init>	(Ljava/io/InputStream;)V
    //   162: astore_2
    //   163: new 240	java/io/BufferedReader
    //   166: dup
    //   167: new 242	java/io/InputStreamReader
    //   170: dup
    //   171: aload_2
    //   172: invokespecial 243	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   175: invokespecial 246	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   178: astore_3
    //   179: aload_3
    //   180: invokevirtual 249	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   183: astore_2
    //   184: aload_2
    //   185: ifnull +58 -> 243
    //   188: aload 5
    //   190: aload_2
    //   191: invokevirtual 22	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   194: pop
    //   195: goto -16 -> 179
    //   198: astore_2
    //   199: aload_1
    //   200: astore_2
    //   201: aload_3
    //   202: astore_1
    //   203: aload_2
    //   204: ifnull +7 -> 211
    //   207: aload_2
    //   208: invokevirtual 252	java/net/HttpURLConnection:disconnect	()V
    //   211: iconst_0
    //   212: ifeq +11 -> 223
    //   215: new 254	java/lang/NullPointerException
    //   218: dup
    //   219: invokespecial 255	java/lang/NullPointerException:<init>	()V
    //   222: athrow
    //   223: aload_1
    //   224: ifnull +7 -> 231
    //   227: aload_1
    //   228: invokevirtual 258	java/io/BufferedReader:close	()V
    //   231: aconst_null
    //   232: astore_1
    //   233: aload_1
    //   234: areturn
    //   235: aload_1
    //   236: invokevirtual 235	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   239: astore_2
    //   240: goto -77 -> 163
    //   243: aload 5
    //   245: invokevirtual 28	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   248: astore_2
    //   249: ldc 105
    //   251: new 17	java/lang/StringBuilder
    //   254: dup
    //   255: invokespecial 18	java/lang/StringBuilder:<init>	()V
    //   258: ldc_w 260
    //   261: invokevirtual 22	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   264: aload_2
    //   265: invokevirtual 22	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   268: invokevirtual 28	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   271: invokestatic 111	com/dianxinos/lockscreen/c/g:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   274: new 262	com/dianxinos/lockscreen/b/a
    //   277: dup
    //   278: iload 4
    //   280: aload_2
    //   281: invokespecial 265	com/dianxinos/lockscreen/b/a:<init>	(ILjava/lang/String;)V
    //   284: astore_2
    //   285: aload_1
    //   286: ifnull +7 -> 293
    //   289: aload_1
    //   290: invokevirtual 252	java/net/HttpURLConnection:disconnect	()V
    //   293: iconst_0
    //   294: ifeq +11 -> 305
    //   297: new 254	java/lang/NullPointerException
    //   300: dup
    //   301: invokespecial 255	java/lang/NullPointerException:<init>	()V
    //   304: athrow
    //   305: aload_3
    //   306: ifnull +7 -> 313
    //   309: aload_3
    //   310: invokevirtual 258	java/io/BufferedReader:close	()V
    //   313: aload_2
    //   314: astore_1
    //   315: goto -82 -> 233
    //   318: astore_1
    //   319: aload_2
    //   320: astore_1
    //   321: goto -88 -> 233
    //   324: astore_1
    //   325: aconst_null
    //   326: astore_1
    //   327: goto -94 -> 233
    //   330: astore_1
    //   331: aconst_null
    //   332: astore_3
    //   333: aconst_null
    //   334: astore_2
    //   335: aload_2
    //   336: ifnull +7 -> 343
    //   339: aload_2
    //   340: invokevirtual 252	java/net/HttpURLConnection:disconnect	()V
    //   343: iconst_0
    //   344: ifeq +11 -> 355
    //   347: new 254	java/lang/NullPointerException
    //   350: dup
    //   351: invokespecial 255	java/lang/NullPointerException:<init>	()V
    //   354: athrow
    //   355: aload_3
    //   356: ifnull +7 -> 363
    //   359: aload_3
    //   360: invokevirtual 258	java/io/BufferedReader:close	()V
    //   363: aload_1
    //   364: athrow
    //   365: astore_2
    //   366: goto -3 -> 363
    //   369: astore 5
    //   371: aconst_null
    //   372: astore_3
    //   373: aload_1
    //   374: astore_2
    //   375: aload 5
    //   377: astore_1
    //   378: goto -43 -> 335
    //   381: astore 5
    //   383: aload_1
    //   384: astore_2
    //   385: aload 5
    //   387: astore_1
    //   388: goto -53 -> 335
    //   391: astore_1
    //   392: aconst_null
    //   393: astore_1
    //   394: aconst_null
    //   395: astore_2
    //   396: goto -193 -> 203
    //   399: astore_2
    //   400: aload_1
    //   401: astore_2
    //   402: aconst_null
    //   403: astore_1
    //   404: goto -201 -> 203
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	407	0	this	e
    //   0	407	1	paramString1	String
    //   0	407	2	paramArrayOfByte	byte[]
    //   0	407	3	paramString2	String
    //   107	172	4	i	int
    //   47	197	5	localStringBuilder	StringBuilder
    //   369	7	5	localObject1	Object
    //   381	5	5	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   179	184	198	java/io/IOException
    //   188	195	198	java/io/IOException
    //   243	285	198	java/io/IOException
    //   297	305	318	java/io/IOException
    //   309	313	318	java/io/IOException
    //   215	223	324	java/io/IOException
    //   227	231	324	java/io/IOException
    //   49	69	330	finally
    //   347	355	365	java/io/IOException
    //   359	363	365	java/io/IOException
    //   69	78	369	finally
    //   82	103	369	finally
    //   103	137	369	finally
    //   141	163	369	finally
    //   163	179	369	finally
    //   235	240	369	finally
    //   179	184	381	finally
    //   188	195	381	finally
    //   243	285	381	finally
    //   49	69	391	java/io/IOException
    //   69	78	399	java/io/IOException
    //   82	103	399	java/io/IOException
    //   103	137	399	java/io/IOException
    //   141	163	399	java/io/IOException
    //   163	179	399	java/io/IOException
    //   235	240	399	java/io/IOException
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.lockscreen.b.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
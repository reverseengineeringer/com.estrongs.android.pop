package com.dianxinos.dxservice.a;

import android.content.Context;
import android.net.Uri;
import android.util.Pair;
import com.dianxinos.dxservice.core.a;
import com.dianxinos.dxservice.stat.al;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.List;
import org.apache.http.HttpHost;
import org.apache.http.NameValuePair;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.params.HttpClientParams;
import org.apache.http.conn.params.ConnRouteParams;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.params.HttpProtocolParams;
import org.json.JSONObject;

public class f
{
  private static Uri a = Uri.parse("content://telephony/carriers/preferapn");
  private Context b;
  private String c;
  private String d;
  private HttpPost e;
  
  public f(Context paramContext, String paramString1, String paramString2, String paramString3)
  {
    b = paramContext;
    c = paramString2;
    d = paramString3;
    e = new HttpPost(paramString1);
  }
  
  public static DefaultHttpClient a(Context paramContext, HttpHost paramHttpHost, HttpParams paramHttpParams)
  {
    if (paramHttpHost != null)
    {
      ConnRouteParams.setDefaultProxy(paramHttpParams, paramHttpHost);
      a(paramContext, paramHttpParams);
    }
    HttpConnectionParams.setConnectionTimeout(paramHttpParams, 60000);
    HttpConnectionParams.setSoTimeout(paramHttpParams, 60000);
    return new DefaultHttpClient(paramHttpParams);
  }
  
  public static DefaultHttpClient a(String paramString, Context paramContext)
  {
    paramContext = new BasicHttpParams();
    HttpConnectionParams.setStaleCheckingEnabled(paramContext, false);
    HttpConnectionParams.setConnectionTimeout(paramContext, 60000);
    HttpConnectionParams.setSoTimeout(paramContext, 60000);
    HttpConnectionParams.setSocketBufferSize(paramContext, 8192);
    HttpClientParams.setRedirecting(paramContext, false);
    HttpProtocolParams.setUserAgent(paramContext, paramString);
    paramString = new SchemeRegistry();
    paramString.register(new Scheme("http", PlainSocketFactory.getSocketFactory(), 80));
    return new DefaultHttpClient(new ThreadSafeClientConnManager(paramContext, paramString), paramContext);
  }
  
  /* Error */
  public static final void a(Context paramContext, HttpParams paramHttpParams)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 126	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   4: getstatic 25	com/dianxinos/dxservice/a/f:a	Landroid/net/Uri;
    //   7: aconst_null
    //   8: aconst_null
    //   9: aconst_null
    //   10: aconst_null
    //   11: invokevirtual 132	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   14: astore 5
    //   16: aload 5
    //   18: ifnull +20 -> 38
    //   21: aload 5
    //   23: astore_0
    //   24: aload 5
    //   26: invokeinterface 138 1 0
    //   31: istore 4
    //   33: iload 4
    //   35: ifne +16 -> 51
    //   38: aload 5
    //   40: ifnull +10 -> 50
    //   43: aload 5
    //   45: invokeinterface 141 1 0
    //   50: return
    //   51: aload 5
    //   53: astore_0
    //   54: aload 5
    //   56: ldc -113
    //   58: invokeinterface 147 2 0
    //   63: istore_2
    //   64: aload 5
    //   66: astore_0
    //   67: aload 5
    //   69: ldc -107
    //   71: invokeinterface 147 2 0
    //   76: istore_3
    //   77: iload_2
    //   78: iflt +7 -> 85
    //   81: iload_3
    //   82: ifge +16 -> 98
    //   85: aload 5
    //   87: ifnull -37 -> 50
    //   90: aload 5
    //   92: invokeinterface 141 1 0
    //   97: return
    //   98: aload 5
    //   100: astore_0
    //   101: aload 5
    //   103: iload_2
    //   104: invokeinterface 153 2 0
    //   109: astore 6
    //   111: aload 5
    //   113: astore_0
    //   114: aload 5
    //   116: iload_3
    //   117: invokeinterface 153 2 0
    //   122: astore 7
    //   124: aload 5
    //   126: astore_0
    //   127: aload 6
    //   129: invokestatic 159	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   132: ifeq +31 -> 163
    //   135: aload 5
    //   137: astore_0
    //   138: aload 7
    //   140: invokestatic 159	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   143: istore 4
    //   145: iload 4
    //   147: ifeq +16 -> 163
    //   150: aload 5
    //   152: ifnull -102 -> 50
    //   155: aload 5
    //   157: invokeinterface 141 1 0
    //   162: return
    //   163: aload 5
    //   165: astore_0
    //   166: new 161	java/lang/String
    //   169: dup
    //   170: new 163	java/lang/StringBuilder
    //   173: dup
    //   174: invokespecial 164	java/lang/StringBuilder:<init>	()V
    //   177: aload 6
    //   179: invokevirtual 168	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   182: ldc -86
    //   184: invokevirtual 168	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   187: aload 7
    //   189: invokevirtual 168	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   192: invokevirtual 174	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   195: invokevirtual 178	java/lang/String:getBytes	()[B
    //   198: invokestatic 183	dianxinos/dxstat/org/apache/commons/codec/a/a:a	([B)[B
    //   201: invokespecial 186	java/lang/String:<init>	([B)V
    //   204: astore 6
    //   206: aload 5
    //   208: astore_0
    //   209: aload_1
    //   210: ldc -68
    //   212: new 163	java/lang/StringBuilder
    //   215: dup
    //   216: invokespecial 164	java/lang/StringBuilder:<init>	()V
    //   219: ldc -66
    //   221: invokevirtual 168	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   224: aload 6
    //   226: invokevirtual 168	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   229: invokevirtual 174	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   232: invokeinterface 196 3 0
    //   237: pop
    //   238: aload 5
    //   240: ifnull -190 -> 50
    //   243: aload 5
    //   245: invokeinterface 141 1 0
    //   250: return
    //   251: astore_1
    //   252: aconst_null
    //   253: astore 5
    //   255: aload 5
    //   257: astore_0
    //   258: ldc -58
    //   260: aload_1
    //   261: invokestatic 204	android/util/Log:w	(Ljava/lang/String;Ljava/lang/Throwable;)I
    //   264: pop
    //   265: aload 5
    //   267: ifnull -217 -> 50
    //   270: aload 5
    //   272: invokeinterface 141 1 0
    //   277: return
    //   278: astore_1
    //   279: aconst_null
    //   280: astore_0
    //   281: aload_0
    //   282: ifnull +9 -> 291
    //   285: aload_0
    //   286: invokeinterface 141 1 0
    //   291: aload_1
    //   292: athrow
    //   293: astore_1
    //   294: goto -13 -> 281
    //   297: astore_1
    //   298: goto -43 -> 255
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	301	0	paramContext	Context
    //   0	301	1	paramHttpParams	HttpParams
    //   63	41	2	i	int
    //   76	41	3	j	int
    //   31	115	4	bool	boolean
    //   14	257	5	localCursor	android.database.Cursor
    //   109	116	6	str1	String
    //   122	66	7	str2	String
    // Exception table:
    //   from	to	target	type
    //   0	16	251	java/lang/Exception
    //   0	16	278	finally
    //   24	33	293	finally
    //   54	64	293	finally
    //   67	77	293	finally
    //   101	111	293	finally
    //   114	124	293	finally
    //   127	135	293	finally
    //   138	145	293	finally
    //   166	206	293	finally
    //   209	238	293	finally
    //   258	265	293	finally
    //   24	33	297	java/lang/Exception
    //   54	64	297	java/lang/Exception
    //   67	77	297	java/lang/Exception
    //   101	111	297	java/lang/Exception
    //   114	124	297	java/lang/Exception
    //   127	135	297	java/lang/Exception
    //   138	145	297	java/lang/Exception
    //   166	206	297	java/lang/Exception
    //   209	238	297	java/lang/Exception
  }
  
  private void a(Object paramObject)
  {
    if (c.g) {}
    try
    {
      JSONObject localJSONObject = new JSONObject();
      localJSONObject.put("js_rsprs", paramObject);
      a.a(b).a("stat_self_rsprs", 0, localJSONObject);
      return;
    }
    catch (Exception paramObject) {}
  }
  
  public void a(String paramString1, String paramString2)
  {
    try
    {
      e.addHeader(paramString1, URLEncoder.encode(paramString2, "UTF-8"));
      return;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      e.addHeader(paramString1, paramString2);
    }
  }
  
  public boolean a(List<NameValuePair> paramList)
  {
    return a(paramList, null);
  }
  
  public boolean a(List<NameValuePair> paramList, List<Pair<String, byte[]>> paramList1)
  {
    return al.b(b(paramList, paramList1));
  }
  
  /* Error */
  public int b(List<NameValuePair> paramList, List<Pair<String, byte[]>> paramList1)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 8
    //   3: aconst_null
    //   4: astore 9
    //   6: aconst_null
    //   7: astore 10
    //   9: aconst_null
    //   10: astore 11
    //   12: aconst_null
    //   13: astore 12
    //   15: aconst_null
    //   16: astore 7
    //   18: iconst_0
    //   19: istore 5
    //   21: aload 12
    //   23: astore 6
    //   25: aload_0
    //   26: getfield 43	com/dianxinos/dxservice/a/f:e	Lorg/apache/http/client/methods/HttpPost;
    //   29: invokevirtual 271	org/apache/http/client/methods/HttpPost:getParams	()Lorg/apache/http/params/HttpParams;
    //   32: ldc_w 273
    //   35: ldc -21
    //   37: invokeinterface 196 3 0
    //   42: pop
    //   43: aload_2
    //   44: ifnonnull +419 -> 463
    //   47: aload 12
    //   49: astore 6
    //   51: aload_0
    //   52: getfield 43	com/dianxinos/dxservice/a/f:e	Lorg/apache/http/client/methods/HttpPost;
    //   55: new 275	org/apache/http/client/entity/UrlEncodedFormEntity
    //   58: dup
    //   59: aload_1
    //   60: ldc -21
    //   62: invokespecial 278	org/apache/http/client/entity/UrlEncodedFormEntity:<init>	(Ljava/util/List;Ljava/lang/String;)V
    //   65: invokevirtual 282	org/apache/http/client/methods/HttpPost:setEntity	(Lorg/apache/http/HttpEntity;)V
    //   68: aload 12
    //   70: astore 6
    //   72: getstatic 284	com/dianxinos/dxservice/a/c:d	Z
    //   75: ifeq +62 -> 137
    //   78: aload 12
    //   80: astore 6
    //   82: aload_0
    //   83: getfield 36	com/dianxinos/dxservice/a/f:d	Ljava/lang/String;
    //   86: new 163	java/lang/StringBuilder
    //   89: dup
    //   90: invokespecial 164	java/lang/StringBuilder:<init>	()V
    //   93: ldc_w 286
    //   96: invokevirtual 168	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   99: aload_0
    //   100: getfield 43	com/dianxinos/dxservice/a/f:e	Lorg/apache/http/client/methods/HttpPost;
    //   103: invokevirtual 290	org/apache/http/client/methods/HttpPost:getURI	()Ljava/net/URI;
    //   106: invokevirtual 293	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   109: ldc_w 295
    //   112: invokevirtual 168	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   115: aload_0
    //   116: getfield 43	com/dianxinos/dxservice/a/f:e	Lorg/apache/http/client/methods/HttpPost;
    //   119: invokevirtual 299	org/apache/http/client/methods/HttpPost:getEntity	()Lorg/apache/http/HttpEntity;
    //   122: invokeinterface 305 1 0
    //   127: invokevirtual 308	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   130: invokevirtual 174	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   133: invokestatic 312	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   136: pop
    //   137: aload 12
    //   139: astore 6
    //   141: aload_0
    //   142: getfield 32	com/dianxinos/dxservice/a/f:b	Landroid/content/Context;
    //   145: ldc_w 314
    //   148: invokevirtual 318	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   151: checkcast 320	android/net/ConnectivityManager
    //   154: astore_1
    //   155: aload_1
    //   156: ifnonnull +413 -> 569
    //   159: aconst_null
    //   160: astore_1
    //   161: aload_1
    //   162: ifnull +828 -> 990
    //   165: aload 12
    //   167: astore 6
    //   169: aload_1
    //   170: invokevirtual 326	android/net/NetworkInfo:getType	()I
    //   173: iconst_1
    //   174: if_icmpeq +816 -> 990
    //   177: aload 12
    //   179: astore 6
    //   181: aload_0
    //   182: getfield 32	com/dianxinos/dxservice/a/f:b	Landroid/content/Context;
    //   185: invokestatic 332	android/net/Proxy:getHost	(Landroid/content/Context;)Ljava/lang/String;
    //   188: astore_1
    //   189: aload 12
    //   191: astore 6
    //   193: aload_0
    //   194: getfield 32	com/dianxinos/dxservice/a/f:b	Landroid/content/Context;
    //   197: invokestatic 336	android/net/Proxy:getPort	(Landroid/content/Context;)I
    //   200: istore 4
    //   202: aload_1
    //   203: ifnull +378 -> 581
    //   206: iload 4
    //   208: ifle +373 -> 581
    //   211: iconst_1
    //   212: istore_3
    //   213: goto +787 -> 1000
    //   216: iload_3
    //   217: ifeq +768 -> 985
    //   220: aload 12
    //   222: astore 6
    //   224: new 338	org/apache/http/HttpHost
    //   227: dup
    //   228: aload_1
    //   229: iload 4
    //   231: invokespecial 341	org/apache/http/HttpHost:<init>	(Ljava/lang/String;I)V
    //   234: astore_1
    //   235: aload 12
    //   237: astore 6
    //   239: aload_0
    //   240: getfield 43	com/dianxinos/dxservice/a/f:e	Lorg/apache/http/client/methods/HttpPost;
    //   243: invokevirtual 271	org/apache/http/client/methods/HttpPost:getParams	()Lorg/apache/http/params/HttpParams;
    //   246: astore_2
    //   247: aload 12
    //   249: astore 6
    //   251: aload_0
    //   252: getfield 32	com/dianxinos/dxservice/a/f:b	Landroid/content/Context;
    //   255: aload_1
    //   256: aload_2
    //   257: invokestatic 343	com/dianxinos/dxservice/a/f:a	(Landroid/content/Context;Lorg/apache/http/HttpHost;Lorg/apache/http/params/HttpParams;)Lorg/apache/http/impl/client/DefaultHttpClient;
    //   260: astore_1
    //   261: aload_1
    //   262: astore_2
    //   263: aload_1
    //   264: ifnonnull +30 -> 294
    //   267: aload_1
    //   268: astore 6
    //   270: aload_1
    //   271: astore 7
    //   273: aload_1
    //   274: astore 8
    //   276: aload_1
    //   277: astore 9
    //   279: aload_1
    //   280: astore 10
    //   282: aload_1
    //   283: astore 11
    //   285: aload_0
    //   286: getfield 34	com/dianxinos/dxservice/a/f:c	Ljava/lang/String;
    //   289: aconst_null
    //   290: invokestatic 345	com/dianxinos/dxservice/a/f:a	(Ljava/lang/String;Landroid/content/Context;)Lorg/apache/http/impl/client/DefaultHttpClient;
    //   293: astore_2
    //   294: aload_2
    //   295: astore 6
    //   297: aload_2
    //   298: astore 7
    //   300: aload_2
    //   301: astore 8
    //   303: aload_2
    //   304: astore 9
    //   306: aload_2
    //   307: astore 10
    //   309: aload_2
    //   310: astore 11
    //   312: aload_2
    //   313: astore_1
    //   314: aload_2
    //   315: aload_0
    //   316: getfield 43	com/dianxinos/dxservice/a/f:e	Lorg/apache/http/client/methods/HttpPost;
    //   319: invokevirtual 349	org/apache/http/impl/client/DefaultHttpClient:execute	(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    //   322: astore 12
    //   324: aload_2
    //   325: astore 6
    //   327: aload_2
    //   328: astore 7
    //   330: aload_2
    //   331: astore 8
    //   333: aload_2
    //   334: astore 9
    //   336: aload_2
    //   337: astore 10
    //   339: aload_2
    //   340: astore 11
    //   342: aload_2
    //   343: astore_1
    //   344: aload 12
    //   346: invokeinterface 355 1 0
    //   351: ifnonnull +235 -> 586
    //   354: aload_2
    //   355: astore 6
    //   357: aload_2
    //   358: astore 7
    //   360: aload_2
    //   361: astore 8
    //   363: aload_2
    //   364: astore 9
    //   366: aload_2
    //   367: astore 10
    //   369: aload_2
    //   370: astore 11
    //   372: aload_2
    //   373: astore_1
    //   374: getstatic 357	com/dianxinos/dxservice/a/c:e	Z
    //   377: ifeq +34 -> 411
    //   380: aload_2
    //   381: astore 6
    //   383: aload_2
    //   384: astore 7
    //   386: aload_2
    //   387: astore 8
    //   389: aload_2
    //   390: astore 9
    //   392: aload_2
    //   393: astore 10
    //   395: aload_2
    //   396: astore 11
    //   398: aload_2
    //   399: astore_1
    //   400: aload_0
    //   401: getfield 36	com/dianxinos/dxservice/a/f:d	Ljava/lang/String;
    //   404: ldc_w 359
    //   407: invokestatic 361	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   410: pop
    //   411: aload_2
    //   412: astore 6
    //   414: aload_2
    //   415: astore 7
    //   417: aload_2
    //   418: astore 8
    //   420: aload_2
    //   421: astore 9
    //   423: aload_2
    //   424: astore 10
    //   426: aload_2
    //   427: astore 11
    //   429: aload_2
    //   430: astore_1
    //   431: aload_0
    //   432: ldc_w 363
    //   435: invokespecial 365	com/dianxinos/dxservice/a/f:a	(Ljava/lang/Object;)V
    //   438: bipush -2
    //   440: istore 4
    //   442: iload 4
    //   444: istore_3
    //   445: aload_2
    //   446: ifnull +15 -> 461
    //   449: aload_2
    //   450: invokevirtual 369	org/apache/http/impl/client/DefaultHttpClient:getConnectionManager	()Lorg/apache/http/conn/ClientConnectionManager;
    //   453: invokeinterface 374 1 0
    //   458: iload 4
    //   460: istore_3
    //   461: iload_3
    //   462: ireturn
    //   463: aload_1
    //   464: ifnull +16 -> 480
    //   467: aload 12
    //   469: astore 6
    //   471: aload_1
    //   472: invokeinterface 378 1 0
    //   477: ifeq -409 -> 68
    //   480: aload 12
    //   482: astore 6
    //   484: aload_2
    //   485: invokeinterface 381 1 0
    //   490: iconst_1
    //   491: if_icmpne -423 -> 68
    //   494: aload 12
    //   496: astore 6
    //   498: aload_0
    //   499: getfield 43	com/dianxinos/dxservice/a/f:e	Lorg/apache/http/client/methods/HttpPost;
    //   502: new 383	org/apache/http/entity/ByteArrayEntity
    //   505: dup
    //   506: aload_2
    //   507: iconst_0
    //   508: invokeinterface 387 2 0
    //   513: checkcast 389	android/util/Pair
    //   516: getfield 393	android/util/Pair:second	Ljava/lang/Object;
    //   519: checkcast 395	[B
    //   522: invokespecial 396	org/apache/http/entity/ByteArrayEntity:<init>	([B)V
    //   525: invokevirtual 282	org/apache/http/client/methods/HttpPost:setEntity	(Lorg/apache/http/HttpEntity;)V
    //   528: goto -460 -> 68
    //   531: astore_1
    //   532: aconst_null
    //   533: astore_1
    //   534: aload_1
    //   535: astore 6
    //   537: aload_0
    //   538: ldc_w 398
    //   541: invokespecial 365	com/dianxinos/dxservice/a/f:a	(Ljava/lang/Object;)V
    //   544: aload_1
    //   545: ifnull +12 -> 557
    //   548: aload_1
    //   549: invokevirtual 369	org/apache/http/impl/client/DefaultHttpClient:getConnectionManager	()Lorg/apache/http/conn/ClientConnectionManager;
    //   552: invokeinterface 374 1 0
    //   557: aload_0
    //   558: getfield 32	com/dianxinos/dxservice/a/f:b	Landroid/content/Context;
    //   561: invokestatic 401	com/dianxinos/dxservice/a/c:a	(Landroid/content/Context;)Z
    //   564: ifeq +375 -> 939
    //   567: iconst_m1
    //   568: ireturn
    //   569: aload 12
    //   571: astore 6
    //   573: aload_1
    //   574: invokevirtual 405	android/net/ConnectivityManager:getActiveNetworkInfo	()Landroid/net/NetworkInfo;
    //   577: astore_1
    //   578: goto -417 -> 161
    //   581: iconst_0
    //   582: istore_3
    //   583: goto +417 -> 1000
    //   586: aload_2
    //   587: astore 6
    //   589: aload_2
    //   590: astore 7
    //   592: aload_2
    //   593: astore 8
    //   595: aload_2
    //   596: astore 9
    //   598: aload_2
    //   599: astore 10
    //   601: aload_2
    //   602: astore 11
    //   604: aload_2
    //   605: astore_1
    //   606: aload 12
    //   608: invokeinterface 355 1 0
    //   613: invokeinterface 410 1 0
    //   618: istore_3
    //   619: iload_3
    //   620: sipush 200
    //   623: if_icmpeq +130 -> 753
    //   626: aload_2
    //   627: astore 6
    //   629: aload_2
    //   630: astore 7
    //   632: aload_2
    //   633: astore 8
    //   635: aload_2
    //   636: astore 9
    //   638: aload_2
    //   639: astore 10
    //   641: aload_2
    //   642: astore 11
    //   644: aload_2
    //   645: astore_1
    //   646: getstatic 357	com/dianxinos/dxservice/a/c:e	Z
    //   649: ifeq +57 -> 706
    //   652: aload_2
    //   653: astore 6
    //   655: aload_2
    //   656: astore 7
    //   658: aload_2
    //   659: astore 8
    //   661: aload_2
    //   662: astore 9
    //   664: aload_2
    //   665: astore 10
    //   667: aload_2
    //   668: astore 11
    //   670: aload_2
    //   671: astore_1
    //   672: aload_0
    //   673: getfield 36	com/dianxinos/dxservice/a/f:d	Ljava/lang/String;
    //   676: new 163	java/lang/StringBuilder
    //   679: dup
    //   680: invokespecial 164	java/lang/StringBuilder:<init>	()V
    //   683: ldc_w 412
    //   686: invokevirtual 168	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   689: iload_3
    //   690: invokevirtual 415	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   693: ldc_w 417
    //   696: invokevirtual 168	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   699: invokevirtual 174	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   702: invokestatic 419	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;)I
    //   705: pop
    //   706: aload_2
    //   707: astore 6
    //   709: aload_2
    //   710: astore 7
    //   712: aload_2
    //   713: astore 8
    //   715: aload_2
    //   716: astore 9
    //   718: aload_2
    //   719: astore 10
    //   721: aload_2
    //   722: astore 11
    //   724: aload_2
    //   725: astore_1
    //   726: aload_0
    //   727: iload_3
    //   728: invokestatic 425	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   731: invokespecial 365	com/dianxinos/dxservice/a/f:a	(Ljava/lang/Object;)V
    //   734: bipush -3
    //   736: istore_3
    //   737: aload_2
    //   738: ifnull -277 -> 461
    //   741: aload_2
    //   742: invokevirtual 369	org/apache/http/impl/client/DefaultHttpClient:getConnectionManager	()Lorg/apache/http/conn/ClientConnectionManager;
    //   745: invokeinterface 374 1 0
    //   750: bipush -3
    //   752: ireturn
    //   753: iload 5
    //   755: istore_3
    //   756: aload_2
    //   757: ifnull -296 -> 461
    //   760: aload_2
    //   761: invokevirtual 369	org/apache/http/impl/client/DefaultHttpClient:getConnectionManager	()Lorg/apache/http/conn/ClientConnectionManager;
    //   764: invokeinterface 374 1 0
    //   769: iconst_0
    //   770: ireturn
    //   771: astore_1
    //   772: aload 7
    //   774: astore_1
    //   775: aload_1
    //   776: astore 6
    //   778: aload_0
    //   779: ldc_w 427
    //   782: invokespecial 365	com/dianxinos/dxservice/a/f:a	(Ljava/lang/Object;)V
    //   785: aload_1
    //   786: ifnull -229 -> 557
    //   789: aload_1
    //   790: invokevirtual 369	org/apache/http/impl/client/DefaultHttpClient:getConnectionManager	()Lorg/apache/http/conn/ClientConnectionManager;
    //   793: invokeinterface 374 1 0
    //   798: goto -241 -> 557
    //   801: astore_1
    //   802: aload 8
    //   804: astore_1
    //   805: aload_1
    //   806: astore 6
    //   808: aload_0
    //   809: ldc_w 429
    //   812: invokespecial 365	com/dianxinos/dxservice/a/f:a	(Ljava/lang/Object;)V
    //   815: aload_1
    //   816: ifnull +12 -> 828
    //   819: aload_1
    //   820: invokevirtual 369	org/apache/http/impl/client/DefaultHttpClient:getConnectionManager	()Lorg/apache/http/conn/ClientConnectionManager;
    //   823: invokeinterface 374 1 0
    //   828: bipush -5
    //   830: ireturn
    //   831: astore_1
    //   832: aload 9
    //   834: astore_1
    //   835: aload_1
    //   836: astore 6
    //   838: aload_0
    //   839: ldc_w 431
    //   842: invokespecial 365	com/dianxinos/dxservice/a/f:a	(Ljava/lang/Object;)V
    //   845: aload_1
    //   846: ifnull +12 -> 858
    //   849: aload_1
    //   850: invokevirtual 369	org/apache/http/impl/client/DefaultHttpClient:getConnectionManager	()Lorg/apache/http/conn/ClientConnectionManager;
    //   853: invokeinterface 374 1 0
    //   858: bipush -5
    //   860: ireturn
    //   861: astore_1
    //   862: aload 10
    //   864: astore_1
    //   865: aload_1
    //   866: astore 6
    //   868: aload_0
    //   869: ldc_w 433
    //   872: invokespecial 365	com/dianxinos/dxservice/a/f:a	(Ljava/lang/Object;)V
    //   875: aload_1
    //   876: ifnull +12 -> 888
    //   879: aload_1
    //   880: invokevirtual 369	org/apache/http/impl/client/DefaultHttpClient:getConnectionManager	()Lorg/apache/http/conn/ClientConnectionManager;
    //   883: invokeinterface 374 1 0
    //   888: bipush -5
    //   890: ireturn
    //   891: astore_1
    //   892: aload 11
    //   894: astore_1
    //   895: aload_1
    //   896: astore 6
    //   898: aload_0
    //   899: ldc_w 435
    //   902: invokespecial 365	com/dianxinos/dxservice/a/f:a	(Ljava/lang/Object;)V
    //   905: aload_1
    //   906: ifnull -349 -> 557
    //   909: aload_1
    //   910: invokevirtual 369	org/apache/http/impl/client/DefaultHttpClient:getConnectionManager	()Lorg/apache/http/conn/ClientConnectionManager;
    //   913: invokeinterface 374 1 0
    //   918: goto -361 -> 557
    //   921: astore_1
    //   922: aload 6
    //   924: ifnull +13 -> 937
    //   927: aload 6
    //   929: invokevirtual 369	org/apache/http/impl/client/DefaultHttpClient:getConnectionManager	()Lorg/apache/http/conn/ClientConnectionManager;
    //   932: invokeinterface 374 1 0
    //   937: aload_1
    //   938: athrow
    //   939: bipush -4
    //   941: ireturn
    //   942: astore_1
    //   943: goto -21 -> 922
    //   946: astore_1
    //   947: aload 7
    //   949: astore_1
    //   950: goto -55 -> 895
    //   953: astore_1
    //   954: aload 8
    //   956: astore_1
    //   957: goto -92 -> 865
    //   960: astore_1
    //   961: aload 9
    //   963: astore_1
    //   964: goto -129 -> 835
    //   967: astore_1
    //   968: aload 10
    //   970: astore_1
    //   971: goto -166 -> 805
    //   974: astore_1
    //   975: aload 11
    //   977: astore_1
    //   978: goto -203 -> 775
    //   981: astore_2
    //   982: goto -448 -> 534
    //   985: aconst_null
    //   986: astore_1
    //   987: goto -726 -> 261
    //   990: iconst_0
    //   991: istore_3
    //   992: iconst_m1
    //   993: istore 4
    //   995: aconst_null
    //   996: astore_1
    //   997: goto -781 -> 216
    //   1000: goto -784 -> 216
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	1003	0	this	f
    //   0	1003	1	paramList	List<NameValuePair>
    //   0	1003	2	paramList1	List<Pair<String, byte[]>>
    //   212	780	3	i	int
    //   200	794	4	j	int
    //   19	735	5	k	int
    //   23	905	6	localObject1	Object
    //   16	932	7	localObject2	Object
    //   1	954	8	localObject3	Object
    //   4	958	9	localObject4	Object
    //   7	962	10	localObject5	Object
    //   10	966	11	localObject6	Object
    //   13	594	12	localHttpResponse	org.apache.http.HttpResponse
    // Exception table:
    //   from	to	target	type
    //   25	43	531	org/apache/http/client/ClientProtocolException
    //   51	68	531	org/apache/http/client/ClientProtocolException
    //   72	78	531	org/apache/http/client/ClientProtocolException
    //   82	137	531	org/apache/http/client/ClientProtocolException
    //   141	155	531	org/apache/http/client/ClientProtocolException
    //   169	177	531	org/apache/http/client/ClientProtocolException
    //   181	189	531	org/apache/http/client/ClientProtocolException
    //   193	202	531	org/apache/http/client/ClientProtocolException
    //   224	235	531	org/apache/http/client/ClientProtocolException
    //   239	247	531	org/apache/http/client/ClientProtocolException
    //   251	261	531	org/apache/http/client/ClientProtocolException
    //   471	480	531	org/apache/http/client/ClientProtocolException
    //   484	494	531	org/apache/http/client/ClientProtocolException
    //   498	528	531	org/apache/http/client/ClientProtocolException
    //   573	578	531	org/apache/http/client/ClientProtocolException
    //   25	43	771	java/io/UnsupportedEncodingException
    //   51	68	771	java/io/UnsupportedEncodingException
    //   72	78	771	java/io/UnsupportedEncodingException
    //   82	137	771	java/io/UnsupportedEncodingException
    //   141	155	771	java/io/UnsupportedEncodingException
    //   169	177	771	java/io/UnsupportedEncodingException
    //   181	189	771	java/io/UnsupportedEncodingException
    //   193	202	771	java/io/UnsupportedEncodingException
    //   224	235	771	java/io/UnsupportedEncodingException
    //   239	247	771	java/io/UnsupportedEncodingException
    //   251	261	771	java/io/UnsupportedEncodingException
    //   471	480	771	java/io/UnsupportedEncodingException
    //   484	494	771	java/io/UnsupportedEncodingException
    //   498	528	771	java/io/UnsupportedEncodingException
    //   573	578	771	java/io/UnsupportedEncodingException
    //   25	43	801	java/net/SocketTimeoutException
    //   51	68	801	java/net/SocketTimeoutException
    //   72	78	801	java/net/SocketTimeoutException
    //   82	137	801	java/net/SocketTimeoutException
    //   141	155	801	java/net/SocketTimeoutException
    //   169	177	801	java/net/SocketTimeoutException
    //   181	189	801	java/net/SocketTimeoutException
    //   193	202	801	java/net/SocketTimeoutException
    //   224	235	801	java/net/SocketTimeoutException
    //   239	247	801	java/net/SocketTimeoutException
    //   251	261	801	java/net/SocketTimeoutException
    //   471	480	801	java/net/SocketTimeoutException
    //   484	494	801	java/net/SocketTimeoutException
    //   498	528	801	java/net/SocketTimeoutException
    //   573	578	801	java/net/SocketTimeoutException
    //   25	43	831	java/io/EOFException
    //   51	68	831	java/io/EOFException
    //   72	78	831	java/io/EOFException
    //   82	137	831	java/io/EOFException
    //   141	155	831	java/io/EOFException
    //   169	177	831	java/io/EOFException
    //   181	189	831	java/io/EOFException
    //   193	202	831	java/io/EOFException
    //   224	235	831	java/io/EOFException
    //   239	247	831	java/io/EOFException
    //   251	261	831	java/io/EOFException
    //   471	480	831	java/io/EOFException
    //   484	494	831	java/io/EOFException
    //   498	528	831	java/io/EOFException
    //   573	578	831	java/io/EOFException
    //   25	43	861	java/io/IOException
    //   51	68	861	java/io/IOException
    //   72	78	861	java/io/IOException
    //   82	137	861	java/io/IOException
    //   141	155	861	java/io/IOException
    //   169	177	861	java/io/IOException
    //   181	189	861	java/io/IOException
    //   193	202	861	java/io/IOException
    //   224	235	861	java/io/IOException
    //   239	247	861	java/io/IOException
    //   251	261	861	java/io/IOException
    //   471	480	861	java/io/IOException
    //   484	494	861	java/io/IOException
    //   498	528	861	java/io/IOException
    //   573	578	861	java/io/IOException
    //   25	43	891	java/lang/Exception
    //   51	68	891	java/lang/Exception
    //   72	78	891	java/lang/Exception
    //   82	137	891	java/lang/Exception
    //   141	155	891	java/lang/Exception
    //   169	177	891	java/lang/Exception
    //   181	189	891	java/lang/Exception
    //   193	202	891	java/lang/Exception
    //   224	235	891	java/lang/Exception
    //   239	247	891	java/lang/Exception
    //   251	261	891	java/lang/Exception
    //   471	480	891	java/lang/Exception
    //   484	494	891	java/lang/Exception
    //   498	528	891	java/lang/Exception
    //   573	578	891	java/lang/Exception
    //   25	43	921	finally
    //   51	68	921	finally
    //   72	78	921	finally
    //   82	137	921	finally
    //   141	155	921	finally
    //   169	177	921	finally
    //   181	189	921	finally
    //   193	202	921	finally
    //   224	235	921	finally
    //   239	247	921	finally
    //   251	261	921	finally
    //   471	480	921	finally
    //   484	494	921	finally
    //   498	528	921	finally
    //   573	578	921	finally
    //   778	785	921	finally
    //   808	815	921	finally
    //   838	845	921	finally
    //   868	875	921	finally
    //   898	905	921	finally
    //   285	294	942	finally
    //   314	324	942	finally
    //   344	354	942	finally
    //   374	380	942	finally
    //   400	411	942	finally
    //   431	438	942	finally
    //   537	544	942	finally
    //   606	619	942	finally
    //   646	652	942	finally
    //   672	706	942	finally
    //   726	734	942	finally
    //   285	294	946	java/lang/Exception
    //   314	324	946	java/lang/Exception
    //   344	354	946	java/lang/Exception
    //   374	380	946	java/lang/Exception
    //   400	411	946	java/lang/Exception
    //   431	438	946	java/lang/Exception
    //   606	619	946	java/lang/Exception
    //   646	652	946	java/lang/Exception
    //   672	706	946	java/lang/Exception
    //   726	734	946	java/lang/Exception
    //   285	294	953	java/io/IOException
    //   314	324	953	java/io/IOException
    //   344	354	953	java/io/IOException
    //   374	380	953	java/io/IOException
    //   400	411	953	java/io/IOException
    //   431	438	953	java/io/IOException
    //   606	619	953	java/io/IOException
    //   646	652	953	java/io/IOException
    //   672	706	953	java/io/IOException
    //   726	734	953	java/io/IOException
    //   285	294	960	java/io/EOFException
    //   314	324	960	java/io/EOFException
    //   344	354	960	java/io/EOFException
    //   374	380	960	java/io/EOFException
    //   400	411	960	java/io/EOFException
    //   431	438	960	java/io/EOFException
    //   606	619	960	java/io/EOFException
    //   646	652	960	java/io/EOFException
    //   672	706	960	java/io/EOFException
    //   726	734	960	java/io/EOFException
    //   285	294	967	java/net/SocketTimeoutException
    //   314	324	967	java/net/SocketTimeoutException
    //   344	354	967	java/net/SocketTimeoutException
    //   374	380	967	java/net/SocketTimeoutException
    //   400	411	967	java/net/SocketTimeoutException
    //   431	438	967	java/net/SocketTimeoutException
    //   606	619	967	java/net/SocketTimeoutException
    //   646	652	967	java/net/SocketTimeoutException
    //   672	706	967	java/net/SocketTimeoutException
    //   726	734	967	java/net/SocketTimeoutException
    //   285	294	974	java/io/UnsupportedEncodingException
    //   314	324	974	java/io/UnsupportedEncodingException
    //   344	354	974	java/io/UnsupportedEncodingException
    //   374	380	974	java/io/UnsupportedEncodingException
    //   400	411	974	java/io/UnsupportedEncodingException
    //   431	438	974	java/io/UnsupportedEncodingException
    //   606	619	974	java/io/UnsupportedEncodingException
    //   646	652	974	java/io/UnsupportedEncodingException
    //   672	706	974	java/io/UnsupportedEncodingException
    //   726	734	974	java/io/UnsupportedEncodingException
    //   285	294	981	org/apache/http/client/ClientProtocolException
    //   314	324	981	org/apache/http/client/ClientProtocolException
    //   344	354	981	org/apache/http/client/ClientProtocolException
    //   374	380	981	org/apache/http/client/ClientProtocolException
    //   400	411	981	org/apache/http/client/ClientProtocolException
    //   431	438	981	org/apache/http/client/ClientProtocolException
    //   606	619	981	org/apache/http/client/ClientProtocolException
    //   646	652	981	org/apache/http/client/ClientProtocolException
    //   672	706	981	org/apache/http/client/ClientProtocolException
    //   726	734	981	org/apache/http/client/ClientProtocolException
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.dxservice.a.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
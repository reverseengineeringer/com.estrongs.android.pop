package com.appsflyer;

import android.content.Context;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.concurrent.ScheduledExecutorService;

abstract class AppsFlyerLib$ValidateInAppPurchase
  implements Runnable
{
  protected WeakReference<Context> a;
  private String b;
  private String c;
  private String d;
  private String e;
  private String f;
  private String g;
  private HashMap<String, String> h;
  private ScheduledExecutorService i;
  
  public abstract String a();
  
  protected abstract void a(boolean paramBoolean, String paramString1, String paramString2, String paramString3, HashMap<String, String> paramHashMap, String paramString4);
  
  /* Error */
  public void run()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 29	com/appsflyer/AppsFlyerLib$ValidateInAppPurchase:b	Ljava/lang/String;
    //   4: ifnull +13 -> 17
    //   7: aload_0
    //   8: getfield 29	com/appsflyer/AppsFlyerLib$ValidateInAppPurchase:b	Ljava/lang/String;
    //   11: invokevirtual 35	java/lang/String:length	()I
    //   14: ifne +4 -> 18
    //   17: return
    //   18: aload_0
    //   19: getfield 37	com/appsflyer/AppsFlyerLib$ValidateInAppPurchase:a	Ljava/lang/ref/WeakReference;
    //   22: invokevirtual 43	java/lang/ref/WeakReference:get	()Ljava/lang/Object;
    //   25: checkcast 45	android/content/Context
    //   28: astore 4
    //   30: aload 4
    //   32: ifnonnull +15 -> 47
    //   35: iconst_0
    //   36: ifeq -19 -> 17
    //   39: new 47	java/lang/NullPointerException
    //   42: dup
    //   43: invokespecial 50	java/lang/NullPointerException:<init>	()V
    //   46: athrow
    //   47: new 52	java/util/HashMap
    //   50: dup
    //   51: invokespecial 53	java/util/HashMap:<init>	()V
    //   54: astore_2
    //   55: aload_2
    //   56: ldc 55
    //   58: aload 4
    //   60: invokevirtual 58	android/content/Context:getPackageName	()Ljava/lang/String;
    //   63: invokeinterface 64 3 0
    //   68: pop
    //   69: aload_2
    //   70: ldc 66
    //   72: aload_0
    //   73: getfield 29	com/appsflyer/AppsFlyerLib$ValidateInAppPurchase:b	Ljava/lang/String;
    //   76: invokeinterface 64 3 0
    //   81: pop
    //   82: aload_2
    //   83: ldc 68
    //   85: aload_0
    //   86: getfield 70	com/appsflyer/AppsFlyerLib$ValidateInAppPurchase:c	Ljava/lang/String;
    //   89: invokeinterface 64 3 0
    //   94: pop
    //   95: aload_2
    //   96: ldc 72
    //   98: aload_0
    //   99: getfield 74	com/appsflyer/AppsFlyerLib$ValidateInAppPurchase:e	Ljava/lang/String;
    //   102: invokeinterface 64 3 0
    //   107: pop
    //   108: aload_2
    //   109: ldc 76
    //   111: aload_0
    //   112: getfield 78	com/appsflyer/AppsFlyerLib$ValidateInAppPurchase:d	Ljava/lang/String;
    //   115: invokeinterface 64 3 0
    //   120: pop
    //   121: new 80	org/json/JSONObject
    //   124: dup
    //   125: aload_2
    //   126: invokespecial 83	org/json/JSONObject:<init>	(Ljava/util/Map;)V
    //   129: invokevirtual 86	org/json/JSONObject:toString	()Ljava/lang/String;
    //   132: astore 5
    //   134: new 88	java/net/URL
    //   137: dup
    //   138: aload_0
    //   139: invokevirtual 90	com/appsflyer/AppsFlyerLib$ValidateInAppPurchase:a	()Ljava/lang/String;
    //   142: invokespecial 93	java/net/URL:<init>	(Ljava/lang/String;)V
    //   145: invokevirtual 97	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   148: checkcast 99	java/net/HttpURLConnection
    //   151: astore_3
    //   152: aload_3
    //   153: ldc 101
    //   155: invokevirtual 104	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   158: aload 5
    //   160: invokevirtual 108	java/lang/String:getBytes	()[B
    //   163: arraylength
    //   164: istore_1
    //   165: aload_3
    //   166: ldc 110
    //   168: new 112	java/lang/StringBuilder
    //   171: dup
    //   172: invokespecial 113	java/lang/StringBuilder:<init>	()V
    //   175: iload_1
    //   176: invokevirtual 117	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   179: ldc 119
    //   181: invokevirtual 122	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   184: invokevirtual 123	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   187: invokevirtual 127	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   190: aload_3
    //   191: ldc -127
    //   193: ldc -125
    //   195: invokevirtual 127	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   198: aload_3
    //   199: ldc -123
    //   201: ldc -121
    //   203: invokevirtual 127	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   206: aload_3
    //   207: sipush 10000
    //   210: invokevirtual 139	java/net/HttpURLConnection:setConnectTimeout	(I)V
    //   213: aload_3
    //   214: iconst_1
    //   215: invokevirtual 143	java/net/HttpURLConnection:setDoOutput	(Z)V
    //   218: new 145	java/io/OutputStreamWriter
    //   221: dup
    //   222: aload_3
    //   223: invokevirtual 149	java/net/HttpURLConnection:getOutputStream	()Ljava/io/OutputStream;
    //   226: invokespecial 152	java/io/OutputStreamWriter:<init>	(Ljava/io/OutputStream;)V
    //   229: astore_2
    //   230: aload_2
    //   231: aload 5
    //   233: invokevirtual 155	java/io/OutputStreamWriter:write	(Ljava/lang/String;)V
    //   236: aload_2
    //   237: ifnull +7 -> 244
    //   240: aload_2
    //   241: invokevirtual 157	java/io/OutputStreamWriter:close	()V
    //   244: aload_3
    //   245: invokevirtual 160	java/net/HttpURLConnection:getResponseCode	()I
    //   248: istore_1
    //   249: new 162	java/io/BufferedReader
    //   252: dup
    //   253: new 164	java/io/InputStreamReader
    //   256: dup
    //   257: aload_3
    //   258: invokevirtual 168	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   261: invokespecial 171	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   264: invokespecial 174	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   267: astore 5
    //   269: new 112	java/lang/StringBuilder
    //   272: dup
    //   273: invokespecial 113	java/lang/StringBuilder:<init>	()V
    //   276: astore 6
    //   278: aload 5
    //   280: invokevirtual 177	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   283: astore_2
    //   284: aload_2
    //   285: ifnull +134 -> 419
    //   288: aload 6
    //   290: aload_2
    //   291: invokevirtual 122	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   294: pop
    //   295: goto -17 -> 278
    //   298: astore 4
    //   300: aload_3
    //   301: astore_2
    //   302: aload 4
    //   304: astore_3
    //   305: invokestatic 182	com/appsflyer/AppsFlyerLib:e	()Lcom/appsflyer/AppsFlyerInAppPurchaseValidatorListener;
    //   308: ifnull +56 -> 364
    //   311: ldc -72
    //   313: new 112	java/lang/StringBuilder
    //   316: dup
    //   317: invokespecial 113	java/lang/StringBuilder:<init>	()V
    //   320: ldc -70
    //   322: invokevirtual 122	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   325: aload_3
    //   326: invokevirtual 189	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   329: invokevirtual 122	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   332: invokevirtual 123	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   335: invokestatic 194	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   338: pop
    //   339: aload_0
    //   340: iconst_0
    //   341: aload_0
    //   342: getfield 74	com/appsflyer/AppsFlyerLib$ValidateInAppPurchase:e	Ljava/lang/String;
    //   345: aload_0
    //   346: getfield 196	com/appsflyer/AppsFlyerLib$ValidateInAppPurchase:f	Ljava/lang/String;
    //   349: aload_0
    //   350: getfield 198	com/appsflyer/AppsFlyerLib$ValidateInAppPurchase:g	Ljava/lang/String;
    //   353: aload_0
    //   354: getfield 200	com/appsflyer/AppsFlyerLib$ValidateInAppPurchase:h	Ljava/util/HashMap;
    //   357: aload_3
    //   358: invokevirtual 189	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   361: invokevirtual 202	com/appsflyer/AppsFlyerLib$ValidateInAppPurchase:a	(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V
    //   364: ldc -72
    //   366: aload_3
    //   367: invokevirtual 189	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   370: aload_3
    //   371: invokestatic 205	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   374: pop
    //   375: aload_2
    //   376: ifnull +7 -> 383
    //   379: aload_2
    //   380: invokevirtual 208	java/net/HttpURLConnection:disconnect	()V
    //   383: aload_0
    //   384: getfield 210	com/appsflyer/AppsFlyerLib$ValidateInAppPurchase:i	Ljava/util/concurrent/ScheduledExecutorService;
    //   387: invokeinterface 215 1 0
    //   392: return
    //   393: astore 4
    //   395: aconst_null
    //   396: astore_2
    //   397: aload_2
    //   398: ifnull +7 -> 405
    //   401: aload_2
    //   402: invokevirtual 157	java/io/OutputStreamWriter:close	()V
    //   405: aload 4
    //   407: athrow
    //   408: astore_2
    //   409: aload_3
    //   410: ifnull +7 -> 417
    //   413: aload_3
    //   414: invokevirtual 208	java/net/HttpURLConnection:disconnect	()V
    //   417: aload_2
    //   418: athrow
    //   419: aload 6
    //   421: invokevirtual 123	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   424: astore_2
    //   425: new 80	org/json/JSONObject
    //   428: dup
    //   429: aload_2
    //   430: invokespecial 216	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   433: astore 5
    //   435: iload_1
    //   436: sipush 200
    //   439: if_icmpne +58 -> 497
    //   442: aload 4
    //   444: invokestatic 219	com/appsflyer/AppsFlyerLib:e	(Landroid/content/Context;)Z
    //   447: ifeq +11 -> 458
    //   450: ldc -72
    //   452: ldc -35
    //   454: invokestatic 194	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   457: pop
    //   458: aload_0
    //   459: aload 5
    //   461: ldc -33
    //   463: invokevirtual 227	org/json/JSONObject:getBoolean	(Ljava/lang/String;)Z
    //   466: aload_0
    //   467: getfield 74	com/appsflyer/AppsFlyerLib$ValidateInAppPurchase:e	Ljava/lang/String;
    //   470: aload_0
    //   471: getfield 196	com/appsflyer/AppsFlyerLib$ValidateInAppPurchase:f	Ljava/lang/String;
    //   474: aload_0
    //   475: getfield 198	com/appsflyer/AppsFlyerLib$ValidateInAppPurchase:g	Ljava/lang/String;
    //   478: aload_0
    //   479: getfield 200	com/appsflyer/AppsFlyerLib$ValidateInAppPurchase:h	Ljava/util/HashMap;
    //   482: aconst_null
    //   483: invokevirtual 202	com/appsflyer/AppsFlyerLib$ValidateInAppPurchase:a	(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V
    //   486: aload_3
    //   487: ifnull -104 -> 383
    //   490: aload_3
    //   491: invokevirtual 208	java/net/HttpURLConnection:disconnect	()V
    //   494: goto -111 -> 383
    //   497: aload 4
    //   499: invokestatic 219	com/appsflyer/AppsFlyerLib:e	(Landroid/content/Context;)Z
    //   502: ifeq +11 -> 513
    //   505: ldc -72
    //   507: ldc -27
    //   509: invokestatic 194	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   512: pop
    //   513: aload_0
    //   514: iconst_0
    //   515: aload_0
    //   516: getfield 74	com/appsflyer/AppsFlyerLib$ValidateInAppPurchase:e	Ljava/lang/String;
    //   519: aload_0
    //   520: getfield 196	com/appsflyer/AppsFlyerLib$ValidateInAppPurchase:f	Ljava/lang/String;
    //   523: aload_0
    //   524: getfield 198	com/appsflyer/AppsFlyerLib$ValidateInAppPurchase:g	Ljava/lang/String;
    //   527: aload_0
    //   528: getfield 200	com/appsflyer/AppsFlyerLib$ValidateInAppPurchase:h	Ljava/util/HashMap;
    //   531: aload_2
    //   532: invokevirtual 202	com/appsflyer/AppsFlyerLib$ValidateInAppPurchase:a	(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V
    //   535: goto -49 -> 486
    //   538: astore_2
    //   539: aconst_null
    //   540: astore_3
    //   541: goto -132 -> 409
    //   544: astore 4
    //   546: aload_2
    //   547: astore_3
    //   548: aload 4
    //   550: astore_2
    //   551: goto -142 -> 409
    //   554: astore_3
    //   555: aconst_null
    //   556: astore_2
    //   557: goto -252 -> 305
    //   560: astore 4
    //   562: goto -165 -> 397
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	565	0	this	ValidateInAppPurchase
    //   164	276	1	j	int
    //   54	348	2	localObject1	Object
    //   408	10	2	localObject2	Object
    //   424	108	2	str	String
    //   538	9	2	localObject3	Object
    //   550	7	2	localObject4	Object
    //   151	397	3	localObject5	Object
    //   554	1	3	localThrowable1	Throwable
    //   28	31	4	localContext1	Context
    //   298	5	4	localThrowable2	Throwable
    //   393	105	4	localContext2	Context
    //   544	5	4	localObject6	Object
    //   560	1	4	localObject7	Object
    //   132	328	5	localObject8	Object
    //   276	144	6	localStringBuilder	StringBuilder
    // Exception table:
    //   from	to	target	type
    //   152	218	298	java/lang/Throwable
    //   240	244	298	java/lang/Throwable
    //   244	278	298	java/lang/Throwable
    //   278	284	298	java/lang/Throwable
    //   288	295	298	java/lang/Throwable
    //   401	405	298	java/lang/Throwable
    //   405	408	298	java/lang/Throwable
    //   419	435	298	java/lang/Throwable
    //   442	458	298	java/lang/Throwable
    //   458	486	298	java/lang/Throwable
    //   497	513	298	java/lang/Throwable
    //   513	535	298	java/lang/Throwable
    //   218	230	393	finally
    //   152	218	408	finally
    //   240	244	408	finally
    //   244	278	408	finally
    //   278	284	408	finally
    //   288	295	408	finally
    //   401	405	408	finally
    //   405	408	408	finally
    //   419	435	408	finally
    //   442	458	408	finally
    //   458	486	408	finally
    //   497	513	408	finally
    //   513	535	408	finally
    //   18	30	538	finally
    //   47	152	538	finally
    //   305	364	544	finally
    //   364	375	544	finally
    //   18	30	554	java/lang/Throwable
    //   47	152	554	java/lang/Throwable
    //   230	236	560	finally
  }
}

/* Location:
 * Qualified Name:     com.appsflyer.AppsFlyerLib.ValidateInAppPurchase
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
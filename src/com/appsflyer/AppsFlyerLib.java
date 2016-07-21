package com.appsflyer;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Process;
import android.provider.Settings.Secure;
import android.telephony.TelephonyManager;
import android.util.Log;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.ads.identifier.AdvertisingIdClient.Info;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.lang.reflect.Method;
import java.net.URL;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
import org.json.JSONObject;

public class AppsFlyerLib
  extends BroadcastReceiver
{
  public static final Uri a = Uri.parse("content://com.facebook.katana.provider.AttributionIdProvider");
  private static final List<String> b = Arrays.asList(new String[] { "is_cache" });
  private static AppsFlyerConversionListener c = null;
  private static AppsFlyerInAppPurchaseValidatorListener d = null;
  private static boolean e = false;
  private static long f;
  private static ScheduledExecutorService g = null;
  private static long h = System.currentTimeMillis();
  
  public static String a()
  {
    return a("AppUserId");
  }
  
  /* Error */
  public static String a(android.content.ContentResolver paramContentResolver)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aload_0
    //   3: getstatic 32	com/appsflyer/AppsFlyerLib:a	Landroid/net/Uri;
    //   6: iconst_1
    //   7: anewarray 34	java/lang/String
    //   10: dup
    //   11: iconst_0
    //   12: ldc 84
    //   14: aastore
    //   15: aconst_null
    //   16: aconst_null
    //   17: aconst_null
    //   18: invokevirtual 90	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   21: astore_3
    //   22: aload_3
    //   23: ifnull +14 -> 37
    //   26: aload_3
    //   27: invokeinterface 96 1 0
    //   32: istore_1
    //   33: iload_1
    //   34: ifne +19 -> 53
    //   37: aload_2
    //   38: astore_0
    //   39: aload_3
    //   40: ifnull +11 -> 51
    //   43: aload_3
    //   44: invokeinterface 99 1 0
    //   49: aload_2
    //   50: astore_0
    //   51: aload_0
    //   52: areturn
    //   53: aload_3
    //   54: aload_3
    //   55: ldc 84
    //   57: invokeinterface 103 2 0
    //   62: invokeinterface 107 2 0
    //   67: astore_0
    //   68: aload_0
    //   69: astore_2
    //   70: aload_2
    //   71: astore_0
    //   72: aload_3
    //   73: ifnull -22 -> 51
    //   76: aload_3
    //   77: invokeinterface 99 1 0
    //   82: aload_2
    //   83: areturn
    //   84: astore_0
    //   85: aload_2
    //   86: areturn
    //   87: astore_0
    //   88: ldc 109
    //   90: ldc 111
    //   92: aload_0
    //   93: invokestatic 117	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   96: pop
    //   97: aload_2
    //   98: astore_0
    //   99: aload_3
    //   100: ifnull -49 -> 51
    //   103: aload_3
    //   104: invokeinterface 99 1 0
    //   109: aconst_null
    //   110: areturn
    //   111: astore_0
    //   112: aconst_null
    //   113: areturn
    //   114: astore_0
    //   115: aload_3
    //   116: ifnull +9 -> 125
    //   119: aload_3
    //   120: invokeinterface 99 1 0
    //   125: aload_0
    //   126: athrow
    //   127: astore_0
    //   128: aconst_null
    //   129: areturn
    //   130: astore_2
    //   131: goto -6 -> 125
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	134	0	paramContentResolver	android.content.ContentResolver
    //   32	2	1	bool	boolean
    //   1	97	2	localContentResolver	android.content.ContentResolver
    //   130	1	2	localException	Exception
    //   21	99	3	localCursor	android.database.Cursor
    // Exception table:
    //   from	to	target	type
    //   76	82	84	java/lang/Exception
    //   26	33	87	java/lang/Exception
    //   53	68	87	java/lang/Exception
    //   103	109	111	java/lang/Exception
    //   26	33	114	finally
    //   53	68	114	finally
    //   88	97	114	finally
    //   43	49	127	java/lang/Exception
    //   119	125	130	java/lang/Exception
  }
  
  public static String a(String paramString)
  {
    return AppsFlyerProperties.a().b(paramString);
  }
  
  private static String a(SimpleDateFormat paramSimpleDateFormat, Context paramContext)
  {
    String str = paramContext.getSharedPreferences("appsflyer-data", 0).getString("appsFlyerFirstInstall", null);
    Object localObject = str;
    if (str == null)
    {
      if (!j(paramContext)) {
        break label99;
      }
      if (h(paramContext)) {
        Log.d("AppsFlyer_3.2", "AppsFlyer: first launch detected");
      }
    }
    label99:
    for (paramSimpleDateFormat = paramSimpleDateFormat.format(new Date());; paramSimpleDateFormat = "")
    {
      b(paramContext, "appsFlyerFirstInstall", paramSimpleDateFormat);
      localObject = paramSimpleDateFormat;
      if (h(paramContext)) {
        Log.i("AppsFlyer_3.2", "AppsFlyer: first launch date: " + (String)localObject);
      }
      return (String)localObject;
    }
  }
  
  public static String a(Map<String, String> paramMap)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    Iterator localIterator = paramMap.keySet().iterator();
    if (localIterator.hasNext())
    {
      String str2 = (String)localIterator.next();
      String str1 = (String)paramMap.get(str2);
      if (str1 == null) {}
      for (str1 = "";; str1 = URLEncoder.encode(str1, "UTF-8"))
      {
        if (localStringBuilder.length() > 0) {
          localStringBuilder.append('&');
        }
        localStringBuilder.append(str2).append('=').append(str1);
        break;
      }
    }
    return localStringBuilder.toString();
  }
  
  public static void a(Activity paramActivity)
  {
    if (h(paramActivity.getApplicationContext())) {
      Log.i("AppsFlyer_3.2", "onActivityResume called");
    }
  }
  
  public static void a(Context paramContext)
  {
    a(paramContext, null);
    if (h(paramContext)) {
      Log.i("AppsFlyer_3.2", "Start tracking package: " + paramContext.getPackageName());
    }
  }
  
  @Deprecated
  public static void a(Context paramContext, String paramString)
  {
    a(paramContext, paramString, null, null);
  }
  
  @Deprecated
  public static void a(Context paramContext, String paramString1, String paramString2, String paramString3)
  {
    if ((paramString2 != null) && (paramString3 != null) && (paramString3.matches("-?\\d+(\\.\\d+)?"))) {
      Log.i("AppsFlyer_3.2", "AppsFLyer: numeric value '" + paramString3 + "' for event '" + paramString2 + "' will be categorized as a revenue event.");
    }
    String str2 = AppsFlyerProperties.a().a(paramContext);
    String str1 = str2;
    if (str2 == null) {
      str1 = "";
    }
    b(paramContext, paramString1, paramString2, paramString3, str1, false);
  }
  
  public static void a(Context paramContext, String paramString, Map<String, Object> paramMap)
  {
    Object localObject = paramMap;
    if (paramMap == null) {
      localObject = new HashMap();
    }
    paramMap = new JSONObject((Map)localObject);
    localObject = AppsFlyerProperties.a().a(paramContext);
    String str = paramMap.toString();
    paramMap = (Map<String, Object>)localObject;
    if (localObject == null) {
      paramMap = "";
    }
    b(paramContext, null, paramString, str, paramMap, true);
  }
  
  private static void a(Context paramContext, Map<String, String> paramMap)
  {
    if (AppsFlyerProperties.a().b("deviceTrackingDisabled", false))
    {
      paramMap.put("deviceTrackingDisabled", "true");
      return;
    }
    SharedPreferences localSharedPreferences = paramContext.getSharedPreferences("appsflyer-data", 0);
    boolean bool = AppsFlyerProperties.a().b("collectIMEI", true);
    str1 = localSharedPreferences.getString("imeiCached", null);
    if (bool) {}
    for (;;)
    {
      try
      {
        localObject = (TelephonyManager)paramContext.getSystemService("phone");
        str2 = (String)localObject.getClass().getMethod("getDeviceId", new Class[0]).invoke(localObject, new Object[0]);
        if (str2 != null) {
          continue;
        }
        localObject = str1;
        if (localObject != null) {
          paramMap.put("imei", localObject);
        }
      }
      catch (Exception localException)
      {
        Object localObject;
        String str2;
        Log.i("AppsFlyer_3.2", "WARNING:READ_PHONE_STATE is missing");
        continue;
        b(paramContext, "androidIdCached", str1);
        paramContext = str1;
        continue;
      }
      bool = AppsFlyerProperties.a().b("collectAndroidId", true);
      localObject = localSharedPreferences.getString("androidIdCached", null);
      if (!bool) {
        break;
      }
      try
      {
        str1 = Settings.Secure.getString(paramContext.getContentResolver(), "android_id");
        if (str1 != null) {
          continue;
        }
        paramContext = (Context)localObject;
        if (paramContext == null) {
          break;
        }
        paramMap.put("android_id", paramContext);
        return;
      }
      catch (Exception paramContext)
      {
        return;
      }
      localObject = str2;
      if (str1 == null)
      {
        b(paramContext, "imeiCached", str2);
        localObject = str2;
      }
    }
  }
  
  private void a(String paramString, Context paramContext)
  {
    String str = "https://track.appsflyer.com/api/v3/uninstall?buildnumber=3.2";
    if (h(paramContext)) {
      Log.i("AppsFlyer_3.2", "Calling server for uninstall url: " + str);
    }
    HashMap localHashMap = new HashMap();
    localHashMap.put("packageName", paramString);
    localHashMap.put("senderPackageName", paramContext.getPackageName());
    localHashMap.put("uid", d(paramContext));
    paramString = paramContext.getSharedPreferences("appsflyer-data", 0).getString("androidIdCached", null);
    if (paramString != null) {
      localHashMap.put("android_id", paramString);
    }
    b(paramContext, localHashMap);
    a(paramContext, localHashMap);
    paramString = new BackgroundHttpTask(paramContext);
    a = localHashMap;
    paramString.execute(new String[] { str });
  }
  
  protected static void a(String paramString1, String paramString2)
  {
    AppsFlyerProperties.a().a(paramString1, paramString2);
  }
  
  private static void a(String paramString1, String paramString2, Context paramContext)
  {
    if ((paramContext != null) && ("com.appsflyer".equals(paramContext.getPackageName()))) {
      DebugLogQueue.a().a(paramString1 + paramString2);
    }
  }
  
  /* Error */
  private static void a(URL paramURL, String paramString1, String paramString2, WeakReference<Context> paramWeakReference, String paramString3, String paramString4, boolean paramBoolean)
  {
    // Byte code:
    //   0: aload_3
    //   1: invokevirtual 403	java/lang/ref/WeakReference:get	()Ljava/lang/Object;
    //   4: checkcast 129	android/content/Context
    //   7: astore 12
    //   9: aload_0
    //   10: invokevirtual 409	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   13: checkcast 411	java/net/HttpURLConnection
    //   16: astore 10
    //   18: aload 10
    //   20: ldc_w 413
    //   23: invokevirtual 416	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   26: aload_1
    //   27: invokevirtual 420	java/lang/String:getBytes	()[B
    //   30: arraylength
    //   31: istore 7
    //   33: aload 10
    //   35: ldc_w 422
    //   38: new 165	java/lang/StringBuilder
    //   41: dup
    //   42: invokespecial 166	java/lang/StringBuilder:<init>	()V
    //   45: iload 7
    //   47: invokevirtual 425	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   50: ldc -76
    //   52: invokevirtual 172	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   55: invokevirtual 175	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   58: invokevirtual 428	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   61: aload 10
    //   63: ldc_w 430
    //   66: ldc_w 431
    //   69: invokevirtual 428	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   72: aload 10
    //   74: sipush 10000
    //   77: invokevirtual 435	java/net/HttpURLConnection:setConnectTimeout	(I)V
    //   80: aload 10
    //   82: iconst_1
    //   83: invokevirtual 439	java/net/HttpURLConnection:setDoOutput	(Z)V
    //   86: new 441	java/io/OutputStreamWriter
    //   89: dup
    //   90: aload 10
    //   92: invokevirtual 445	java/net/HttpURLConnection:getOutputStream	()Ljava/io/OutputStream;
    //   95: invokespecial 448	java/io/OutputStreamWriter:<init>	(Ljava/io/OutputStream;)V
    //   98: astore 11
    //   100: aload 11
    //   102: aload_1
    //   103: invokevirtual 451	java/io/OutputStreamWriter:write	(Ljava/lang/String;)V
    //   106: aload 11
    //   108: ifnull +8 -> 116
    //   111: aload 11
    //   113: invokevirtual 452	java/io/OutputStreamWriter:close	()V
    //   116: aload 10
    //   118: invokevirtual 455	java/net/HttpURLConnection:getResponseCode	()I
    //   121: istore 7
    //   123: aload 12
    //   125: invokestatic 146	com/appsflyer/AppsFlyerLib:h	(Landroid/content/Context;)Z
    //   128: ifeq +30 -> 158
    //   131: aload 5
    //   133: new 165	java/lang/StringBuilder
    //   136: dup
    //   137: invokespecial 166	java/lang/StringBuilder:<init>	()V
    //   140: ldc_w 457
    //   143: invokevirtual 172	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   146: iload 7
    //   148: invokevirtual 425	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   151: invokevirtual 175	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   154: invokestatic 178	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   157: pop
    //   158: aload 12
    //   160: aload 5
    //   162: ldc_w 459
    //   165: iload 7
    //   167: invokestatic 463	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   170: invokestatic 465	com/appsflyer/AppsFlyerLib:b	(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   173: ldc_w 467
    //   176: iload 7
    //   178: invokestatic 463	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   181: aload 12
    //   183: invokestatic 469	com/appsflyer/AppsFlyerLib:a	(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    //   186: aload 12
    //   188: ldc 127
    //   190: iconst_0
    //   191: invokevirtual 133	android/content/Context:getSharedPreferences	(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    //   194: astore_0
    //   195: iload 7
    //   197: sipush 200
    //   200: if_icmpne +46 -> 246
    //   203: aload 4
    //   205: ifnull +13 -> 218
    //   208: invokestatic 474	com/appsflyer/cache/CacheManager:a	()Lcom/appsflyer/cache/CacheManager;
    //   211: aload 4
    //   213: aload 12
    //   215: invokevirtual 476	com/appsflyer/cache/CacheManager:a	(Ljava/lang/String;Landroid/content/Context;)V
    //   218: aload_3
    //   219: invokevirtual 403	java/lang/ref/WeakReference:get	()Ljava/lang/Object;
    //   222: ifnull +24 -> 246
    //   225: aload 4
    //   227: ifnonnull +19 -> 246
    //   230: aload 12
    //   232: ldc_w 478
    //   235: ldc_w 291
    //   238: invokestatic 163	com/appsflyer/AppsFlyerLib:b	(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    //   241: aload 12
    //   243: invokestatic 481	com/appsflyer/AppsFlyerLib:n	(Landroid/content/Context;)V
    //   246: aload_0
    //   247: ldc_w 483
    //   250: iconst_0
    //   251: invokeinterface 487 3 0
    //   256: istore 7
    //   258: aload_0
    //   259: ldc_w 489
    //   262: lconst_0
    //   263: invokeinterface 493 4 0
    //   268: lstore 8
    //   270: lload 8
    //   272: lconst_0
    //   273: lcmp
    //   274: ifeq +34 -> 308
    //   277: invokestatic 58	java/lang/System:currentTimeMillis	()J
    //   280: lload 8
    //   282: lsub
    //   283: ldc2_w 494
    //   286: lcmp
    //   287: ifle +21 -> 308
    //   290: aload 12
    //   292: ldc_w 497
    //   295: aconst_null
    //   296: invokestatic 163	com/appsflyer/AppsFlyerLib:b	(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    //   299: aload 12
    //   301: ldc_w 489
    //   304: lconst_0
    //   305: invokestatic 252	com/appsflyer/AppsFlyerLib:b	(Landroid/content/Context;Ljava/lang/String;J)V
    //   308: aload_0
    //   309: ldc_w 497
    //   312: aconst_null
    //   313: invokeinterface 140 3 0
    //   318: ifnonnull +93 -> 411
    //   321: aload_2
    //   322: ifnull +89 -> 411
    //   325: iload 6
    //   327: ifeq +84 -> 411
    //   330: getstatic 46	com/appsflyer/AppsFlyerLib:c	Lcom/appsflyer/AppsFlyerConversionListener;
    //   333: ifnull +78 -> 411
    //   336: iload 7
    //   338: iconst_5
    //   339: if_icmpgt +72 -> 411
    //   342: invokestatic 503	java/util/concurrent/Executors:newSingleThreadScheduledExecutor	()Ljava/util/concurrent/ScheduledExecutorService;
    //   345: astore_0
    //   346: aload_0
    //   347: new 505	com/appsflyer/AppsFlyerLib$InstallAttributionIdFetcher
    //   350: dup
    //   351: aload 12
    //   353: invokevirtual 506	android/content/Context:getApplicationContext	()Landroid/content/Context;
    //   356: aload_2
    //   357: aload_0
    //   358: invokespecial 509	com/appsflyer/AppsFlyerLib$InstallAttributionIdFetcher:<init>	(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/ScheduledExecutorService;)V
    //   361: ldc2_w 510
    //   364: getstatic 517	java/util/concurrent/TimeUnit:MILLISECONDS	Ljava/util/concurrent/TimeUnit;
    //   367: invokeinterface 523 5 0
    //   372: pop
    //   373: aload 10
    //   375: ifnull +8 -> 383
    //   378: aload 10
    //   380: invokevirtual 526	java/net/HttpURLConnection:disconnect	()V
    //   383: return
    //   384: astore_0
    //   385: aconst_null
    //   386: astore_1
    //   387: aload_1
    //   388: ifnull +7 -> 395
    //   391: aload_1
    //   392: invokevirtual 452	java/io/OutputStreamWriter:close	()V
    //   395: aload_0
    //   396: athrow
    //   397: astore_0
    //   398: aload 10
    //   400: astore_1
    //   401: aload_1
    //   402: ifnull +7 -> 409
    //   405: aload_1
    //   406: invokevirtual 526	java/net/HttpURLConnection:disconnect	()V
    //   409: aload_0
    //   410: athrow
    //   411: aload_2
    //   412: ifnonnull +15 -> 427
    //   415: aload 5
    //   417: ldc_w 528
    //   420: invokestatic 530	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;)I
    //   423: pop
    //   424: goto -51 -> 373
    //   427: iload 6
    //   429: ifeq -56 -> 373
    //   432: getstatic 46	com/appsflyer/AppsFlyerLib:c	Lcom/appsflyer/AppsFlyerConversionListener;
    //   435: ifnull -62 -> 373
    //   438: aload_0
    //   439: ldc_w 497
    //   442: aconst_null
    //   443: invokeinterface 140 3 0
    //   448: ifnull -75 -> 373
    //   451: aload 12
    //   453: ldc_w 532
    //   456: iconst_0
    //   457: invokestatic 67	com/appsflyer/AppsFlyerLib:b	(Landroid/content/Context;Ljava/lang/String;Z)I
    //   460: istore 7
    //   462: iload 7
    //   464: iconst_1
    //   465: if_icmple -92 -> 373
    //   468: aload 12
    //   470: invokestatic 535	com/appsflyer/AppsFlyerLib:b	(Landroid/content/Context;)Ljava/util/Map;
    //   473: astore_0
    //   474: aload_0
    //   475: ifnull -102 -> 373
    //   478: getstatic 46	com/appsflyer/AppsFlyerLib:c	Lcom/appsflyer/AppsFlyerConversionListener;
    //   481: aload_0
    //   482: invokeinterface 539 2 0
    //   487: goto -114 -> 373
    //   490: astore_0
    //   491: goto -118 -> 373
    //   494: astore_0
    //   495: aconst_null
    //   496: astore_1
    //   497: goto -96 -> 401
    //   500: astore_0
    //   501: aload 11
    //   503: astore_1
    //   504: goto -117 -> 387
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	507	0	paramURL	URL
    //   0	507	1	paramString1	String
    //   0	507	2	paramString2	String
    //   0	507	3	paramWeakReference	WeakReference<Context>
    //   0	507	4	paramString3	String
    //   0	507	5	paramString4	String
    //   0	507	6	paramBoolean	boolean
    //   31	435	7	i	int
    //   268	13	8	l	long
    //   16	383	10	localHttpURLConnection	java.net.HttpURLConnection
    //   98	404	11	localOutputStreamWriter	java.io.OutputStreamWriter
    //   7	462	12	localContext	Context
    // Exception table:
    //   from	to	target	type
    //   86	100	384	finally
    //   18	86	397	finally
    //   111	116	397	finally
    //   116	158	397	finally
    //   158	195	397	finally
    //   208	218	397	finally
    //   218	225	397	finally
    //   230	246	397	finally
    //   246	270	397	finally
    //   277	308	397	finally
    //   308	321	397	finally
    //   330	336	397	finally
    //   342	373	397	finally
    //   391	395	397	finally
    //   395	397	397	finally
    //   415	424	397	finally
    //   432	462	397	finally
    //   468	474	397	finally
    //   478	487	397	finally
    //   468	474	490	com/appsflyer/AttributionIDNotReady
    //   478	487	490	com/appsflyer/AttributionIDNotReady
    //   9	18	494	finally
    //   100	106	500	finally
  }
  
  private static int b(Context paramContext, String paramString, boolean paramBoolean)
  {
    paramContext = paramContext.getSharedPreferences("appsflyer-data", 0);
    int j = paramContext.getInt(paramString, 0);
    int i = j;
    if (paramBoolean)
    {
      i = j + 1;
      paramContext = paramContext.edit();
      paramContext.putInt(paramString, i);
      paramContext.commit();
    }
    return i;
  }
  
  private static long b(Context paramContext, boolean paramBoolean)
  {
    SharedPreferences localSharedPreferences = paramContext.getSharedPreferences("appsflyer-data", 0);
    long l1 = localSharedPreferences.getLong("AppsFlyerTimePassedSincePrevLaunch", 0L);
    localSharedPreferences.edit();
    long l2 = System.currentTimeMillis();
    if (l1 > 0L) {}
    for (l1 = l2 - l1;; l1 = -1L)
    {
      if (paramBoolean) {
        b(paramContext, "AppsFlyerTimePassedSincePrevLaunch", l2);
      }
      return l1 / 1000L;
    }
  }
  
  public static Map<String, String> b(Context paramContext)
  {
    SharedPreferences localSharedPreferences = paramContext.getSharedPreferences("appsflyer-data", 0);
    String str = AppsFlyerProperties.a().a(paramContext);
    if ((str != null) && (str.length() > 0) && (str.contains("af_tranid"))) {
      return c(paramContext, str);
    }
    paramContext = localSharedPreferences.getString("attributionId", null);
    if ((paramContext != null) && (paramContext.length() > 0)) {
      return e(paramContext);
    }
    throw new AttributionIDNotReady();
  }
  
  public static void b(Activity paramActivity)
  {
    if (h(paramActivity.getApplicationContext())) {
      Log.i("AppsFlyer_3.2", "onActivityPause called");
    }
  }
  
  private static void b(Context paramContext, String paramString, int paramInt)
  {
    paramContext = paramContext.getSharedPreferences("appsflyer-data", 0).edit();
    paramContext.putInt(paramString, paramInt);
    if (Build.VERSION.SDK_INT >= 9)
    {
      paramContext.apply();
      return;
    }
    paramContext.commit();
  }
  
  private static void b(Context paramContext, String paramString, long paramLong)
  {
    paramContext = paramContext.getSharedPreferences("appsflyer-data", 0).edit();
    paramContext.putLong(paramString, paramLong);
    if (Build.VERSION.SDK_INT >= 9)
    {
      paramContext.apply();
      return;
    }
    paramContext.commit();
  }
  
  private static void b(Context paramContext, String paramString1, String paramString2)
  {
    paramContext = paramContext.getSharedPreferences("appsflyer-data", 0).edit();
    paramContext.putString(paramString1, paramString2);
    if (Build.VERSION.SDK_INT >= 9)
    {
      paramContext.apply();
      return;
    }
    paramContext.commit();
  }
  
  private static void b(Context paramContext, String paramString1, String paramString2, String paramString3)
  {
    if (AppsFlyerProperties.a().b("shouldMonitor", false))
    {
      Intent localIntent = new Intent("com.appsflyer.MonitorBroadcast");
      localIntent.setPackage("com.appsflyer.nightvision");
      localIntent.putExtra("message", paramString2);
      localIntent.putExtra("value", paramString3);
      localIntent.putExtra("packageName", "true");
      localIntent.putExtra("pid", new Integer(Process.myPid()));
      localIntent.putExtra("eventIdentifier", paramString1);
      localIntent.putExtra("sdk", "3.3.2");
      paramContext.sendBroadcast(localIntent);
    }
  }
  
  private static void b(Context paramContext, String paramString1, String paramString2, String paramString3, String paramString4, boolean paramBoolean)
  {
    ScheduledExecutorService localScheduledExecutorService = Executors.newSingleThreadScheduledExecutor();
    localScheduledExecutorService.schedule(new AppsFlyerLib.DataCollector(paramContext, paramString1, paramString2, paramString3, paramString4, paramBoolean, localScheduledExecutorService, null), 5L, TimeUnit.MILLISECONDS);
  }
  
  private static void b(Context paramContext, Map<String, String> paramMap)
  {
    for (;;)
    {
      try
      {
        Class.forName("com.google.android.gms.ads.identifier.AdvertisingIdClient");
        localObject = AdvertisingIdClient.getAdvertisingIdInfo(paramContext);
        String str = ((AdvertisingIdClient.Info)localObject).getId();
        paramMap.put("advertiserId", str);
        if (!((AdvertisingIdClient.Info)localObject).isLimitAdTrackingEnabled())
        {
          bool = true;
          localObject = Boolean.toString(bool);
          paramMap.put("advertiserIdEnabled", localObject);
          AppsFlyerProperties.a().a("advertiserId", str);
          AppsFlyerProperties.a().a("advertiserIdEnabled", (String)localObject);
          return;
        }
      }
      catch (ClassNotFoundException paramMap)
      {
        boolean bool;
        if (!h(paramContext)) {
          continue;
        }
        Log.i("AppsFlyer_3.2", "WARNING:Google Play services SDK jar is missing.");
        return;
      }
      catch (Exception localException)
      {
        Object localObject = AppsFlyerProperties.a().b("advertiserId");
        if (localObject == null) {
          continue;
        }
        paramMap.put("advertiserId", localObject);
        localObject = AppsFlyerProperties.a().b("advertiserIdEnabled");
        if (localObject == null) {
          continue;
        }
        paramMap.put("advertiserIdEnabled", localObject);
        if (localException.getLocalizedMessage() == null) {
          break label189;
        }
      }
      bool = false;
    }
    Log.i("AppsFlyer_3.2", localException.getLocalizedMessage());
    for (;;)
    {
      a("Could not fetch advertiser id: ", localException.getLocalizedMessage(), paramContext);
      return;
      label189:
      Log.i("AppsFlyer_3.2", localException.toString());
    }
  }
  
  public static void b(String paramString)
  {
    if (!AppsFlyerProperties.a().e()) {
      Log.i("AppsFlyer_3.2", "setCustomerUserId = " + paramString);
    }
    a("AppUserId", paramString);
  }
  
  private static void b(String paramString1, String paramString2, String paramString3, WeakReference<Context> paramWeakReference, String paramString4, String paramString5, boolean paramBoolean)
  {
    URL localURL = new URL(paramString1);
    if (h((Context)paramWeakReference.get())) {
      Log.i(paramString5, "url: " + localURL.toString());
    }
    a("call server.", "\n" + localURL.toString() + "\nPOST:" + paramString2, (Context)paramWeakReference.get());
    if (h((Context)paramWeakReference.get())) {
      LogMessages.b("data: " + paramString2);
    }
    b((Context)paramWeakReference.get(), paramString5, "EVENT_DATA", paramString2);
    try
    {
      a(localURL, paramString2, paramString3, paramWeakReference, paramString4, paramString5, paramBoolean);
      return;
    }
    catch (IOException localIOException)
    {
      if (AppsFlyerProperties.a().b("useHttpFallback", false))
      {
        a("https failed: " + localIOException.getLocalizedMessage(), "", (Context)paramWeakReference.get());
        a(new URL(paramString1.replace("https:", "http:")), paramString2, paramString3, paramWeakReference, paramString4, paramString5, paramBoolean);
        return;
      }
      Log.i(paramString5, "failed to send requeset to server. " + localIOException.getLocalizedMessage());
      b((Context)paramWeakReference.get(), paramString5, "ERROR", localIOException.getLocalizedMessage());
      throw localIOException;
    }
  }
  
  private static String c(Map<String, String> paramMap)
  {
    paramMap = (String)paramMap.get("af_timestamp");
    if ((paramMap == null) || (paramMap.length() < 5)) {
      return "AppsFlyer_3.2";
    }
    return "AppsFlyer_3.2-" + paramMap.substring(4);
  }
  
  private static Map<String, String> c(Context paramContext, String paramString)
  {
    LinkedHashMap localLinkedHashMap = new LinkedHashMap();
    String[] arrayOfString = paramString.split("&");
    int m = arrayOfString.length;
    int k = 0;
    int i = 0;
    if (k < m)
    {
      String str2 = arrayOfString[k];
      int n = str2.indexOf("=");
      label67:
      int j;
      if (n > 0)
      {
        str1 = str2.substring(0, n);
        paramString = str1;
        j = i;
        if (!localLinkedHashMap.containsKey(str1))
        {
          if (!str1.equals("c")) {
            break label174;
          }
          paramString = "campaign";
          label99:
          localLinkedHashMap.put(paramString, new String());
          j = i;
        }
        if ((n <= 0) || (str2.length() <= n + 1)) {
          break label215;
        }
      }
      label174:
      label215:
      for (String str1 = str2.substring(n + 1);; str1 = null)
      {
        localLinkedHashMap.put(paramString, str1);
        k += 1;
        i = j;
        break;
        str1 = str2;
        break label67;
        if (str1.equals("pid"))
        {
          paramString = "media_source";
          break label99;
        }
        paramString = str1;
        if (!str1.equals("af_prt")) {
          break label99;
        }
        i = 1;
        paramString = "agency";
        break label99;
      }
    }
    try
    {
      if (!localLinkedHashMap.containsKey("install_time"))
      {
        long l = getPackageManagergetPackageInfogetPackageName0firstInstallTime;
        localLinkedHashMap.put("install_time", new SimpleDateFormat("yyyy-MM-dd hh:mm:ss").format(new Date(l)));
      }
      if (!localLinkedHashMap.containsKey("af_status")) {
        localLinkedHashMap.put("af_status", "Non-organic");
      }
      if (i != 0) {
        localLinkedHashMap.remove("media_source");
      }
      return localLinkedHashMap;
    }
    catch (Exception paramContext)
    {
      for (;;)
      {
        Log.w("AppsFlyer_3.2", "Could not fetch install time");
      }
    }
  }
  
  /* Error */
  private static void c(Context paramContext, String paramString1, String paramString2, String paramString3, String paramString4, boolean paramBoolean)
  {
    // Byte code:
    //   0: ldc 109
    //   2: new 165	java/lang/StringBuilder
    //   5: dup
    //   6: invokespecial 166	java/lang/StringBuilder:<init>	()V
    //   9: ldc_w 813
    //   12: invokevirtual 172	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   15: aload_0
    //   16: invokevirtual 313	java/lang/Object:getClass	()Ljava/lang/Class;
    //   19: invokevirtual 816	java/lang/Class:getName	()Ljava/lang/String;
    //   22: invokevirtual 817	java/lang/String:toString	()Ljava/lang/String;
    //   25: invokevirtual 172	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   28: invokevirtual 175	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   31: invokestatic 178	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   34: pop
    //   35: aload_2
    //   36: ifnonnull +1956 -> 1992
    //   39: iconst_1
    //   40: istore 9
    //   42: new 275	java/util/HashMap
    //   45: dup
    //   46: invokespecial 276	java/util/HashMap:<init>	()V
    //   49: astore 16
    //   51: aload 16
    //   53: ldc_w 737
    //   56: new 153	java/util/Date
    //   59: dup
    //   60: invokespecial 154	java/util/Date:<init>	()V
    //   63: invokevirtual 820	java/util/Date:getTime	()J
    //   66: invokestatic 825	java/lang/Long:toString	(J)Ljava/lang/String;
    //   69: invokeinterface 295 3 0
    //   74: pop
    //   75: aload 16
    //   77: invokestatic 566	com/appsflyer/AppsFlyerLib:c	(Ljava/util/Map;)Ljava/lang/String;
    //   80: astore 15
    //   82: aload_0
    //   83: invokestatic 146	com/appsflyer/AppsFlyerLib:h	(Landroid/content/Context;)Z
    //   86: ifeq +1840 -> 1926
    //   89: ldc_w 827
    //   92: ldc -76
    //   94: aload_0
    //   95: invokestatic 469	com/appsflyer/AppsFlyerLib:a	(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    //   98: new 165	java/lang/StringBuilder
    //   101: dup
    //   102: invokespecial 166	java/lang/StringBuilder:<init>	()V
    //   105: ldc_w 829
    //   108: invokevirtual 172	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   111: astore 17
    //   113: iload 9
    //   115: ifeq +1883 -> 1998
    //   118: ldc_w 831
    //   121: astore 14
    //   123: aload 15
    //   125: aload 17
    //   127: aload 14
    //   129: invokevirtual 172	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   132: invokevirtual 175	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   135: invokestatic 178	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   138: pop
    //   139: iload 9
    //   141: ifeq +1863 -> 2004
    //   144: ldc_w 831
    //   147: astore 14
    //   149: ldc_w 833
    //   152: aload 14
    //   154: aload_0
    //   155: invokestatic 469	com/appsflyer/AppsFlyerLib:a	(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    //   158: goto +1768 -> 1926
    //   161: aload_0
    //   162: aload 15
    //   164: ldc_w 835
    //   167: aload 14
    //   169: invokestatic 465	com/appsflyer/AppsFlyerLib:b	(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   172: invokestatic 474	com/appsflyer/cache/CacheManager:a	()Lcom/appsflyer/cache/CacheManager;
    //   175: aload_0
    //   176: invokevirtual 837	com/appsflyer/cache/CacheManager:a	(Landroid/content/Context;)V
    //   179: aload_0
    //   180: invokevirtual 778	android/content/Context:getPackageManager	()Landroid/content/pm/PackageManager;
    //   183: aload_0
    //   184: invokevirtual 241	android/content/Context:getPackageName	()Ljava/lang/String;
    //   187: sipush 4096
    //   190: invokevirtual 784	android/content/pm/PackageManager:getPackageInfo	(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    //   193: getfield 841	android/content/pm/PackageInfo:requestedPermissions	[Ljava/lang/String;
    //   196: invokestatic 42	java/util/Arrays:asList	([Ljava/lang/Object;)Ljava/util/List;
    //   199: astore 14
    //   201: aload 14
    //   203: ldc_w 843
    //   206: invokeinterface 847 2 0
    //   211: ifne +21 -> 232
    //   214: ldc 109
    //   216: ldc_w 849
    //   219: invokestatic 530	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;)I
    //   222: pop
    //   223: aload_0
    //   224: aconst_null
    //   225: ldc_w 851
    //   228: aconst_null
    //   229: invokestatic 465	com/appsflyer/AppsFlyerLib:b	(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   232: aload 14
    //   234: ldc_w 853
    //   237: invokeinterface 847 2 0
    //   242: ifne +12 -> 254
    //   245: ldc 109
    //   247: ldc_w 855
    //   250: invokestatic 530	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;)I
    //   253: pop
    //   254: aload 14
    //   256: ldc_w 857
    //   259: invokeinterface 847 2 0
    //   264: ifne +12 -> 276
    //   267: ldc 109
    //   269: ldc_w 859
    //   272: invokestatic 530	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;)I
    //   275: pop
    //   276: new 165	java/lang/StringBuilder
    //   279: dup
    //   280: invokespecial 166	java/lang/StringBuilder:<init>	()V
    //   283: astore 17
    //   285: iload 5
    //   287: ifeq +1729 -> 2016
    //   290: ldc_w 861
    //   293: astore 14
    //   295: aload 17
    //   297: aload 14
    //   299: invokevirtual 172	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   302: aload_0
    //   303: invokevirtual 241	android/content/Context:getPackageName	()Ljava/lang/String;
    //   306: invokevirtual 172	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   309: pop
    //   310: iload 5
    //   312: ifeq +17 -> 329
    //   315: aload 16
    //   317: ldc_w 863
    //   320: ldc_w 865
    //   323: invokeinterface 295 3 0
    //   328: pop
    //   329: aload 16
    //   331: ldc_w 867
    //   334: getstatic 873	android/os/Build:BRAND	Ljava/lang/String;
    //   337: invokeinterface 295 3 0
    //   342: pop
    //   343: aload 16
    //   345: ldc_w 875
    //   348: getstatic 878	android/os/Build:DEVICE	Ljava/lang/String;
    //   351: invokeinterface 295 3 0
    //   356: pop
    //   357: aload 16
    //   359: ldc_w 880
    //   362: getstatic 883	android/os/Build:PRODUCT	Ljava/lang/String;
    //   365: invokeinterface 295 3 0
    //   370: pop
    //   371: aload 16
    //   373: ldc_w 638
    //   376: getstatic 589	android/os/Build$VERSION:SDK_INT	I
    //   379: invokestatic 463	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   382: invokeinterface 295 3 0
    //   387: pop
    //   388: aload 16
    //   390: ldc_w 885
    //   393: getstatic 888	android/os/Build:MODEL	Ljava/lang/String;
    //   396: invokeinterface 295 3 0
    //   401: pop
    //   402: aload 16
    //   404: ldc_w 890
    //   407: getstatic 893	android/os/Build:TYPE	Ljava/lang/String;
    //   410: invokeinterface 295 3 0
    //   415: pop
    //   416: ldc_w 895
    //   419: invokestatic 79	com/appsflyer/AppsFlyerLib:a	(Ljava/lang/String;)Ljava/lang/String;
    //   422: astore 14
    //   424: aload 14
    //   426: ifnull +16 -> 442
    //   429: aload 16
    //   431: ldc_w 897
    //   434: aload 14
    //   436: invokeinterface 295 3 0
    //   441: pop
    //   442: aload_0
    //   443: invokevirtual 778	android/content/Context:getPackageManager	()Landroid/content/pm/PackageManager;
    //   446: aload_0
    //   447: invokevirtual 241	android/content/Context:getPackageName	()Ljava/lang/String;
    //   450: invokevirtual 900	android/content/pm/PackageManager:getInstallerPackageName	(Ljava/lang/String;)Ljava/lang/String;
    //   453: astore 14
    //   455: aload 14
    //   457: ifnull +16 -> 473
    //   460: aload 16
    //   462: ldc_w 902
    //   465: aload 14
    //   467: invokeinterface 295 3 0
    //   472: pop
    //   473: invokestatic 122	com/appsflyer/AppsFlyerProperties:a	()Lcom/appsflyer/AppsFlyerProperties;
    //   476: ldc_w 904
    //   479: invokevirtual 124	com/appsflyer/AppsFlyerProperties:b	(Ljava/lang/String;)Ljava/lang/String;
    //   482: astore 14
    //   484: aload 14
    //   486: ifnull +24 -> 510
    //   489: aload 14
    //   491: invokevirtual 567	java/lang/String:length	()I
    //   494: ifle +16 -> 510
    //   497: aload 16
    //   499: ldc_w 904
    //   502: aload 14
    //   504: invokeinterface 295 3 0
    //   509: pop
    //   510: aload_0
    //   511: invokestatic 907	com/appsflyer/AppsFlyerLib:o	(Landroid/content/Context;)Ljava/lang/String;
    //   514: astore 14
    //   516: aload_0
    //   517: aload 14
    //   519: invokestatic 564	com/appsflyer/AppsFlyerLib:d	(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    //   522: astore 18
    //   524: aload 18
    //   526: ifnull +16 -> 542
    //   529: aload 16
    //   531: ldc_w 909
    //   534: aload 18
    //   536: invokeinterface 295 3 0
    //   541: pop
    //   542: aload 18
    //   544: ifnull +1395 -> 1939
    //   547: aload 18
    //   549: aload 14
    //   551: invokevirtual 385	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   554: ifeq +6 -> 560
    //   557: goto +1382 -> 1939
    //   560: aload 16
    //   562: ldc_w 911
    //   565: aload 14
    //   567: invokeinterface 295 3 0
    //   572: pop
    //   573: aload_0
    //   574: invokestatic 914	com/appsflyer/AppsFlyerLib:k	(Landroid/content/Context;)Ljava/lang/String;
    //   577: astore 14
    //   579: aload 14
    //   581: ifnull +19 -> 600
    //   584: aload 16
    //   586: ldc_w 916
    //   589: aload 14
    //   591: invokevirtual 919	java/lang/String:toLowerCase	()Ljava/lang/String;
    //   594: invokeinterface 295 3 0
    //   599: pop
    //   600: aload_0
    //   601: invokestatic 922	com/appsflyer/AppsFlyerLib:m	(Landroid/content/Context;)Ljava/lang/String;
    //   604: astore 14
    //   606: aload 14
    //   608: ifnull +19 -> 627
    //   611: aload 16
    //   613: ldc_w 924
    //   616: aload 14
    //   618: invokevirtual 919	java/lang/String:toLowerCase	()Ljava/lang/String;
    //   621: invokeinterface 295 3 0
    //   626: pop
    //   627: aload_0
    //   628: invokestatic 927	com/appsflyer/AppsFlyerLib:l	(Landroid/content/Context;)Ljava/lang/String;
    //   631: astore 14
    //   633: aload 14
    //   635: ifnull +19 -> 654
    //   638: aload 16
    //   640: ldc_w 929
    //   643: aload 14
    //   645: invokevirtual 919	java/lang/String:toLowerCase	()Ljava/lang/String;
    //   648: invokeinterface 295 3 0
    //   653: pop
    //   654: aload_1
    //   655: ifnull +13 -> 668
    //   658: aload_1
    //   659: astore 14
    //   661: aload_1
    //   662: invokevirtual 567	java/lang/String:length	()I
    //   665: ifne +11 -> 676
    //   668: ldc_w 931
    //   671: invokestatic 79	com/appsflyer/AppsFlyerLib:a	(Ljava/lang/String;)Ljava/lang/String;
    //   674: astore 14
    //   676: aload 14
    //   678: ifnull +182 -> 860
    //   681: aload 14
    //   683: invokevirtual 567	java/lang/String:length	()I
    //   686: ifle +174 -> 860
    //   689: aload 16
    //   691: ldc_w 933
    //   694: aload 14
    //   696: invokeinterface 295 3 0
    //   701: pop
    //   702: aload 14
    //   704: invokevirtual 567	java/lang/String:length	()I
    //   707: bipush 8
    //   709: if_icmple +22 -> 731
    //   712: aload 16
    //   714: ldc_w 935
    //   717: aload 14
    //   719: iconst_0
    //   720: bipush 8
    //   722: invokevirtual 759	java/lang/String:substring	(II)Ljava/lang/String;
    //   725: invokeinterface 295 3 0
    //   730: pop
    //   731: invokestatic 937	com/appsflyer/AppsFlyerLib:a	()Ljava/lang/String;
    //   734: astore_1
    //   735: aload_1
    //   736: ifnull +15 -> 751
    //   739: aload 16
    //   741: ldc_w 939
    //   744: aload_1
    //   745: invokeinterface 295 3 0
    //   750: pop
    //   751: invokestatic 122	com/appsflyer/AppsFlyerProperties:a	()Lcom/appsflyer/AppsFlyerProperties;
    //   754: ldc_w 941
    //   757: invokevirtual 943	com/appsflyer/AppsFlyerProperties:a	(Ljava/lang/String;)[Ljava/lang/String;
    //   760: astore 14
    //   762: aload 14
    //   764: ifnull +992 -> 1756
    //   767: aload 14
    //   769: arraylength
    //   770: ifle +986 -> 1756
    //   773: new 165	java/lang/StringBuilder
    //   776: dup
    //   777: invokespecial 166	java/lang/StringBuilder:<init>	()V
    //   780: astore 18
    //   782: invokestatic 122	com/appsflyer/AppsFlyerProperties:a	()Lcom/appsflyer/AppsFlyerProperties;
    //   785: ldc_w 945
    //   788: iconst_1
    //   789: invokevirtual 947	com/appsflyer/AppsFlyerProperties:a	(Ljava/lang/String;I)I
    //   792: istore 7
    //   794: new 34	java/lang/String
    //   797: dup
    //   798: invokespecial 766	java/lang/String:<init>	()V
    //   801: astore_1
    //   802: aload 14
    //   804: arraylength
    //   805: istore 8
    //   807: iconst_0
    //   808: istore 6
    //   810: iload 6
    //   812: iload 8
    //   814: if_icmpge +106 -> 920
    //   817: aload 14
    //   819: iload 6
    //   821: aaload
    //   822: astore_1
    //   823: aload 18
    //   825: invokevirtual 210	java/lang/StringBuilder:length	()I
    //   828: iconst_1
    //   829: if_icmple +1123 -> 1952
    //   832: aload 18
    //   834: bipush 44
    //   836: invokevirtual 213	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   839: pop
    //   840: goto +1112 -> 1952
    //   843: aload 18
    //   845: aload_1
    //   846: invokestatic 950	com/appsflyer/HashUtils:a	(Ljava/lang/String;)Ljava/lang/String;
    //   849: invokevirtual 172	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   852: pop
    //   853: ldc_w 952
    //   856: astore_1
    //   857: goto +1126 -> 1983
    //   860: aload 15
    //   862: ldc_w 954
    //   865: invokestatic 956	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   868: pop
    //   869: aload_0
    //   870: aload 15
    //   872: ldc_w 958
    //   875: aconst_null
    //   876: invokestatic 465	com/appsflyer/AppsFlyerLib:b	(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   879: aload 15
    //   881: ldc_w 960
    //   884: invokestatic 956	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   887: pop
    //   888: return
    //   889: aload 18
    //   891: aload_1
    //   892: invokestatic 961	com/appsflyer/HashUtils:b	(Ljava/lang/String;)Ljava/lang/String;
    //   895: invokevirtual 172	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   898: pop
    //   899: ldc_w 963
    //   902: astore_1
    //   903: goto +1080 -> 1983
    //   906: aload 18
    //   908: aload_1
    //   909: invokevirtual 172	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   912: pop
    //   913: ldc_w 965
    //   916: astore_1
    //   917: goto +1066 -> 1983
    //   920: aload 16
    //   922: aload_1
    //   923: aload 18
    //   925: invokevirtual 175	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   928: invokeinterface 295 3 0
    //   933: pop
    //   934: aload_2
    //   935: ifnull +31 -> 966
    //   938: aload 16
    //   940: ldc_w 967
    //   943: aload_2
    //   944: invokeinterface 295 3 0
    //   949: pop
    //   950: aload_3
    //   951: ifnull +15 -> 966
    //   954: aload 16
    //   956: ldc_w 969
    //   959: aload_3
    //   960: invokeinterface 295 3 0
    //   965: pop
    //   966: ldc_w 971
    //   969: invokestatic 79	com/appsflyer/AppsFlyerLib:a	(Ljava/lang/String;)Ljava/lang/String;
    //   972: ifnull +20 -> 992
    //   975: aload 16
    //   977: ldc_w 971
    //   980: ldc_w 971
    //   983: invokestatic 79	com/appsflyer/AppsFlyerLib:a	(Ljava/lang/String;)Ljava/lang/String;
    //   986: invokeinterface 295 3 0
    //   991: pop
    //   992: ldc_w 973
    //   995: invokestatic 79	com/appsflyer/AppsFlyerLib:a	(Ljava/lang/String;)Ljava/lang/String;
    //   998: astore_1
    //   999: aload_1
    //   1000: ifnull +55 -> 1055
    //   1003: aload_1
    //   1004: invokevirtual 567	java/lang/String:length	()I
    //   1007: iconst_3
    //   1008: if_icmpeq +35 -> 1043
    //   1011: ldc 109
    //   1013: new 165	java/lang/StringBuilder
    //   1016: dup
    //   1017: invokespecial 166	java/lang/StringBuilder:<init>	()V
    //   1020: ldc_w 975
    //   1023: invokevirtual 172	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1026: aload_1
    //   1027: invokevirtual 172	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1030: ldc_w 977
    //   1033: invokevirtual 172	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1036: invokevirtual 175	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1039: invokestatic 530	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;)I
    //   1042: pop
    //   1043: aload 16
    //   1045: ldc_w 979
    //   1048: aload_1
    //   1049: invokeinterface 295 3 0
    //   1054: pop
    //   1055: ldc_w 981
    //   1058: invokestatic 79	com/appsflyer/AppsFlyerLib:a	(Ljava/lang/String;)Ljava/lang/String;
    //   1061: astore_1
    //   1062: aload_1
    //   1063: ifnull +15 -> 1078
    //   1066: aload 16
    //   1068: ldc_w 983
    //   1071: aload_1
    //   1072: invokeinterface 295 3 0
    //   1077: pop
    //   1078: aload 16
    //   1080: ldc_w 985
    //   1083: aload_0
    //   1084: invokestatic 987	com/appsflyer/AppsFlyerLib:c	(Landroid/content/Context;)Z
    //   1087: invokestatic 680	java/lang/Boolean:toString	(Z)Ljava/lang/String;
    //   1090: invokeinterface 295 3 0
    //   1095: pop
    //   1096: aload_0
    //   1097: invokevirtual 337	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   1100: invokestatic 989	com/appsflyer/AppsFlyerLib:a	(Landroid/content/ContentResolver;)Ljava/lang/String;
    //   1103: astore_1
    //   1104: aload_1
    //   1105: ifnull +15 -> 1120
    //   1108: aload 16
    //   1110: ldc_w 991
    //   1113: aload_1
    //   1114: invokeinterface 295 3 0
    //   1119: pop
    //   1120: aload_0
    //   1121: aload 16
    //   1123: invokestatic 364	com/appsflyer/AppsFlyerLib:a	(Landroid/content/Context;Ljava/util/Map;)V
    //   1126: aload_0
    //   1127: invokestatic 994	com/appsflyer/Installation:a	(Landroid/content/Context;)Ljava/lang/String;
    //   1130: astore_1
    //   1131: aload_1
    //   1132: ifnull +15 -> 1147
    //   1135: aload 16
    //   1137: ldc_w 358
    //   1140: aload_1
    //   1141: invokeinterface 295 3 0
    //   1146: pop
    //   1147: aload 16
    //   1149: ldc_w 996
    //   1152: invokestatic 1002	java/util/Locale:getDefault	()Ljava/util/Locale;
    //   1155: invokevirtual 1005	java/util/Locale:getDisplayLanguage	()Ljava/lang/String;
    //   1158: invokeinterface 295 3 0
    //   1163: pop
    //   1164: aload 16
    //   1166: ldc_w 1007
    //   1169: invokestatic 1002	java/util/Locale:getDefault	()Ljava/util/Locale;
    //   1172: invokevirtual 1010	java/util/Locale:getLanguage	()Ljava/lang/String;
    //   1175: invokeinterface 295 3 0
    //   1180: pop
    //   1181: aload 16
    //   1183: ldc_w 1012
    //   1186: invokestatic 1002	java/util/Locale:getDefault	()Ljava/util/Locale;
    //   1189: invokevirtual 1015	java/util/Locale:getCountry	()Ljava/lang/String;
    //   1192: invokeinterface 295 3 0
    //   1197: pop
    //   1198: aload_0
    //   1199: ldc_w 301
    //   1202: invokevirtual 305	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   1205: checkcast 307	android/telephony/TelephonyManager
    //   1208: astore_1
    //   1209: aload 16
    //   1211: ldc_w 1017
    //   1214: aload_1
    //   1215: invokevirtual 1020	android/telephony/TelephonyManager:getSimOperatorName	()Ljava/lang/String;
    //   1218: invokeinterface 295 3 0
    //   1223: pop
    //   1224: aload 16
    //   1226: ldc_w 1022
    //   1229: aload_1
    //   1230: invokevirtual 1025	android/telephony/TelephonyManager:getNetworkOperatorName	()Ljava/lang/String;
    //   1233: invokeinterface 295 3 0
    //   1238: pop
    //   1239: aload 16
    //   1241: ldc_w 1027
    //   1244: aload_0
    //   1245: invokestatic 1030	com/appsflyer/AppsFlyerLib:p	(Landroid/content/Context;)Ljava/lang/String;
    //   1248: invokeinterface 295 3 0
    //   1253: pop
    //   1254: aload_0
    //   1255: aload 16
    //   1257: invokestatic 362	com/appsflyer/AppsFlyerLib:b	(Landroid/content/Context;Ljava/util/Map;)V
    //   1260: aload_0
    //   1261: aload 16
    //   1263: invokestatic 1032	com/appsflyer/AppsFlyerLib:c	(Landroid/content/Context;Ljava/util/Map;)V
    //   1266: new 156	java/text/SimpleDateFormat
    //   1269: dup
    //   1270: ldc_w 1034
    //   1273: getstatic 1038	java/util/Locale:US	Ljava/util/Locale;
    //   1276: invokespecial 1041	java/text/SimpleDateFormat:<init>	(Ljava/lang/String;Ljava/util/Locale;)V
    //   1279: astore_1
    //   1280: getstatic 589	android/os/Build$VERSION:SDK_INT	I
    //   1283: istore 6
    //   1285: iload 6
    //   1287: bipush 9
    //   1289: if_icmplt +40 -> 1329
    //   1292: aload 16
    //   1294: ldc_w 1043
    //   1297: aload_1
    //   1298: new 153	java/util/Date
    //   1301: dup
    //   1302: aload_0
    //   1303: invokevirtual 778	android/content/Context:getPackageManager	()Landroid/content/pm/PackageManager;
    //   1306: aload_0
    //   1307: invokevirtual 241	android/content/Context:getPackageName	()Ljava/lang/String;
    //   1310: iconst_0
    //   1311: invokevirtual 784	android/content/pm/PackageManager:getPackageInfo	(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    //   1314: getfield 789	android/content/pm/PackageInfo:firstInstallTime	J
    //   1317: invokespecial 795	java/util/Date:<init>	(J)V
    //   1320: invokevirtual 160	java/text/SimpleDateFormat:format	(Ljava/util/Date;)Ljava/lang/String;
    //   1323: invokeinterface 295 3 0
    //   1328: pop
    //   1329: aload_0
    //   1330: invokevirtual 778	android/content/Context:getPackageManager	()Landroid/content/pm/PackageManager;
    //   1333: aload_0
    //   1334: invokevirtual 241	android/content/Context:getPackageName	()Ljava/lang/String;
    //   1337: iconst_0
    //   1338: invokevirtual 784	android/content/pm/PackageManager:getPackageInfo	(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    //   1341: astore_2
    //   1342: aload_0
    //   1343: ldc 127
    //   1345: iconst_0
    //   1346: invokevirtual 133	android/content/Context:getSharedPreferences	(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    //   1349: ldc_w 1045
    //   1352: iconst_0
    //   1353: invokeinterface 487 3 0
    //   1358: istore 6
    //   1360: aload_2
    //   1361: getfield 1047	android/content/pm/PackageInfo:versionCode	I
    //   1364: iload 6
    //   1366: if_icmple +22 -> 1388
    //   1369: aload_0
    //   1370: ldc_w 483
    //   1373: iconst_0
    //   1374: invokestatic 249	com/appsflyer/AppsFlyerLib:b	(Landroid/content/Context;Ljava/lang/String;I)V
    //   1377: aload_0
    //   1378: ldc_w 1045
    //   1381: aload_2
    //   1382: getfield 1047	android/content/pm/PackageInfo:versionCode	I
    //   1385: invokestatic 249	com/appsflyer/AppsFlyerLib:b	(Landroid/content/Context;Ljava/lang/String;I)V
    //   1388: aload 16
    //   1390: ldc_w 1049
    //   1393: aload_2
    //   1394: getfield 1047	android/content/pm/PackageInfo:versionCode	I
    //   1397: invokestatic 463	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   1400: invokeinterface 295 3 0
    //   1405: pop
    //   1406: aload 16
    //   1408: ldc_w 1051
    //   1411: aload_2
    //   1412: getfield 1054	android/content/pm/PackageInfo:versionName	Ljava/lang/String;
    //   1415: invokeinterface 295 3 0
    //   1420: pop
    //   1421: aload_2
    //   1422: getfield 789	android/content/pm/PackageInfo:firstInstallTime	J
    //   1425: lstore 10
    //   1427: aload_2
    //   1428: getfield 1057	android/content/pm/PackageInfo:lastUpdateTime	J
    //   1431: lstore 12
    //   1433: aload 16
    //   1435: ldc_w 1059
    //   1438: aload_1
    //   1439: new 153	java/util/Date
    //   1442: dup
    //   1443: lload 10
    //   1445: invokespecial 795	java/util/Date:<init>	(J)V
    //   1448: invokevirtual 160	java/text/SimpleDateFormat:format	(Ljava/util/Date;)Ljava/lang/String;
    //   1451: invokeinterface 295 3 0
    //   1456: pop
    //   1457: aload 16
    //   1459: ldc_w 1061
    //   1462: aload_1
    //   1463: new 153	java/util/Date
    //   1466: dup
    //   1467: lload 12
    //   1469: invokespecial 795	java/util/Date:<init>	(J)V
    //   1472: invokevirtual 160	java/text/SimpleDateFormat:format	(Ljava/util/Date;)Ljava/lang/String;
    //   1475: invokeinterface 295 3 0
    //   1480: pop
    //   1481: aload 16
    //   1483: ldc_w 1063
    //   1486: aload_1
    //   1487: aload_0
    //   1488: invokestatic 1065	com/appsflyer/AppsFlyerLib:a	(Ljava/text/SimpleDateFormat;Landroid/content/Context;)Ljava/lang/String;
    //   1491: invokeinterface 295 3 0
    //   1496: pop
    //   1497: aload 4
    //   1499: invokevirtual 567	java/lang/String:length	()I
    //   1502: ifle +16 -> 1518
    //   1505: aload 16
    //   1507: ldc_w 1067
    //   1510: aload 4
    //   1512: invokeinterface 295 3 0
    //   1517: pop
    //   1518: aload_0
    //   1519: ldc 127
    //   1521: iconst_0
    //   1522: invokevirtual 133	android/content/Context:getSharedPreferences	(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    //   1525: ldc_w 497
    //   1528: aconst_null
    //   1529: invokeinterface 140 3 0
    //   1534: astore_1
    //   1535: aload_1
    //   1536: ifnull +22 -> 1558
    //   1539: aload_1
    //   1540: invokevirtual 567	java/lang/String:length	()I
    //   1543: ifle +15 -> 1558
    //   1546: aload 16
    //   1548: ldc_w 1069
    //   1551: aload_1
    //   1552: invokeinterface 295 3 0
    //   1557: pop
    //   1558: iload 9
    //   1560: ifeq +149 -> 1709
    //   1563: aload_0
    //   1564: instanceof 226
    //   1567: ifeq +142 -> 1709
    //   1570: aload_0
    //   1571: checkcast 226	android/app/Activity
    //   1574: invokevirtual 1073	android/app/Activity:getIntent	()Landroid/content/Intent;
    //   1577: astore_1
    //   1578: aload_1
    //   1579: invokevirtual 1076	android/content/Intent:getAction	()Ljava/lang/String;
    //   1582: ldc_w 1078
    //   1585: if_acmpne +124 -> 1709
    //   1588: aload_1
    //   1589: invokevirtual 1082	android/content/Intent:getData	()Landroid/net/Uri;
    //   1592: astore_3
    //   1593: aload 16
    //   1595: ldc_w 1084
    //   1598: aload_3
    //   1599: invokevirtual 1085	android/net/Uri:toString	()Ljava/lang/String;
    //   1602: invokeinterface 295 3 0
    //   1607: pop
    //   1608: aload_3
    //   1609: ldc_w 1084
    //   1612: invokevirtual 1088	android/net/Uri:getQueryParameter	(Ljava/lang/String;)Ljava/lang/String;
    //   1615: ifnull +248 -> 1863
    //   1618: aload_0
    //   1619: aload_3
    //   1620: invokevirtual 1091	android/net/Uri:getQuery	()Ljava/lang/String;
    //   1623: invokevirtual 817	java/lang/String:toString	()Ljava/lang/String;
    //   1626: invokestatic 576	com/appsflyer/AppsFlyerLib:c	(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;
    //   1629: astore_2
    //   1630: aload_3
    //   1631: invokevirtual 1094	android/net/Uri:getPath	()Ljava/lang/String;
    //   1634: ifnull +17 -> 1651
    //   1637: aload_2
    //   1638: ldc_w 1096
    //   1641: aload_3
    //   1642: invokevirtual 1094	android/net/Uri:getPath	()Ljava/lang/String;
    //   1645: invokeinterface 295 3 0
    //   1650: pop
    //   1651: aload_2
    //   1652: astore_1
    //   1653: aload_3
    //   1654: invokevirtual 1099	android/net/Uri:getScheme	()Ljava/lang/String;
    //   1657: ifnull +19 -> 1676
    //   1660: aload_2
    //   1661: ldc_w 1101
    //   1664: aload_3
    //   1665: invokevirtual 1099	android/net/Uri:getScheme	()Ljava/lang/String;
    //   1668: invokeinterface 295 3 0
    //   1673: pop
    //   1674: aload_2
    //   1675: astore_1
    //   1676: aload_0
    //   1677: ldc_w 1103
    //   1680: new 278	org/json/JSONObject
    //   1683: dup
    //   1684: aload_1
    //   1685: invokespecial 281	org/json/JSONObject:<init>	(Ljava/util/Map;)V
    //   1688: invokevirtual 282	org/json/JSONObject:toString	()Ljava/lang/String;
    //   1691: invokestatic 163	com/appsflyer/AppsFlyerLib:b	(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    //   1694: getstatic 46	com/appsflyer/AppsFlyerLib:c	Lcom/appsflyer/AppsFlyerConversionListener;
    //   1697: ifnull +12 -> 1709
    //   1700: getstatic 46	com/appsflyer/AppsFlyerLib:c	Lcom/appsflyer/AppsFlyerConversionListener;
    //   1703: aload_1
    //   1704: invokeinterface 1105 2 0
    //   1709: getstatic 1109	java/lang/System:out	Ljava/io/PrintStream;
    //   1712: ldc_w 1111
    //   1715: invokevirtual 1116	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   1718: new 1118	com/appsflyer/AppsFlyerLib$SendToServerRunnable
    //   1721: dup
    //   1722: aload 17
    //   1724: invokevirtual 175	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1727: aload 16
    //   1729: aload_0
    //   1730: invokevirtual 506	android/content/Context:getApplicationContext	()Landroid/content/Context;
    //   1733: iload 9
    //   1735: aconst_null
    //   1736: invokespecial 1121	com/appsflyer/AppsFlyerLib$SendToServerRunnable:<init>	(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;ZLcom/appsflyer/AppsFlyerLib$1;)V
    //   1739: invokevirtual 1124	com/appsflyer/AppsFlyerLib$SendToServerRunnable:run	()V
    //   1742: return
    //   1743: astore_0
    //   1744: aload 15
    //   1746: aload_0
    //   1747: invokevirtual 1125	java/lang/Throwable:getLocalizedMessage	()Ljava/lang/String;
    //   1750: aload_0
    //   1751: invokestatic 1127	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   1754: pop
    //   1755: return
    //   1756: ldc_w 1129
    //   1759: invokestatic 79	com/appsflyer/AppsFlyerLib:a	(Ljava/lang/String;)Ljava/lang/String;
    //   1762: astore_1
    //   1763: aload_1
    //   1764: ifnull -830 -> 934
    //   1767: aload 16
    //   1769: ldc_w 1131
    //   1772: aload_1
    //   1773: invokestatic 950	com/appsflyer/HashUtils:a	(Ljava/lang/String;)Ljava/lang/String;
    //   1776: invokeinterface 295 3 0
    //   1781: pop
    //   1782: goto -848 -> 934
    //   1785: astore_1
    //   1786: ldc 109
    //   1788: new 165	java/lang/StringBuilder
    //   1791: dup
    //   1792: invokespecial 166	java/lang/StringBuilder:<init>	()V
    //   1795: ldc_w 1133
    //   1798: invokevirtual 172	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1801: ldc_w 1133
    //   1804: invokevirtual 172	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1807: ldc_w 1135
    //   1810: invokevirtual 172	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1813: aload_1
    //   1814: invokevirtual 1138	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   1817: invokevirtual 172	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1820: invokevirtual 175	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1823: invokestatic 178	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   1826: pop
    //   1827: goto -680 -> 1147
    //   1830: astore_1
    //   1831: ldc 109
    //   1833: new 165	java/lang/StringBuilder
    //   1836: dup
    //   1837: invokespecial 166	java/lang/StringBuilder:<init>	()V
    //   1840: ldc_w 1140
    //   1843: invokevirtual 172	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1846: aload_1
    //   1847: invokevirtual 1141	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   1850: invokevirtual 172	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1853: invokevirtual 175	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1856: invokestatic 178	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   1859: pop
    //   1860: goto -606 -> 1254
    //   1863: new 275	java/util/HashMap
    //   1866: dup
    //   1867: invokespecial 276	java/util/HashMap:<init>	()V
    //   1870: astore_1
    //   1871: aload_1
    //   1872: ldc_w 1143
    //   1875: aload_3
    //   1876: invokevirtual 1085	android/net/Uri:toString	()Ljava/lang/String;
    //   1879: invokeinterface 295 3 0
    //   1884: pop
    //   1885: goto -209 -> 1676
    //   1888: astore_1
    //   1889: goto -392 -> 1497
    //   1892: astore_1
    //   1893: goto -396 -> 1497
    //   1896: astore_2
    //   1897: goto -568 -> 1329
    //   1900: astore_1
    //   1901: goto -662 -> 1239
    //   1904: astore_1
    //   1905: goto -707 -> 1198
    //   1908: astore_1
    //   1909: goto -728 -> 1181
    //   1912: astore_1
    //   1913: goto -749 -> 1164
    //   1916: astore 14
    //   1918: goto -1445 -> 473
    //   1921: astore 14
    //   1923: goto -1647 -> 276
    //   1926: iload 9
    //   1928: ifeq +82 -> 2010
    //   1931: ldc_w 831
    //   1934: astore 14
    //   1936: goto -1775 -> 161
    //   1939: aload 18
    //   1941: ifnonnull -1368 -> 573
    //   1944: aload 14
    //   1946: ifnull -1373 -> 573
    //   1949: goto -1389 -> 560
    //   1952: iload 7
    //   1954: tableswitch	default:+26->1980, 0:+-1048->906, 1:+-1111->843, 2:+-1065->889
    //   1980: goto -1137 -> 843
    //   1983: iload 6
    //   1985: iconst_1
    //   1986: iadd
    //   1987: istore 6
    //   1989: goto -1179 -> 810
    //   1992: iconst_0
    //   1993: istore 9
    //   1995: goto -1953 -> 42
    //   1998: aload_2
    //   1999: astore 14
    //   2001: goto -1878 -> 123
    //   2004: aload_2
    //   2005: astore 14
    //   2007: goto -1858 -> 149
    //   2010: aload_2
    //   2011: astore 14
    //   2013: goto -1852 -> 161
    //   2016: ldc_w 1145
    //   2019: astore 14
    //   2021: goto -1726 -> 295
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	2024	0	paramContext	Context
    //   0	2024	1	paramString1	String
    //   0	2024	2	paramString2	String
    //   0	2024	3	paramString3	String
    //   0	2024	4	paramString4	String
    //   0	2024	5	paramBoolean	boolean
    //   808	1180	6	i	int
    //   792	1161	7	j	int
    //   805	10	8	k	int
    //   40	1954	9	bool	boolean
    //   1425	19	10	l1	long
    //   1431	37	12	l2	long
    //   121	697	14	localObject1	Object
    //   1916	1	14	localException1	Exception
    //   1921	1	14	localException2	Exception
    //   1934	86	14	str1	String
    //   80	1665	15	str2	String
    //   49	1719	16	localHashMap	HashMap
    //   111	1612	17	localStringBuilder	StringBuilder
    //   522	1418	18	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   82	113	1743	java/lang/Throwable
    //   123	139	1743	java/lang/Throwable
    //   149	158	1743	java/lang/Throwable
    //   161	179	1743	java/lang/Throwable
    //   179	232	1743	java/lang/Throwable
    //   232	254	1743	java/lang/Throwable
    //   254	276	1743	java/lang/Throwable
    //   276	285	1743	java/lang/Throwable
    //   295	310	1743	java/lang/Throwable
    //   315	329	1743	java/lang/Throwable
    //   329	424	1743	java/lang/Throwable
    //   429	442	1743	java/lang/Throwable
    //   442	455	1743	java/lang/Throwable
    //   460	473	1743	java/lang/Throwable
    //   473	484	1743	java/lang/Throwable
    //   489	510	1743	java/lang/Throwable
    //   510	524	1743	java/lang/Throwable
    //   529	542	1743	java/lang/Throwable
    //   547	557	1743	java/lang/Throwable
    //   560	573	1743	java/lang/Throwable
    //   573	579	1743	java/lang/Throwable
    //   584	600	1743	java/lang/Throwable
    //   600	606	1743	java/lang/Throwable
    //   611	627	1743	java/lang/Throwable
    //   627	633	1743	java/lang/Throwable
    //   638	654	1743	java/lang/Throwable
    //   661	668	1743	java/lang/Throwable
    //   668	676	1743	java/lang/Throwable
    //   681	731	1743	java/lang/Throwable
    //   731	735	1743	java/lang/Throwable
    //   739	751	1743	java/lang/Throwable
    //   751	762	1743	java/lang/Throwable
    //   767	807	1743	java/lang/Throwable
    //   823	840	1743	java/lang/Throwable
    //   843	853	1743	java/lang/Throwable
    //   860	888	1743	java/lang/Throwable
    //   889	899	1743	java/lang/Throwable
    //   906	913	1743	java/lang/Throwable
    //   920	934	1743	java/lang/Throwable
    //   938	950	1743	java/lang/Throwable
    //   954	966	1743	java/lang/Throwable
    //   966	992	1743	java/lang/Throwable
    //   992	999	1743	java/lang/Throwable
    //   1003	1043	1743	java/lang/Throwable
    //   1043	1055	1743	java/lang/Throwable
    //   1055	1062	1743	java/lang/Throwable
    //   1066	1078	1743	java/lang/Throwable
    //   1078	1104	1743	java/lang/Throwable
    //   1108	1120	1743	java/lang/Throwable
    //   1120	1126	1743	java/lang/Throwable
    //   1126	1131	1743	java/lang/Throwable
    //   1135	1147	1743	java/lang/Throwable
    //   1147	1164	1743	java/lang/Throwable
    //   1164	1181	1743	java/lang/Throwable
    //   1181	1198	1743	java/lang/Throwable
    //   1198	1239	1743	java/lang/Throwable
    //   1254	1285	1743	java/lang/Throwable
    //   1292	1329	1743	java/lang/Throwable
    //   1329	1388	1743	java/lang/Throwable
    //   1388	1497	1743	java/lang/Throwable
    //   1497	1518	1743	java/lang/Throwable
    //   1518	1535	1743	java/lang/Throwable
    //   1539	1558	1743	java/lang/Throwable
    //   1563	1651	1743	java/lang/Throwable
    //   1653	1674	1743	java/lang/Throwable
    //   1676	1709	1743	java/lang/Throwable
    //   1709	1742	1743	java/lang/Throwable
    //   1756	1763	1743	java/lang/Throwable
    //   1767	1782	1743	java/lang/Throwable
    //   1786	1827	1743	java/lang/Throwable
    //   1831	1860	1743	java/lang/Throwable
    //   1863	1885	1743	java/lang/Throwable
    //   1126	1131	1785	java/lang/Exception
    //   1135	1147	1785	java/lang/Exception
    //   1239	1254	1830	java/lang/Throwable
    //   1329	1388	1888	java/lang/NoSuchFieldError
    //   1388	1497	1888	java/lang/NoSuchFieldError
    //   1329	1388	1892	android/content/pm/PackageManager$NameNotFoundException
    //   1388	1497	1892	android/content/pm/PackageManager$NameNotFoundException
    //   1292	1329	1896	java/lang/Exception
    //   1198	1239	1900	java/lang/Exception
    //   1181	1198	1904	java/lang/Exception
    //   1164	1181	1908	java/lang/Exception
    //   1147	1164	1912	java/lang/Exception
    //   442	455	1916	java/lang/Exception
    //   460	473	1916	java/lang/Exception
    //   179	232	1921	java/lang/Exception
    //   232	254	1921	java/lang/Exception
    //   254	276	1921	java/lang/Exception
  }
  
  private static void c(Context paramContext, Map<String, String> paramMap)
  {
    try
    {
      Class.forName("com.unity3d.player.UnityPlayer");
      paramMap.put("platformextension", "android_unity");
      return;
    }
    catch (ClassNotFoundException paramContext)
    {
      paramMap.put("platformextension", "android_native");
      return;
    }
    catch (Exception paramContext) {}
  }
  
  public static void c(String paramString)
  {
    a("AppsFlyerKey", paramString);
    LogMessages.a(paramString);
  }
  
  public static boolean c(Context paramContext)
  {
    boolean bool = false;
    try
    {
      int i = getPackageManagergetApplicationInfogetPackageName0flags;
      if ((i & 0x1) != 0) {
        bool = true;
      }
      return bool;
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      Log.e("AppsFlyer_3.2", "Could not check if app is pre installed", paramContext);
    }
    return false;
  }
  
  public static String d(Context paramContext)
  {
    return Installation.a(paramContext);
  }
  
  private static String d(Context paramContext, String paramString)
  {
    SharedPreferences localSharedPreferences = paramContext.getSharedPreferences("appsflyer-data", 0);
    if (localSharedPreferences.contains("CACHED_CHANNEL")) {
      return localSharedPreferences.getString("CACHED_CHANNEL", null);
    }
    b(paramContext, "CACHED_CHANNEL", paramString);
    return paramString;
  }
  
  private static Map<String, String> e(String paramString)
  {
    localHashMap = new HashMap();
    try
    {
      paramString = new JSONObject(paramString);
      Iterator localIterator = paramString.keys();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        if (!b.contains(str)) {
          localHashMap.put(str, paramString.getString(str));
        }
      }
      return localHashMap;
    }
    catch (JSONException paramString)
    {
      Log.w("AppsFlyer_3.2", paramString);
      return null;
    }
  }
  
  private static boolean h(Context paramContext)
  {
    return !AppsFlyerProperties.a().e();
  }
  
  private static void i(Context paramContext)
  {
    if (h(paramContext)) {
      Log.i("AppsFlyer_3.2", "app went to background");
    }
    long l1 = System.currentTimeMillis();
    long l2 = h;
    HashMap localHashMap = new HashMap();
    String str = a("AppsFlyerKey");
    localHashMap.put("app_id", paramContext.getPackageName());
    localHashMap.put("devkey", str);
    localHashMap.put("uid", d(paramContext));
    localHashMap.put("time_in_app", String.valueOf((l1 - l2) / 1000L));
    localHashMap.put("statType", "user_closed_app");
    localHashMap.put("platform", "Android");
    localHashMap.put("launch_counter", Integer.toString(b(paramContext, "appsFlyerCount", false)));
    localHashMap.put("gcd_conversion_data_timing", Long.toString(paramContext.getSharedPreferences("appsflyer-data", 0).getLong("appsflyerGetConversionDataTiming", 0L)));
    paramContext = new BackgroundHttpTask(paramContext);
    a = localHashMap;
    paramContext.execute(new String[] { "https://stats.appsflyer.com/stats" });
  }
  
  private static boolean j(Context paramContext)
  {
    boolean bool = false;
    if (!paramContext.getSharedPreferences("appsflyer-data", 0).contains("appsFlyerCount")) {
      bool = true;
    }
    return bool;
  }
  
  private static String k(Context paramContext)
  {
    String str = null;
    SharedPreferences localSharedPreferences = paramContext.getSharedPreferences("appsflyer-data", 0);
    if (localSharedPreferences.contains("INSTALL_STORE")) {
      return localSharedPreferences.getString("INSTALL_STORE", null);
    }
    if (j(paramContext)) {
      str = l(paramContext);
    }
    b(paramContext, "INSTALL_STORE", str);
    return str;
  }
  
  private static String l(Context paramContext)
  {
    try
    {
      Object localObject = getPackageManagergetApplicationInfogetPackageName128metaData;
      if (localObject != null)
      {
        localObject = ((Bundle)localObject).get("AF_STORE");
        if (localObject != null)
        {
          if ((localObject instanceof String)) {
            return (String)localObject;
          }
          localObject = localObject.toString();
          return (String)localObject;
        }
      }
    }
    catch (Exception localException)
    {
      if (h(paramContext)) {
        Log.i("AppsFlyer_3.2", "Could not find AF_STORE value in the manifest", localException);
      }
    }
    return null;
  }
  
  private static String m(Context paramContext)
  {
    localObject2 = null;
    localObject1 = paramContext.getSharedPreferences("appsflyer-data", 0);
    if (((SharedPreferences)localObject1).contains("preInstallName")) {
      return ((SharedPreferences)localObject1).getString("preInstallName", null);
    }
    boolean bool = j(paramContext);
    ((SharedPreferences)localObject1).edit();
    localObject1 = localObject2;
    if (bool) {}
    for (;;)
    {
      try
      {
        localObject1 = getPackageManagergetApplicationInfogetPackageName128metaData;
        if (localObject1 == null) {
          continue;
        }
        localObject1 = ((Bundle)localObject1).get("AF_PRE_INSTALL_NAME");
        if (localObject1 == null) {
          continue;
        }
        if (!(localObject1 instanceof String)) {
          continue;
        }
        localObject1 = (String)localObject1;
      }
      catch (Exception localException)
      {
        localObject1 = localObject2;
        if (!h(paramContext)) {
          continue;
        }
        Log.i("AppsFlyer_3.2", "Could not find AF_PRE_INSTALL_NAME value in the manifest", localException);
        localObject1 = localObject2;
        continue;
        localObject1 = null;
        continue;
      }
      b(paramContext, "preInstallName", (String)localObject1);
      return (String)localObject1;
      localObject1 = localObject1.toString();
    }
  }
  
  private static void n(Context paramContext)
  {
    if ((e) || (System.currentTimeMillis() - f < 15000L)) {}
    while (g != null) {
      return;
    }
    g = Executors.newSingleThreadScheduledExecutor();
    g.schedule(new AppsFlyerLib.CachedRequestSender(paramContext), 1L, TimeUnit.SECONDS);
  }
  
  private static String o(Context paramContext)
  {
    String str = AppsFlyerProperties.a().b("channel");
    Object localObject = str;
    if (str == null)
    {
      try
      {
        paramContext = getPackageManagergetApplicationInfogetPackageName128metaData;
        if (paramContext != null)
        {
          paramContext = paramContext.get("CHANNEL");
          if (paramContext != null) {
            if ((paramContext instanceof String)) {
              paramContext = (String)paramContext;
            } else {
              paramContext = paramContext.toString();
            }
          }
        }
      }
      catch (Exception paramContext)
      {
        Log.i("AppsFlyer_3.2", "Could not load CHANNEL value", paramContext);
        return str;
      }
      paramContext = str;
      localObject = paramContext;
    }
    return (String)localObject;
  }
  
  private static String p(Context paramContext)
  {
    paramContext = (ConnectivityManager)paramContext.getSystemService("connectivity");
    if (paramContext.getNetworkInfo(1).isConnectedOrConnecting()) {
      return "WIFI";
    }
    paramContext = paramContext.getNetworkInfo(0);
    if ((paramContext != null) && (paramContext.isConnectedOrConnecting())) {
      return "MOBILE";
    }
    return "unkown";
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    Object localObject;
    if ("android.intent.action.PACKAGE_REMOVED".equals(paramIntent.getAction()))
    {
      Log.i("AppsFlyer_3.2", "Received ACTION_PACKAGE_REMOVED intent");
      localObject = paramIntent.getExtras();
      if ((((Bundle)localObject).containsKey("android.intent.extra.DATA_REMOVED")) && (((Bundle)localObject).getBoolean("android.intent.extra.DATA_REMOVED")))
      {
        paramIntent = paramIntent.getDataString();
        Log.i("AppsFlyer_3.2", "Package removed");
        a(paramIntent, paramContext);
      }
    }
    do
    {
      do
      {
        return;
        localObject = paramIntent.getStringExtra("shouldMonitor");
        if (localObject != null)
        {
          Log.i("AppsFlyer_3.2", "Turning on monitoring.");
          AppsFlyerProperties.a().a("shouldMonitor", ((String)localObject).equals("true"));
          b(paramContext, null, "START_TRACKING", paramContext.getPackageName());
          return;
        }
        if (h(paramContext)) {
          Log.i("AppsFlyer_3.2", "****** onReceive called *******");
        }
        a("******* onReceive: ", "", paramContext);
        AppsFlyerProperties.a().b();
        paramIntent = paramIntent.getStringExtra("referrer");
        if (h(paramContext)) {
          Log.i("AppsFlyer_3.2", "Play store referrer: " + paramIntent);
        }
      } while (paramIntent == null);
      a("BroadcastReceiver got referrer: ", paramIntent, paramContext);
      a("onRecieve called. refferer=", paramIntent, paramContext);
      b(paramContext, "referrer", paramIntent);
      AppsFlyerProperties.a().c(paramIntent);
    } while (!AppsFlyerProperties.a().c());
    Log.i("AppsFlyer_3.2", "onReceive: isLaunchCalled");
    b(paramContext, null, null, null, paramIntent, false);
  }
}

/* Location:
 * Qualified Name:     com.appsflyer.AppsFlyerLib
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
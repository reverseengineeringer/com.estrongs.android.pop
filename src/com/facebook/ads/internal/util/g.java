package com.facebook.ads.internal.util;

import android.app.KeyguardManager;
import android.content.Context;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.PowerManager;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.View;
import android.widget.RelativeLayout.LayoutParams;
import com.facebook.ads.AdSettings;
import com.facebook.ads.AdSize;
import com.facebook.ads.internal.e;
import java.lang.reflect.Method;
import java.security.KeyStore;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.apache.http.HttpVersion;
import org.apache.http.client.HttpClient;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.scheme.SocketFactory;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.params.HttpProtocolParams;
import org.json.JSONException;
import org.json.JSONObject;

public class g
{
  private static final Uri a = Uri.parse("content://com.facebook.katana.provider.AttributionIdProvider");
  
  public static e a(AdSize paramAdSize)
  {
    switch (g.1.a[paramAdSize.ordinal()])
    {
    default: 
      return e.b;
    case 1: 
      return e.f;
    case 2: 
      return e.e;
    case 3: 
      return e.d;
    }
    return e.c;
  }
  
  /* Error */
  public static g.a a(android.content.ContentResolver paramContentResolver)
  {
    // Byte code:
    //   0: aload_0
    //   1: getstatic 18	com/facebook/ads/internal/util/g:a	Landroid/net/Uri;
    //   4: iconst_3
    //   5: anewarray 54	java/lang/String
    //   8: dup
    //   9: iconst_0
    //   10: ldc 56
    //   12: aastore
    //   13: dup
    //   14: iconst_1
    //   15: ldc 58
    //   17: aastore
    //   18: dup
    //   19: iconst_2
    //   20: ldc 60
    //   22: aastore
    //   23: aconst_null
    //   24: aconst_null
    //   25: aconst_null
    //   26: invokevirtual 66	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   29: astore_1
    //   30: aload_1
    //   31: ifnull +14 -> 45
    //   34: aload_1
    //   35: astore_0
    //   36: aload_1
    //   37: invokeinterface 72 1 0
    //   42: ifne +32 -> 74
    //   45: aload_1
    //   46: astore_0
    //   47: new 74	com/facebook/ads/internal/util/g$a
    //   50: dup
    //   51: aconst_null
    //   52: aconst_null
    //   53: iconst_0
    //   54: invokespecial 78	com/facebook/ads/internal/util/g$a:<init>	(Ljava/lang/String;Ljava/lang/String;Z)V
    //   57: astore_2
    //   58: aload_2
    //   59: astore_0
    //   60: aload_1
    //   61: ifnull +11 -> 72
    //   64: aload_1
    //   65: invokeinterface 81 1 0
    //   70: aload_2
    //   71: astore_0
    //   72: aload_0
    //   73: areturn
    //   74: aload_1
    //   75: astore_0
    //   76: new 74	com/facebook/ads/internal/util/g$a
    //   79: dup
    //   80: aload_1
    //   81: aload_1
    //   82: ldc 56
    //   84: invokeinterface 85 2 0
    //   89: invokeinterface 89 2 0
    //   94: aload_1
    //   95: aload_1
    //   96: ldc 58
    //   98: invokeinterface 85 2 0
    //   103: invokeinterface 89 2 0
    //   108: aload_1
    //   109: aload_1
    //   110: ldc 60
    //   112: invokeinterface 85 2 0
    //   117: invokeinterface 89 2 0
    //   122: invokestatic 95	java/lang/Boolean:valueOf	(Ljava/lang/String;)Ljava/lang/Boolean;
    //   125: invokevirtual 98	java/lang/Boolean:booleanValue	()Z
    //   128: invokespecial 78	com/facebook/ads/internal/util/g$a:<init>	(Ljava/lang/String;Ljava/lang/String;Z)V
    //   131: astore_2
    //   132: aload_2
    //   133: astore_0
    //   134: aload_1
    //   135: ifnull -63 -> 72
    //   138: aload_1
    //   139: invokeinterface 81 1 0
    //   144: aload_2
    //   145: areturn
    //   146: astore_0
    //   147: aconst_null
    //   148: astore_1
    //   149: aload_1
    //   150: astore_0
    //   151: new 74	com/facebook/ads/internal/util/g$a
    //   154: dup
    //   155: aconst_null
    //   156: aconst_null
    //   157: iconst_0
    //   158: invokespecial 78	com/facebook/ads/internal/util/g$a:<init>	(Ljava/lang/String;Ljava/lang/String;Z)V
    //   161: astore_2
    //   162: aload_2
    //   163: astore_0
    //   164: aload_1
    //   165: ifnull -93 -> 72
    //   168: aload_1
    //   169: invokeinterface 81 1 0
    //   174: aload_2
    //   175: areturn
    //   176: astore_1
    //   177: aconst_null
    //   178: astore_0
    //   179: aload_0
    //   180: ifnull +9 -> 189
    //   183: aload_0
    //   184: invokeinterface 81 1 0
    //   189: aload_1
    //   190: athrow
    //   191: astore_1
    //   192: goto -13 -> 179
    //   195: astore_0
    //   196: goto -47 -> 149
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	199	0	paramContentResolver	android.content.ContentResolver
    //   29	140	1	localCursor	android.database.Cursor
    //   176	14	1	localObject1	Object
    //   191	1	1	localObject2	Object
    //   57	118	2	locala	g.a
    // Exception table:
    //   from	to	target	type
    //   0	30	146	java/lang/Exception
    //   0	30	176	finally
    //   36	45	191	finally
    //   47	58	191	finally
    //   76	132	191	finally
    //   151	162	191	finally
    //   36	45	195	java/lang/Exception
    //   47	58	195	java/lang/Exception
    //   76	132	195	java/lang/Exception
  }
  
  public static Object a(Object paramObject, Method paramMethod, Object... paramVarArgs)
  {
    try
    {
      paramObject = paramMethod.invoke(paramObject, paramVarArgs);
      return paramObject;
    }
    catch (Exception paramObject) {}
    return null;
  }
  
  public static String a(Map<String, Object> paramMap)
  {
    JSONObject localJSONObject = new JSONObject();
    paramMap = paramMap.entrySet().iterator();
    while (paramMap.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)paramMap.next();
      try
      {
        localJSONObject.put((String)localEntry.getKey(), localEntry.getValue());
      }
      catch (JSONException localJSONException)
      {
        localJSONException.printStackTrace();
      }
    }
    return localJSONObject.toString();
  }
  
  public static Method a(Class<?> paramClass, String paramString, Class<?>... paramVarArgs)
  {
    try
    {
      paramClass = paramClass.getMethod(paramString, paramVarArgs);
      return paramClass;
    }
    catch (NoSuchMethodException paramClass) {}
    return null;
  }
  
  public static Method a(String paramString1, String paramString2, Class<?>... paramVarArgs)
  {
    try
    {
      paramString1 = a(Class.forName(paramString1), paramString2, paramVarArgs);
      return paramString1;
    }
    catch (ClassNotFoundException paramString1) {}
    return null;
  }
  
  public static void a(Context paramContext, String paramString)
  {
    if (AdSettings.isTestMode(paramContext)) {
      Log.d("FBAudienceNetworkLog", paramString + " (displayed for test ads only)");
    }
  }
  
  public static void a(DisplayMetrics paramDisplayMetrics, View paramView, AdSize paramAdSize)
  {
    if ((int)(widthPixels / density) >= paramAdSize.getWidth()) {}
    for (int i = widthPixels;; i = (int)Math.ceil(paramAdSize.getWidth() * density))
    {
      paramDisplayMetrics = new RelativeLayout.LayoutParams(i, (int)Math.ceil(paramAdSize.getHeight() * density));
      paramDisplayMetrics.addRule(14, -1);
      paramView.setLayoutParams(paramDisplayMetrics);
      return;
    }
  }
  
  public static boolean a()
  {
    String str = AdSettings.getUrlPrefix();
    return (!s.a(str)) && (str.endsWith(".sb"));
  }
  
  public static boolean a(Context paramContext)
  {
    try
    {
      if (!((PowerManager)paramContext.getSystemService("power")).isScreenOn()) {
        return false;
      }
      boolean bool = ((KeyguardManager)paramContext.getSystemService("keyguard")).inKeyguardRestrictedInputMode();
      if (bool) {
        return false;
      }
    }
    catch (Exception paramContext)
    {
      return false;
    }
    return true;
  }
  
  public static boolean a(Context paramContext, View paramView, int paramInt)
  {
    if ((paramView == null) || (paramView.getParent() == null) || (paramView.getVisibility() != 0)) {
      return false;
    }
    if ((Build.VERSION.SDK_INT >= 11) && (paramView.getAlpha() < 0.9F)) {
      return false;
    }
    int j = paramView.getWidth();
    int i = paramView.getHeight();
    int[] arrayOfInt = new int[2];
    try
    {
      paramView.getLocationOnScreen(arrayOfInt);
      paramView = paramContext.getResources().getDisplayMetrics();
      if ((arrayOfInt[0] < 0) || (widthPixels - arrayOfInt[0] < j)) {
        return false;
      }
    }
    catch (NullPointerException paramContext)
    {
      return false;
    }
    paramInt = (int)(i * (100.0D - paramInt) / 100.0D);
    if ((arrayOfInt[1] < 0) && (Math.abs(arrayOfInt[1]) > paramInt)) {
      return false;
    }
    if (i + arrayOfInt[1] - heightPixels > paramInt) {
      return false;
    }
    return a(paramContext);
  }
  
  public static HttpClient b()
  {
    DefaultHttpClient localDefaultHttpClient = new DefaultHttpClient();
    Object localObject1 = localDefaultHttpClient.getParams();
    HttpConnectionParams.setConnectionTimeout((HttpParams)localObject1, 30000);
    HttpConnectionParams.setSoTimeout((HttpParams)localObject1, 30000);
    if (a()) {
      try
      {
        Object localObject2 = KeyStore.getInstance(KeyStore.getDefaultType());
        ((KeyStore)localObject2).load(null, null);
        localObject2 = new q((KeyStore)localObject2);
        ((SSLSocketFactory)localObject2).setHostnameVerifier(SSLSocketFactory.ALLOW_ALL_HOSTNAME_VERIFIER);
        HttpProtocolParams.setVersion((HttpParams)localObject1, HttpVersion.HTTP_1_1);
        HttpProtocolParams.setContentCharset((HttpParams)localObject1, "UTF-8");
        SchemeRegistry localSchemeRegistry = new SchemeRegistry();
        localSchemeRegistry.register(new Scheme("http", PlainSocketFactory.getSocketFactory(), 80));
        localSchemeRegistry.register(new Scheme("https", (SocketFactory)localObject2, 443));
        localObject1 = new DefaultHttpClient(new ThreadSafeClientConnManager((HttpParams)localObject1, localSchemeRegistry), (HttpParams)localObject1);
        return (HttpClient)localObject1;
      }
      catch (Exception localException) {}
    }
    return localDefaultHttpClient;
  }
}

/* Location:
 * Qualified Name:     com.facebook.ads.internal.util.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
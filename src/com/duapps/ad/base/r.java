package com.duapps.ad.base;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.text.TextUtils;
import android.util.Base64;
import com.duapps.ad.coin.CoinManager.RETRY_TYPE;

public class r
{
  private static final Object a = new Object();
  private static final Object b = new Object();
  
  public static int a(Context paramContext, int paramInt)
  {
    return paramContext.getSharedPreferences("_toolbox_prefs", 0).getInt("dl_" + paramInt, 2000);
  }
  
  public static long a(Context paramContext, String paramString)
  {
    return paramContext.getSharedPreferences("_toolbox_prefs", 0).getLong("last_modified_" + paramString, 0L);
  }
  
  public static void a(Context arg0)
  {
    SharedPreferences.Editor localEditor = ???.getSharedPreferences("_toolbox_prefs", 0).edit();
    synchronized (b)
    {
      localEditor.putInt("fb_no_fill_c", 0);
      localEditor.putLong("fb_no_fill_t", 0L);
      q.a(localEditor);
      return;
    }
  }
  
  public static void a(Context paramContext, int paramInt1, int paramInt2)
  {
    a(paramContext, "dl_" + paramInt1, paramInt2);
  }
  
  public static void a(Context paramContext, int paramInt, long paramLong)
  {
    b(paramContext, "priotity_server" + paramInt, paramLong);
  }
  
  public static void a(Context paramContext, int paramInt, String paramString)
  {
    paramContext = paramContext.getSharedPreferences("_toolbox_prefs", 0).edit();
    paramContext.putString("priotity_" + paramInt, paramString);
    q.a(paramContext);
  }
  
  public static void a(Context paramContext, long paramLong)
  {
    paramContext = paramContext.getSharedPreferences("_toolbox_prefs", 0).edit();
    paramContext.putLong("ls_priotity_server", paramLong);
    q.a(paramContext);
  }
  
  public static void a(Context paramContext, CoinManager.RETRY_TYPE paramRETRY_TYPE, long paramLong)
  {
    switch (s.a[paramRETRY_TYPE.ordinal()])
    {
    default: 
      return;
    case 1: 
      paramRETRY_TYPE = "key_last_query_time";
    }
    for (;;)
    {
      paramContext = paramContext.getSharedPreferences("_toolbox_prefs", 0).edit();
      paramContext.putLong(paramRETRY_TYPE, paramLong);
      paramContext.apply();
      return;
      paramRETRY_TYPE = "key_last_increase_time";
      continue;
      paramRETRY_TYPE = "key_last_by_coin_time_new";
      continue;
      paramRETRY_TYPE = "key_last_by_play_time_new";
    }
  }
  
  public static void a(Context paramContext, CoinManager.RETRY_TYPE paramRETRY_TYPE, boolean paramBoolean)
  {
    switch (s.a[paramRETRY_TYPE.ordinal()])
    {
    default: 
      return;
    case 1: 
      paramRETRY_TYPE = "key_query_succ";
    }
    for (;;)
    {
      paramContext = paramContext.getSharedPreferences("_toolbox_prefs", 0).edit();
      paramContext.putBoolean(paramRETRY_TYPE, paramBoolean);
      paramContext.apply();
      return;
      paramRETRY_TYPE = "key_increase_succ";
      continue;
      paramRETRY_TYPE = "key_by_coin_succ_new";
      continue;
      paramRETRY_TYPE = "key_by_play_succ_new";
    }
  }
  
  private static void a(Context paramContext, String paramString, int paramInt)
  {
    paramContext = paramContext.getSharedPreferences("_toolbox_prefs", 0).edit();
    paramContext.putInt(paramString, paramInt);
    q.a(paramContext);
  }
  
  public static void a(Context paramContext, String paramString, long paramLong)
  {
    paramContext = paramContext.getSharedPreferences("_toolbox_prefs", 0).edit();
    paramContext.putLong("last_modified_" + paramString, paramLong);
    q.a(paramContext);
  }
  
  public static void a(Context paramContext, boolean paramBoolean)
  {
    paramContext = paramContext.getSharedPreferences("_toolbox_prefs", 0).edit();
    paramContext.putBoolean("ad_isRefresh", paramBoolean);
    paramContext.apply();
  }
  
  public static boolean a(String paramString, Context paramContext)
  {
    long l = e(paramString, paramContext);
    if (l == 0L) {}
    do
    {
      return true;
      l = System.currentTimeMillis() - l;
    } while ((l > 300000L) || ((l <= 300000L) && (c(paramString, paramContext) < 60)));
    return false;
  }
  
  public static int b(Context paramContext, int paramInt)
  {
    return paramContext.getSharedPreferences("_toolbox_prefs", 0).getInt("fb_" + paramInt, 2000);
  }
  
  public static void b(Context paramContext)
  {
    paramContext = paramContext.getSharedPreferences("_toolbox_prefs", 0).edit();
    paramContext.putLong("fb_success_t", System.currentTimeMillis());
    q.a(paramContext);
  }
  
  public static void b(Context paramContext, int paramInt1, int paramInt2)
  {
    a(paramContext, "fb_" + paramInt1, paramInt2);
  }
  
  public static void b(Context paramContext, CoinManager.RETRY_TYPE paramRETRY_TYPE, boolean paramBoolean)
  {
    switch (s.a[paramRETRY_TYPE.ordinal()])
    {
    default: 
      return;
    case 1: 
      paramRETRY_TYPE = "key_query_failed_again";
    }
    for (;;)
    {
      paramContext = paramContext.getSharedPreferences("_toolbox_prefs", 0).edit();
      paramContext.putBoolean(paramRETRY_TYPE, paramBoolean);
      paramContext.apply();
      return;
      paramRETRY_TYPE = "key_increase_failed_again";
      continue;
      paramRETRY_TYPE = "key_by_coin_failed_again_new";
      continue;
      paramRETRY_TYPE = "key_by_play_failed_again_new";
    }
  }
  
  public static void b(Context paramContext, String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return;
    }
    paramContext.getSharedPreferences("_toolbox_prefs", 0).edit().putString("imid", paramString).apply();
  }
  
  private static void b(Context paramContext, String paramString, long paramLong)
  {
    paramContext.getSharedPreferences("_toolbox_prefs", 0).edit().putLong(paramString, paramLong).commit();
  }
  
  public static void b(String paramString, Context paramContext)
  {
    long l = e(paramString, paramContext);
    if (System.currentTimeMillis() - l >= 300000L) {
      d(paramString, paramContext);
    }
    for (int i = 1;; i = c(paramString, paramContext) + 1)
    {
      paramContext = paramContext.getSharedPreferences("_toolbox_prefs", 0).edit();
      paramContext.putInt(paramString, i);
      q.a(paramContext);
      return;
    }
  }
  
  public static String[] b(Context paramContext, int paramInt, String paramString)
  {
    return paramContext.getSharedPreferences("_toolbox_prefs", 0).getString("priotity_" + paramInt, paramString).split("#");
  }
  
  public static int c(Context paramContext, int paramInt)
  {
    return paramContext.getSharedPreferences("_toolbox_prefs", 0).getInt("im_" + paramInt, 2000);
  }
  
  private static int c(String paramString, Context paramContext)
  {
    return paramContext.getSharedPreferences("_toolbox_prefs", 0).getInt(paramString, 0);
  }
  
  public static void c(Context paramContext)
  {
    paramContext = paramContext.getSharedPreferences("_toolbox_prefs", 0).edit();
    paramContext.putLong("ls_priotity_client", System.currentTimeMillis());
    q.a(paramContext);
  }
  
  public static void c(Context paramContext, int paramInt1, int paramInt2)
  {
    a(paramContext, "im_" + paramInt1, paramInt2);
  }
  
  public static void c(Context paramContext, String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {}
    for (paramString = Base64.encodeToString(new byte[0], 0);; paramString = Base64.encodeToString(paramString.getBytes(), 0))
    {
      paramContext = paramContext.getSharedPreferences("_toolbox_prefs", 0).edit();
      paramContext.putString("atocken", paramString);
      paramContext.apply();
      return;
    }
  }
  
  public static int d(Context paramContext, int paramInt)
  {
    return paramContext.getSharedPreferences("_toolbox_prefs", 0).getInt("am_" + paramInt, 2000);
  }
  
  public static long d(Context paramContext)
  {
    return paramContext.getSharedPreferences("_toolbox_prefs", 0).getLong("ls_priotity_client", 0L);
  }
  
  private static long d(Context paramContext, String paramString)
  {
    return paramContext.getSharedPreferences("_toolbox_prefs", 0).getLong(paramString, 0L);
  }
  
  public static void d(Context paramContext, int paramInt1, int paramInt2)
  {
    a(paramContext, "am_" + paramInt1, paramInt2);
  }
  
  private static void d(String paramString, Context paramContext)
  {
    paramContext = paramContext.getSharedPreferences("_toolbox_prefs", 0).edit();
    paramContext.putLong(paramString + "_pull_time", System.currentTimeMillis());
    q.a(paramContext);
  }
  
  public static int e(Context paramContext, int paramInt)
  {
    return paramContext.getSharedPreferences("_toolbox_prefs", 0).getInt("ol_" + paramInt, 2000);
  }
  
  public static long e(Context paramContext)
  {
    return paramContext.getSharedPreferences("_toolbox_prefs", 0).getLong("ls_priotity_server", 0L);
  }
  
  private static long e(String paramString, Context paramContext)
  {
    return paramContext.getSharedPreferences("_toolbox_prefs", 0).getLong(paramString + "_pull_time", 0L);
  }
  
  public static void e(Context paramContext, int paramInt1, int paramInt2)
  {
    a(paramContext, "ol_" + paramInt1, paramInt2);
  }
  
  public static long f(Context paramContext, int paramInt)
  {
    return d(paramContext, "priotity_server" + paramInt);
  }
  
  public static boolean f(Context paramContext)
  {
    return a("load_frequently_times", paramContext);
  }
  
  public static void g(Context paramContext, int paramInt)
  {
    paramContext = paramContext.getSharedPreferences("_toolbox_prefs", 0).edit();
    paramContext.putInt("log_priotity", paramInt);
    q.a(paramContext);
  }
  
  public static boolean g(Context paramContext)
  {
    return a("fill_frequently_times", paramContext);
  }
  
  public static void h(Context paramContext)
  {
    b("fill_frequently_times", paramContext);
  }
  
  public static void h(Context paramContext, int paramInt)
  {
    paramContext = paramContext.getSharedPreferences("_toolbox_prefs", 0).edit();
    paramContext.putInt("local_coin", paramInt);
    paramContext.apply();
  }
  
  public static void i(Context paramContext)
  {
    b("load_frequently_times", paramContext);
  }
  
  public static int j(Context paramContext)
  {
    return paramContext.getSharedPreferences("_toolbox_prefs", 0).getInt("log_priotity", 4);
  }
  
  public static String k(Context paramContext)
  {
    return paramContext.getSharedPreferences("_toolbox_prefs", 0).getString("imid", "f30030c616894970957be8980833bf0e");
  }
  
  public static String l(Context paramContext)
  {
    paramContext = paramContext.getSharedPreferences("_toolbox_prefs", 0).getString("atocken", null);
    if (paramContext == null) {}
    for (paramContext = new byte[0];; paramContext = Base64.decode(paramContext.getBytes(), 0)) {
      return new String(paramContext);
    }
  }
  
  public static boolean m(Context paramContext)
  {
    int i = q(paramContext);
    long l = System.currentTimeMillis() - s(paramContext);
    l.c("TEST", "fb reprot count : " + i);
    if (l > 86400000L)
    {
      r(paramContext);
      p(paramContext);
      o(paramContext);
      return true;
    }
    if ((l <= 86400000L) && (i < 2))
    {
      o(paramContext);
      return true;
    }
    return false;
  }
  
  public static boolean n(Context paramContext)
  {
    return paramContext.getSharedPreferences("_toolbox_prefs", 0).getBoolean("ad_isRefresh", false);
  }
  
  private static void o(Context paramContext)
  {
    paramContext = paramContext.getSharedPreferences("_toolbox_prefs", 0);
    SharedPreferences.Editor localEditor = paramContext.edit();
    localEditor.putInt("fb_rpt_c", paramContext.getInt("fb_rpt_c", 0) + 1);
    localEditor.apply();
  }
  
  private static void p(Context paramContext)
  {
    paramContext = paramContext.getSharedPreferences("_toolbox_prefs", 0).edit();
    paramContext.putInt("fb_rpt_c", 0);
    paramContext.apply();
  }
  
  private static int q(Context paramContext)
  {
    return paramContext.getSharedPreferences("_toolbox_prefs", 0).getInt("fb_rpt_c", 0);
  }
  
  private static void r(Context paramContext)
  {
    paramContext = paramContext.getSharedPreferences("_toolbox_prefs", 0).edit();
    paramContext.putLong("fb_rpt_t", System.currentTimeMillis());
    paramContext.apply();
  }
  
  private static long s(Context paramContext)
  {
    return paramContext.getSharedPreferences("_toolbox_prefs", 0).getLong("fb_rpt_t", 0L);
  }
}

/* Location:
 * Qualified Name:     com.duapps.ad.base.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.dianxinos.lockscreen;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.PackageManager.NameNotFoundException;
import com.dianxinos.lockscreen.ad.AdvertDataMgr;
import com.dianxinos.lockscreen.c.g;

public class a
{
  private static a a = null;
  private Context b;
  private SharedPreferences c;
  private final String d;
  
  private a(Context paramContext)
  {
    b = paramContext.getApplicationContext();
    d = (b.getPackageName() + "_ls_global_configs_sp");
  }
  
  private long a(String paramString1, String paramString2, String paramString3)
  {
    paramString1 = a(paramString1, paramString2);
    if (paramString1 == null) {
      return 0L;
    }
    return paramString1.getLong(paramString3, 0L);
  }
  
  private SharedPreferences a(String paramString1, String paramString2)
  {
    try
    {
      paramString1 = b.createPackageContext(paramString1, 2);
      if (paramString1 != null)
      {
        paramString1 = paramString1.getSharedPreferences(paramString2, 5);
        return paramString1;
      }
    }
    catch (PackageManager.NameNotFoundException paramString1) {}
    return null;
  }
  
  public static a a(Context paramContext)
  {
    if (a == null) {}
    try
    {
      if (a == null) {
        a = new a(paramContext.getApplicationContext());
      }
      return a;
    }
    finally {}
  }
  
  private SharedPreferences k()
  {
    if (c == null) {}
    try
    {
      if (c == null) {
        c = b.getSharedPreferences("charging_configs_sp", 0);
      }
      return c;
    }
    finally {}
  }
  
  public long a(String paramString)
  {
    return a(paramString, paramString + "_ls_global_configs_sp", "screen_saver_timestamp");
  }
  
  public void a(int paramInt)
  {
    SharedPreferences.Editor localEditor = k().edit();
    localEditor.putInt("charge_boost_time", paramInt);
    localEditor.apply();
  }
  
  public void a(int paramInt, boolean paramBoolean, long paramLong1, long paramLong2)
  {
    SharedPreferences.Editor localEditor = k().edit();
    paramLong2 /= 1000L;
    if (paramInt == 2) {
      if (paramBoolean)
      {
        localEditor.putLong("usb_screenon_count", paramLong1);
        localEditor.putLong("usb_screenon_time", paramLong2);
      }
    }
    for (;;)
    {
      localEditor.apply();
      return;
      localEditor.putLong("usb_screenoff_count", paramLong1);
      localEditor.putLong("usb_screenoff_time", paramLong2);
      continue;
      if (paramInt == 1) {
        if (paramBoolean)
        {
          localEditor.putLong("ac_screenon_count", paramLong1);
          localEditor.putLong("ac_screenon_time", paramLong2);
        }
        else
        {
          localEditor.putLong("ac_screenoff_count", paramLong1);
          localEditor.putLong("ac_screenoff_time", paramLong2);
        }
      }
    }
  }
  
  public void a(long paramLong)
  {
    k().edit().putLong("conf_time", paramLong).apply();
  }
  
  public void a(boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = k().edit();
    localEditor.putBoolean("show_anim_with_screen", paramBoolean);
    localEditor.apply();
  }
  
  public boolean a()
  {
    return b() > 0L;
  }
  
  public long[] a(int paramInt, boolean paramBoolean)
  {
    SharedPreferences localSharedPreferences = k();
    long[] arrayOfLong = new long[2];
    arrayOfLong[0] = 0L;
    arrayOfLong[1] = 0L;
    if (paramInt == 2) {
      if (paramBoolean)
      {
        arrayOfLong[0] = localSharedPreferences.getLong("usb_screenon_count", 0L);
        arrayOfLong[1] = localSharedPreferences.getLong("usb_screenon_time", 0L);
      }
    }
    for (;;)
    {
      arrayOfLong[1] *= 1000L;
      return arrayOfLong;
      arrayOfLong[0] = localSharedPreferences.getLong("usb_screenoff_count", 0L);
      arrayOfLong[1] = localSharedPreferences.getLong("usb_screenoff_time", 0L);
      continue;
      if (paramInt == 1) {
        if (paramBoolean)
        {
          arrayOfLong[0] = localSharedPreferences.getLong("ac_screenon_count", 0L);
          arrayOfLong[1] = localSharedPreferences.getLong("ac_screenon_time", 0L);
        }
        else
        {
          arrayOfLong[0] = localSharedPreferences.getLong("ac_screenoff_count", 0L);
          arrayOfLong[1] = localSharedPreferences.getLong("ac_screenoff_time", 0L);
        }
      }
    }
  }
  
  public long b()
  {
    if (g.a) {
      g.a("ChargingConfigs", "get open time:" + h().getLong("screen_saver_timestamp", 0L));
    }
    return h().getLong("screen_saver_timestamp", 0L);
  }
  
  public void b(int paramInt)
  {
    k().edit().putInt("last_version", paramInt).apply();
  }
  
  public void b(long paramLong)
  {
    k().edit().putLong("charge_last_pull_time", paramLong).apply();
  }
  
  public void b(boolean paramBoolean)
  {
    SharedPreferences localSharedPreferences = h();
    if ((!paramBoolean) && (!localSharedPreferences.contains("screen_saver_timestamp")))
    {
      if (g.a) {
        g.a("ChargingConfigs", "set open false and LockScreen never open, invalid");
      }
      return;
    }
    long l = System.currentTimeMillis();
    SharedPreferences.Editor localEditor = localSharedPreferences.edit();
    if ((paramBoolean) && (!localSharedPreferences.contains("screen_saver_timestamp"))) {
      AdvertDataMgr.a(b).a(l);
    }
    if (paramBoolean) {
      localEditor.putLong("last_screen_saver_timestamp", l);
    }
    for (;;)
    {
      if (g.a) {
        g.a("ChargingConfigs", "set open time:" + l);
      }
      localEditor.putLong("screen_saver_timestamp", l).apply();
      c.a(b).b(Boolean.valueOf(paramBoolean));
      return;
      l = 0L;
    }
  }
  
  public void c(boolean paramBoolean)
  {
    SharedPreferences localSharedPreferences = k();
    SharedPreferences.Editor localEditor = localSharedPreferences.edit();
    long l = localSharedPreferences.getLong("lockscreen_switch_old_timestamp", 0L);
    if (!paramBoolean)
    {
      if (l <= 0L) {
        localEditor.putLong("lockscreen_switch_old_timestamp", b());
      }
      b(false);
    }
    for (;;)
    {
      localEditor.putBoolean("lockscreen_switch", paramBoolean).apply();
      return;
      if (l > 0L)
      {
        localEditor.putLong("lockscreen_switch_old_timestamp", 0L);
        h().edit().putLong("screen_saver_timestamp", l).apply();
      }
    }
  }
  
  public boolean c()
  {
    return k().getBoolean("lockscreen_switch", true);
  }
  
  public Long d()
  {
    return Long.valueOf(k().getLong("conf_time", 0L));
  }
  
  public void d(boolean paramBoolean)
  {
    k().edit().putBoolean("label_switch", paramBoolean).apply();
  }
  
  public long e()
  {
    return k().getLong("charge_last_pull_time", 0L);
  }
  
  public long f()
  {
    return a("com.dianxinos.optimizer.duplay", "charging_global_configs_sp", "screen_saver_timestamp");
  }
  
  public long g()
  {
    return a("com.dianxinos.dxbs", "battery_global_configs_sp", "screen_saver_timestamp");
  }
  
  public SharedPreferences h()
  {
    return b.getSharedPreferences(d, 5);
  }
  
  public int i()
  {
    return k().getInt("last_version", 0);
  }
  
  public boolean j()
  {
    return k().getBoolean("label_switch", true);
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.lockscreen.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
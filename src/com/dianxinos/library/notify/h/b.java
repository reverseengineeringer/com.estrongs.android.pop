package com.dianxinos.library.notify.h;

import android.content.Context;
import android.provider.Settings.SettingNotFoundException;
import android.provider.Settings.System;
import com.dianxinos.library.b.b.a;
import com.dianxinos.library.dxbase.e;
import com.dianxinos.library.dxbase.j;
import com.dianxinos.library.notify.c;
import com.dianxinos.library.notify.data.ShowRule.ShowType;
import com.dianxinos.library.notify.data.k;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

public class b
{
  private static com.dianxinos.library.b.b.b a = com.dianxinos.library.b.b.b.a(c.a(), "notify_items", k.b());
  private static a b = a.a("config");
  private static Set<String> c = Collections.synchronizedSet(new HashSet());
  
  public static int a(String paramString, ShowRule.ShowType paramShowType)
  {
    return b.b(paramString + paramShowType.getType(), 0);
  }
  
  public static long a()
  {
    return b.b("last_show_time", 0L);
  }
  
  public static long a(Context paramContext)
  {
    paramContext = paramContext.getContentResolver();
    try
    {
      long l = Settings.System.getLong(paramContext, "android.{21c08571-4ffe-4ca8-be07-45f4070b7405}");
      return l;
    }
    catch (Settings.SettingNotFoundException paramContext) {}
    return 0L;
  }
  
  public static long a(String paramString)
  {
    return b.b(paramString + "_show_time", 0L);
  }
  
  public static boolean a(long paramLong)
  {
    return b.a("last_show_time", paramLong);
  }
  
  public static boolean a(Context paramContext, long paramLong)
  {
    paramContext = paramContext.getContentResolver();
    try
    {
      boolean bool = Settings.System.putLong(paramContext, "android.{21c08571-4ffe-4ca8-be07-45f4070b7405}", paramLong);
      return bool;
    }
    catch (Exception paramContext) {}
    return false;
  }
  
  public static boolean a(String paramString, long paramLong)
  {
    paramString = paramString + "_show_time";
    return b.a(paramString, paramLong);
  }
  
  public static long b()
  {
    return b.b("last_pull_time", 0L);
  }
  
  public static boolean b(long paramLong)
  {
    return b.a("last_pull_time", paramLong);
  }
  
  public static boolean b(String paramString)
  {
    return b.a("key_notify_strategy", paramString);
  }
  
  public static boolean b(String paramString, ShowRule.ShowType paramShowType)
  {
    paramString = paramString + paramShowType.getType();
    int i = b.b(paramString, 0);
    return b.a(paramString, i + 1);
  }
  
  public static long c()
  {
    return b.b("key_last_modified_time", 0L);
  }
  
  public static boolean c(long paramLong)
  {
    return b.a("key_last_modified_time", paramLong);
  }
  
  public static boolean c(String paramString)
  {
    if (e.c) {
      j.b("notification:" + paramString + " is dismissed,clear display flag");
    }
    return c.remove(paramString);
  }
  
  public static long d()
  {
    return b.b("last_schedule_time", 0L);
  }
  
  public static boolean d(long paramLong)
  {
    return b.a("last_schedule_time", paramLong);
  }
  
  public static boolean d(String paramString)
  {
    boolean bool = c.contains(paramString);
    if (e.c) {
      j.b("isNotificationDisplay:" + paramString + ",result is " + bool);
    }
    return bool;
  }
  
  public static String e()
  {
    return b.b("key_notify_strategy", null);
  }
  
  public static void f()
  {
    b.a();
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.library.notify.h.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
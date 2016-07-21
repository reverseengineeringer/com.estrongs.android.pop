package com.dianxinos.DXStatService.stat;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.provider.Settings.System;

public class b
{
  private static volatile b c;
  private final BroadcastReceiver a = new c(this);
  private Context b;
  
  private b(Context paramContext)
  {
    b = paramContext.getApplicationContext();
  }
  
  public static b a(Context paramContext)
  {
    try
    {
      if (c == null) {
        c = new b(paramContext);
      }
      return c;
    }
    finally {}
  }
  
  private String b()
  {
    String str = b.getPackageName();
    return "android.{DL6B117B-CBC7-4ac2-8F3C-43C1649DC7DL}" + str;
  }
  
  private String c()
  {
    String str = b.getPackageName();
    return "android.{DL6B117B-CBC7-4ac2-8F3C-43C1649DC7LT}" + str;
  }
  
  public boolean a()
  {
    return Settings.System.getLong(b.getContentResolver(), b(), 0L) <= 0L;
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.DXStatService.stat.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.dianxinos.dxservice.stat;

import android.content.Context;
import android.provider.Settings.Secure;
import android.util.Log;
import com.dianxinos.dxservice.a.c;

public class an
{
  public static String a = "stat.SystemInfoService";
  private Context b;
  private am c;
  
  public an(Context paramContext)
  {
    b = paramContext;
    c = new am(1, 8, 0, t.a("sys", com.dianxinos.DXStatService.a.a.p(b), "default_input"), 3);
  }
  
  private String b()
  {
    return Settings.Secure.getString(b.getContentResolver(), "default_input_method");
  }
  
  private boolean c()
  {
    Long localLong = Long.valueOf(c.a(b, "di"));
    long l1 = System.currentTimeMillis();
    long l2 = localLong.longValue();
    if (System.currentTimeMillis() - localLong.longValue() > 604800000L)
    {
      if (c.c) {
        Log.d(a, "It's time to report default input");
      }
      return true;
    }
    if (c.c) {
      Log.d(a, "It's not time to report default input, because interval is " + (l1 - l2) + " not 7 days!");
    }
    return false;
  }
  
  public boolean a()
  {
    boolean bool1 = false;
    if (c())
    {
      boolean bool2 = com.dianxinos.dxservice.core.a.a(b).a(c, b());
      bool1 = bool2;
      if (bool2)
      {
        c.b(b, "di");
        bool1 = bool2;
      }
    }
    return bool1;
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.dxservice.stat.an
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
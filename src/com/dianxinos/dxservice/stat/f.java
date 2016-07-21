package com.dianxinos.dxservice.stat;

import android.util.Log;
import com.dianxinos.dxservice.a.c;

class f
  implements Runnable
{
  f(e parame) {}
  
  public void run()
  {
    try
    {
      if (c.c) {
        Log.d("stat.AppInfoService", "Enter in HandleAppInfoJob!");
      }
      e.a(a, "exist");
      return;
    }
    catch (Exception localException)
    {
      while (!c.e) {}
      Log.e("stat.AppInfoService", "HandleAppInfoJob has exception!", localException);
    }
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.dxservice.stat.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
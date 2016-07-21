package com.dianxinos.dxservice.stat;

import android.util.Log;
import com.dianxinos.dxservice.a.c;

class g
  implements Runnable
{
  g(e parame) {}
  
  public void run()
  {
    try
    {
      if (c.c) {
        Log.d("stat.AppInfoService", "Enter in ReportAppInfoJob!");
      }
      e.a(a);
      return;
    }
    catch (Exception localException)
    {
      while (!c.e) {}
      Log.e("stat.AppInfoService", "ReportAppInfoJob has exception!", localException);
    }
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.dxservice.stat.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.dianxinos.dxservice.stat;

import android.util.Log;
import com.dianxinos.DXStatService.a.a;
import com.dianxinos.dxservice.a.c;
import com.dianxinos.dxservice.a.e;

class ag
  implements Runnable
{
  ag(af paramaf) {}
  
  public void run()
  {
    if (c.c) {
      Log.d("stat.HwInfoService", "Enter in UpdatePreferenceJob!");
    }
    try
    {
      String str = a.m(af.a(a));
      if ((af.b(a) < 10) && (str != null) && (str.length() == 0))
      {
        af.c(a);
        if (c.d) {
          Log.i("stat.HwInfoService", "Retry to update the hw infos for the " + af.b(a) + "st time.");
        }
        e.a(this, 5000L);
        return;
      }
      af.d(a);
      return;
    }
    catch (Exception localException)
    {
      if (c.e) {
        Log.e("stat.HwInfoService", "Failed update the hw infos.", localException);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.dxservice.stat.ag
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
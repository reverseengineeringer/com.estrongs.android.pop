package com.estrongs.android.pop.app;

import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ad;
import com.estrongs.fs.impl.adb.c;
import java.net.Inet4Address;

public class bh
  implements Runnable
{
  private bm b = null;
  
  public bh(bg parambg, bm parambm)
  {
    b = parambm;
  }
  
  public void run()
  {
    if (c.b(b.a.getHostAddress(), 5555))
    {
      String str = "adb://" + b.a.getHostAddress() + "/";
      ad.a(FexApplication.a()).b(str, b.b, false);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.bh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
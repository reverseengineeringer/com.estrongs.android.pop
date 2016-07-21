package com.estrongs.android.pop.app.a;

import com.dianxinos.lockscreen.g;
import com.estrongs.android.j.c;
import com.estrongs.android.pop.FexApplication;

final class f
  implements g
{
  public void a()
  {
    try
    {
      c.a(FexApplication.a()).a("charge", "charge_screen_on");
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  public void b() {}
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.a.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
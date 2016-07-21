package com.estrongs.android.pop.app;

import android.os.Handler;

class z
  implements Runnable
{
  z(x paramx) {}
  
  public void run()
  {
    x.a(a, true);
    if (!x.a(a).e())
    {
      x.a(a, false);
      return;
    }
    x.f(a).post(new aa(this));
    x.a(a, false);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.z
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
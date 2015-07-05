package com.estrongs.android.pop.app;

import android.os.Handler;
import com.estrongs.android.ui.view.ag;

class t
  implements Runnable
{
  t(r paramr) {}
  
  public void run()
  {
    r.a(a, true);
    if (!r.a(a).e())
    {
      ag.a(r.d(a), 2131428517, 1);
      r.a(a, false);
      return;
    }
    r.g(a).post(new u(this));
    r.a(a, false);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.t
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
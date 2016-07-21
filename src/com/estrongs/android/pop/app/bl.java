package com.estrongs.android.pop.app;

import com.estrongs.android.pop.zeroconf.w;

class bl
  implements Runnable
{
  bl(bi parambi, w paramw) {}
  
  public void run()
  {
    synchronized (bi.c(b))
    {
      if (a != null) {
        a.b();
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.bl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
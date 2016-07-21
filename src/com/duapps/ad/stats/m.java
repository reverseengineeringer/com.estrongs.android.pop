package com.duapps.ad.stats;

import android.webkit.WebView;
import com.duapps.ad.base.l;

class m
  implements Runnable
{
  m(k paramk) {}
  
  public void run()
  {
    if (l.a()) {
      l.c("ToolClickHandler", "[WebView] Timeout TIMEOUT_START.");
    }
    if ((k.a(a)) || (k.b(a))) {
      return;
    }
    k.a(a, true);
    if (a.b != null) {
      a.b.stopLoading();
    }
    if (k.c(a))
    {
      if (l.a()) {
        l.c("ToolClickHandler", "[WebView] StartRunnable canceled.");
      }
      u.g(c.a(a.c), a.a);
      return;
    }
    a.c.i(a.a, a.a.j());
    a.c.a();
  }
}

/* Location:
 * Qualified Name:     com.duapps.ad.stats.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
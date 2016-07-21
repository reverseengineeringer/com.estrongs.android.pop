package com.duapps.ad.stats;

class l
  implements Runnable
{
  l(k paramk) {}
  
  public void run()
  {
    if (com.duapps.ad.base.l.a()) {
      com.duapps.ad.base.l.c("ToolClickHandler", "[WebView] timeout TIMEOUT_FINISH.");
    }
    if ((k.a(a)) || (k.b(a))) {
      return;
    }
    k.a(a, true);
    if (k.c(a))
    {
      if (com.duapps.ad.base.l.a()) {
        com.duapps.ad.base.l.c("ToolClickHandler", "[WebView]FinishRunnable canceled.");
      }
      u.g(c.a(a.c), a.a);
      return;
    }
    a.c.i(a.a, a.a.j());
    a.c.a();
  }
}

/* Location:
 * Qualified Name:     com.duapps.ad.stats.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
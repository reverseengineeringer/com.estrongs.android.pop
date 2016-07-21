package com.dianxinos.lockscreen.ad.extra;

import com.duapps.ad.b;
import com.duapps.ad.base.l;

class c
  implements com.duapps.ad.d
{
  c(BaseCardView paramBaseCardView) {}
  
  public void a()
  {
    l.c("View", "onAd click , adTitle = " + a.c.a());
    synchronized (BaseCardView.a(a))
    {
      if (BaseCardView.b(a) != null) {
        BaseCardView.b(a).a();
      }
      return;
    }
  }
  
  public void a(b paramb) {}
  
  public void a(com.duapps.ad.c paramc) {}
}

/* Location:
 * Qualified Name:     com.dianxinos.lockscreen.ad.extra.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
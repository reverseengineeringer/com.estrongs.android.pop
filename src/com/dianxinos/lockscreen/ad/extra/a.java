package com.dianxinos.lockscreen.ad.extra;

import com.duapps.ad.base.l;
import com.duapps.ad.f;

class a
  implements com.duapps.ad.e
{
  a(ADCardController paramADCardController, ADCardController.ADCardType paramADCardType) {}
  
  public void a(f paramf) {}
  
  public void a(f paramf, com.duapps.ad.b paramb)
  {
    if (ADCardController.a(b) != null) {
      ADCardController.a(b).a(paramb);
    }
  }
  
  public void b(f paramf)
  {
    l.c(ADCardController.c(), "ADCardController DuNativeAd onAdLoaded");
    ADCardController.a(b, b.a(ADCardController.b(b), a, paramf.l(), false));
    if (ADCardController.a(b) != null) {
      ADCardController.a(b).a(ADCardController.c(b));
    }
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.lockscreen.ad.extra.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
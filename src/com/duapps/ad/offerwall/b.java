package com.duapps.ad.offerwall;

import com.duapps.ad.base.l;
import com.duapps.ad.offerwall.a.g;
import java.util.List;

class b
  implements com.duapps.ad.offerwall.a.a
{
  b(a parama) {}
  
  public void a(int paramInt)
  {
    a.a(a, false);
    if (paramInt == 0)
    {
      a.b(a, true);
      l.c("OfferWallPresenter", "DL return error....");
    }
    for (;;)
    {
      if ((a.d(a)) && ((a.e(a)) || (a.f(a)) || (a.g(a) == null))) {
        a.h(a);
      }
      return;
      l.c("OfferWallPresenter", "FB return error....");
      a.c(a, false);
      a.d(a, true);
      if ((!a.a(a).d()) && (!a.b(a))) {
        a.c(a).a();
      }
    }
  }
  
  public void b(int paramInt)
  {
    a.a(a, false);
    List localList;
    if (paramInt == 0) {
      if (a.a(a).a() > 0)
      {
        a.e(a, true);
        if ((!a.i(a)) && (!a.j(a)))
        {
          a.f(a, true);
          localList = a.a(a).c();
          a.a(a, localList);
        }
      }
    }
    for (;;)
    {
      if (a.l(a) == 1) {
        a.m(a);
      }
      return;
      if ((a.g(a) == null) || (a.f(a)))
      {
        a.h(a);
        continue;
        if (a.g(a).c() > 0)
        {
          a.c(a, true);
          if ((!a.k(a)) && (!a.j(a)))
          {
            a.f(a, true);
            localList = a.g(a).e();
            a.b(a, localList);
          }
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.duapps.ad.offerwall.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
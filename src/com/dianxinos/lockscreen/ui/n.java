package com.dianxinos.lockscreen.ui;

import com.nineoldandroids.a.ac;
import com.nineoldandroids.a.aj;
import com.nineoldandroids.b.a;

class n
  implements aj
{
  n(m paramm) {}
  
  public void a(ac paramac)
  {
    if (RealTimeView.e(a.a)) {
      return;
    }
    RealTimeView.a(a.a, ((Float)paramac.l()).floatValue());
    a.c(RealTimeView.b(a.a), RealTimeView.f(a.a));
    a.a.invalidate();
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.lockscreen.ui.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
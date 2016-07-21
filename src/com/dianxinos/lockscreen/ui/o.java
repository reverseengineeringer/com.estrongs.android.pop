package com.dianxinos.lockscreen.ui;

import com.dianxinos.lockscreen.a.d;
import com.nineoldandroids.a.a;
import com.nineoldandroids.a.c;
import java.util.List;

class o
  extends c
{
  o(m paramm) {}
  
  public void a(a parama)
  {
    super.a(parama);
    if (RealTimeView.e(a.a)) {
      return;
    }
    RealTimeView.a(a.a, RealTimeView.g(a.a) % RealTimeView.h(a.a).size());
    RealTimeView.a(a.a, (d)RealTimeView.h(a.a).get(RealTimeView.i(a.a)));
  }
  
  public void b(a parama)
  {
    super.b(parama);
    if (RealTimeView.e(a.a)) {
      return;
    }
    a.a.postDelayed(RealTimeView.j(a.a), 4000L);
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.lockscreen.ui.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
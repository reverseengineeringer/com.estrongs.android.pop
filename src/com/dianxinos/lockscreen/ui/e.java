package com.dianxinos.lockscreen.ui;

import android.graphics.PointF;
import java.util.LinkedList;
import java.util.List;

class e
  implements Runnable
{
  e(d paramd, List paramList, int paramInt) {}
  
  public void run()
  {
    ChargeCleanView.c(c.b).clear();
    ChargeCleanView.c(c.b).addAll(a);
    ChargeCleanView.d(c.b).set(b / 2, b / 2);
    ChargeCleanView.a(c.b).set(ChargeCleanView.e(c.b) - dc.b).x, ChargeCleanView.f(c.b) - dc.b).y);
    c.b.a(ChargeCleanView.Status.CLEAN);
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.lockscreen.ui.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
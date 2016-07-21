package com.dianxinos.lockscreen.fragment;

import android.os.Message;

class b
  implements Runnable
{
  b(DxFragmentActivity paramDxFragmentActivity, Message paramMessage) {}
  
  public void run()
  {
    TabInfo localTabInfo = b.c(b.a);
    b.b = b.a;
    if ((localTabInfo != null) && (b != null)) {
      b.e();
    }
    if (a != null) {
      a.sendToTarget();
    }
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.lockscreen.fragment.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
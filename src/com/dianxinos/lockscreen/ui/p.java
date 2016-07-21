package com.dianxinos.lockscreen.ui;

import android.view.View;
import android.view.View.OnClickListener;
import com.dianxinos.lockscreen.a.c;
import com.dianxinos.lockscreen.c.i;

class p
  implements View.OnClickListener
{
  p(RealTimeView paramRealTimeView) {}
  
  public void onClick(View paramView)
  {
    if (RealTimeView.k(a) != null)
    {
      RealTimeView.k(a).a();
      i.a(a.getContext(), "lstck", "rtc", Integer.valueOf(1));
    }
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.lockscreen.ui.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.dianxinos.lockscreen.ui;

import android.view.View;
import android.view.View.OnClickListener;
import com.dianxinos.lockscreen.c.i;

class b
  implements View.OnClickListener
{
  b(BatteryCardView paramBatteryCardView) {}
  
  public void onClick(View paramView)
  {
    i.a(BatteryCardView.c(a), "lstck", "bcc", Integer.valueOf(1));
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.lockscreen.ui.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
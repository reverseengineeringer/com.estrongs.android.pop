package com.dianxinos.lockscreen.ui;

import android.view.View;
import android.view.View.OnClickListener;
import com.dianxinos.lockscreen.a.b;
import com.dianxinos.lockscreen.c.i;

class q
  implements View.OnClickListener
{
  q(SDCardView paramSDCardView) {}
  
  public void onClick(View paramView)
  {
    if (SDCardView.a(a) != null)
    {
      SDCardView.a(a).a();
      i.a(a.getContext(), "lstck", "scc", Integer.valueOf(1));
    }
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.lockscreen.ui.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
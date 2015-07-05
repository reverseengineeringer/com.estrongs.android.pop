package com.estrongs.android.widget;

import android.view.View;
import android.view.View.OnClickListener;

class bn
  implements View.OnClickListener
{
  private bn(SlidingDrawer paramSlidingDrawer) {}
  
  public void onClick(View paramView)
  {
    if (SlidingDrawer.a(a)) {
      return;
    }
    if (SlidingDrawer.b(a))
    {
      a.b();
      return;
    }
    a.a();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.widget.bn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
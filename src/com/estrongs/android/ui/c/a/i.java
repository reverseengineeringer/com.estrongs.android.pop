package com.estrongs.android.ui.c.a;

import android.view.View;
import android.view.View.OnLongClickListener;
import android.view.ViewGroup;

class i
  implements View.OnLongClickListener
{
  i(h paramh) {}
  
  public boolean onLongClick(View paramView)
  {
    try
    {
      ((ViewGroup)paramView).requestDisallowInterceptTouchEvent(true);
      if (h.a(a) != null) {
        h.a(a).onLongClick(paramView);
      }
      return false;
    }
    catch (Exception localException)
    {
      for (;;) {}
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.c.a.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
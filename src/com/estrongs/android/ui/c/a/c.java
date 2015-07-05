package com.estrongs.android.ui.c.a;

import android.view.View;
import android.view.View.OnLongClickListener;
import android.view.ViewGroup;

class c
  implements View.OnLongClickListener
{
  c(b paramb) {}
  
  public boolean onLongClick(View paramView)
  {
    try
    {
      ((ViewGroup)paramView).requestDisallowInterceptTouchEvent(true);
      if (b.a(a) != null) {
        b.a(a).onLongClick(paramView);
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
 * Qualified Name:     com.estrongs.android.ui.c.a.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
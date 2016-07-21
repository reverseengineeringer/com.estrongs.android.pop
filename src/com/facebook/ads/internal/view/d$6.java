package com.facebook.ads.internal.view;

import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;

class d$6
  implements View.OnTouchListener
{
  d$6(d paramd) {}
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    if (paramMotionEvent.getAction() == 1)
    {
      if (d.a.a(d.f(a)))
      {
        a.b();
        return true;
      }
      a.c();
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.facebook.ads.internal.view.d.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
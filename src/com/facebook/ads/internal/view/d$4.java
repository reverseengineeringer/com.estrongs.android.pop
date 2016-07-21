package com.facebook.ads.internal.view;

import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;

class d$4
  implements View.OnTouchListener
{
  d$4(d paramd1, d paramd2) {}
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    if ((paramMotionEvent.getAction() == 1) && (a.getVideoURI() != null))
    {
      d.e(b);
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.facebook.ads.internal.view.d.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
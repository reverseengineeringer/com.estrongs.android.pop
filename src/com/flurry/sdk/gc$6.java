package com.flurry.sdk;

import android.view.GestureDetector.SimpleOnGestureListener;
import android.view.MotionEvent;
import android.widget.RelativeLayout;

class gc$6
  extends GestureDetector.SimpleOnGestureListener
{
  gc$6(gc paramgc) {}
  
  public boolean onSingleTapConfirmed(MotionEvent paramMotionEvent)
  {
    if ((a.b != null) && (a.b.k() != null) && (a.b.k().i()) && (gc.d(a).getVisibility() != 0)) {
      a.b.k().j();
    }
    while ((a.b == null) || (a.b.b() == null) || (gc.d(a).getVisibility() == 0)) {
      return false;
    }
    if (a.b.b().isShowing())
    {
      a.b.b().hide();
      return false;
    }
    a.b.b().show();
    return false;
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.gc.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
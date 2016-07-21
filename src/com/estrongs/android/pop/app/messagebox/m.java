package com.estrongs.android.pop.app.messagebox;

import android.view.GestureDetector.SimpleOnGestureListener;
import android.view.MotionEvent;

class m
  extends GestureDetector.SimpleOnGestureListener
{
  k a;
  
  public m(f paramf, k paramk)
  {
    a = paramk;
  }
  
  public boolean onScroll(MotionEvent paramMotionEvent1, MotionEvent paramMotionEvent2, float paramFloat1, float paramFloat2)
  {
    if (paramMotionEvent1.getX() - paramMotionEvent2.getX() > f.a(b))
    {
      a.b();
      f.b(b).setListScrool(false);
    }
    for (;;)
    {
      return true;
      if (paramMotionEvent2.getX() - paramMotionEvent1.getX() > 0.0F) {
        a.a();
      } else {
        a.a();
      }
    }
  }
  
  public boolean onSingleTapConfirmed(MotionEvent paramMotionEvent)
  {
    if (f.c(b)) {
      b.a(false);
    }
    for (;;)
    {
      return true;
      f.d(b).a(b);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.messagebox.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
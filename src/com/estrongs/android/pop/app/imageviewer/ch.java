package com.estrongs.android.pop.app.imageviewer;

import android.view.GestureDetector.SimpleOnGestureListener;
import android.view.MotionEvent;

public class ch
  extends GestureDetector.SimpleOnGestureListener
{
  float a = 1.2F;
  int b = 120;
  int c = 200;
  
  protected ch(ViewImage21 paramViewImage21) {}
  
  public boolean onDoubleTap(MotionEvent paramMotionEvent)
  {
    if (d.a) {}
    ImageViewTouch localImageViewTouch;
    do
    {
      return false;
      if (ViewImage21.a(d, d.m))
      {
        ViewImage21.b(d, d.m);
        return true;
      }
      if (ViewImage21.a(d, d.n))
      {
        ViewImage21.b(d, d.n);
        return true;
      }
      localImageViewTouch = d.g;
    } while (localImageViewTouch == null);
    if (localImageViewTouch.getMaxZoom() < 1.0F) {
      return true;
    }
    if (localImageViewTouch.getScale() > 1.0F) {
      d.g.a(1.0F);
    }
    for (;;)
    {
      return true;
      d.g.b(3.0F, paramMotionEvent.getX(), paramMotionEvent.getY());
    }
  }
  
  public boolean onScroll(MotionEvent paramMotionEvent1, MotionEvent paramMotionEvent2, float paramFloat1, float paramFloat2)
  {
    boolean bool2 = true;
    boolean bool1;
    if (d.a) {
      bool1 = false;
    }
    do
    {
      do
      {
        return bool1;
        if (ViewImage21.a(d, d.m))
        {
          ViewImage21.b(d, d.m);
          return true;
        }
        if (ViewImage21.a(d, d.n))
        {
          ViewImage21.b(d, d.n);
          return true;
        }
        paramMotionEvent1 = d.g;
        bool1 = bool2;
      } while (paramMotionEvent1 == null);
      bool1 = bool2;
    } while (paramMotionEvent1.getScale() <= 1.0F);
    paramMotionEvent1.b(-paramFloat1, -paramFloat2);
    return true;
  }
  
  public boolean onSingleTapConfirmed(MotionEvent paramMotionEvent)
  {
    if (d.a) {
      return false;
    }
    if (ViewImage21.a(d, d.m))
    {
      ViewImage21.b(d, d.m);
      return true;
    }
    if (ViewImage21.a(d, d.n))
    {
      ViewImage21.b(d, d.n);
      return true;
    }
    if (ViewImage21.c(d))
    {
      ViewImage21.b(d);
      return true;
    }
    if (ViewImage21.d(d) == 2) {
      d.e();
    }
    for (;;)
    {
      d.a();
      return true;
      ViewImage21.e(d);
    }
  }
  
  public boolean onSingleTapUp(MotionEvent paramMotionEvent)
  {
    return !d.a;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.imageviewer.ch
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
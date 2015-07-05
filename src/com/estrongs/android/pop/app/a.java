package com.estrongs.android.pop.app;

import android.annotation.TargetApi;
import android.graphics.PointF;
import android.util.FloatMath;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;

@TargetApi(8)
public abstract class a
  implements View.OnTouchListener
{
  private View.OnTouchListener a;
  private int b = -1;
  private float c = 0.0F;
  private boolean d = false;
  private PointF e;
  private PointF f;
  
  public a() {}
  
  public a(View.OnTouchListener paramOnTouchListener)
  {
    a = paramOnTouchListener;
  }
  
  private float a(PointF paramPointF1, PointF paramPointF2)
  {
    if (x == x)
    {
      if (y > y) {
        return 90.0F;
      }
      return -90.0F;
    }
    return (float)(Math.atan((y - y) / (x - x)) * 180.0D / 3.141592653589793D);
  }
  
  private boolean b(PointF paramPointF1, PointF paramPointF2)
  {
    return Math.abs(a(paramPointF1, paramPointF2)) >= 45.0F;
  }
  
  public abstract boolean a();
  
  public abstract void b();
  
  public abstract void c();
  
  public abstract boolean d();
  
  public boolean e()
  {
    return false;
  }
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    boolean bool2 = true;
    if (a())
    {
      int i = paramMotionEvent.getAction();
      int j = paramMotionEvent.getPointerCount();
      boolean bool1;
      if (j == 1)
      {
        d = false;
        c = 0.0F;
        if ((i == 0) || (i == 2)) {
          b = 1;
        }
        if (a == null) {
          break label311;
        }
        bool1 = a.onTouch(paramView, paramMotionEvent);
      }
      label311:
      do
      {
        for (;;)
        {
          return bool1;
          float f1;
          if (j == 2)
          {
            f1 = paramMotionEvent.getX(0) - paramMotionEvent.getX(1);
            float f2 = paramMotionEvent.getY(0) - paramMotionEvent.getY(1);
            f1 = FloatMath.sqrt(f1 * f1 + f2 * f2);
            e = new PointF(paramMotionEvent.getX(0), paramMotionEvent.getY(0));
            f = new PointF(paramMotionEvent.getX(1), paramMotionEvent.getY(1));
            if (i == 261)
            {
              d = false;
              c = f1;
              paramMotionEvent.setAction(3);
              paramView.onTouchEvent(paramMotionEvent);
              return true;
            }
          }
          try
          {
            if (0.0F == c) {
              c = f1;
            }
            if (d())
            {
              bool1 = bool2;
              if (!b(e, f)) {}
            }
            else
            {
              b = 2;
              if (f1 - c > 40.0F)
              {
                bool1 = bool2;
                if (!d)
                {
                  c();
                  d = true;
                  return true;
                }
              }
              else
              {
                bool1 = bool2;
                if (c - f1 > 40.0F)
                {
                  bool1 = bool2;
                  if (!d)
                  {
                    b();
                    d = true;
                    return true;
                  }
                }
              }
            }
          }
          catch (Exception paramView) {}
        }
        bool1 = bool2;
      } while (b == 2);
    }
    return e();
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
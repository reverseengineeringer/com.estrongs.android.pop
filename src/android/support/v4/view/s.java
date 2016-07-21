package android.support.v4.view;

import android.content.Context;
import android.os.Handler;
import android.view.GestureDetector.OnDoubleTapListener;
import android.view.GestureDetector.OnGestureListener;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;

class s
  implements r
{
  private static final int e = ;
  private static final int f = ViewConfiguration.getTapTimeout();
  private static final int g = ViewConfiguration.getDoubleTapTimeout();
  private int a;
  private int b;
  private int c;
  private int d;
  private final Handler h;
  private final GestureDetector.OnGestureListener i;
  private GestureDetector.OnDoubleTapListener j;
  private boolean k;
  private boolean l;
  private boolean m;
  private boolean n;
  private boolean o;
  private MotionEvent p;
  private MotionEvent q;
  private boolean r;
  private float s;
  private float t;
  private float u;
  private float v;
  private boolean w;
  private VelocityTracker x;
  
  public s(Context paramContext, GestureDetector.OnGestureListener paramOnGestureListener, Handler paramHandler)
  {
    if (paramHandler != null) {}
    for (h = new t(this, paramHandler);; h = new t(this))
    {
      i = paramOnGestureListener;
      if ((paramOnGestureListener instanceof GestureDetector.OnDoubleTapListener)) {
        a((GestureDetector.OnDoubleTapListener)paramOnGestureListener);
      }
      a(paramContext);
      return;
    }
  }
  
  private void a()
  {
    h.removeMessages(1);
    h.removeMessages(2);
    h.removeMessages(3);
    x.recycle();
    x = null;
    r = false;
    k = false;
    n = false;
    o = false;
    l = false;
    if (m) {
      m = false;
    }
  }
  
  private void a(Context paramContext)
  {
    if (paramContext == null) {
      throw new IllegalArgumentException("Context must not be null");
    }
    if (i == null) {
      throw new IllegalArgumentException("OnGestureListener must not be null");
    }
    w = true;
    paramContext = ViewConfiguration.get(paramContext);
    int i1 = paramContext.getScaledTouchSlop();
    int i2 = paramContext.getScaledDoubleTapSlop();
    c = paramContext.getScaledMinimumFlingVelocity();
    d = paramContext.getScaledMaximumFlingVelocity();
    a = (i1 * i1);
    b = (i2 * i2);
  }
  
  private boolean a(MotionEvent paramMotionEvent1, MotionEvent paramMotionEvent2, MotionEvent paramMotionEvent3)
  {
    if (!o) {}
    int i1;
    int i2;
    do
    {
      do
      {
        return false;
      } while (paramMotionEvent3.getEventTime() - paramMotionEvent2.getEventTime() > g);
      i1 = (int)paramMotionEvent1.getX() - (int)paramMotionEvent3.getX();
      i2 = (int)paramMotionEvent1.getY() - (int)paramMotionEvent3.getY();
    } while (i1 * i1 + i2 * i2 >= b);
    return true;
  }
  
  private void b()
  {
    h.removeMessages(1);
    h.removeMessages(2);
    h.removeMessages(3);
    r = false;
    n = false;
    o = false;
    l = false;
    if (m) {
      m = false;
    }
  }
  
  private void c()
  {
    h.removeMessages(3);
    l = false;
    m = true;
    i.onLongPress(p);
  }
  
  public void a(GestureDetector.OnDoubleTapListener paramOnDoubleTapListener)
  {
    j = paramOnDoubleTapListener;
  }
  
  public boolean a(MotionEvent paramMotionEvent)
  {
    int i6 = paramMotionEvent.getAction();
    if (x == null) {
      x = VelocityTracker.obtain();
    }
    x.addMovement(paramMotionEvent);
    int i1;
    int i3;
    label53:
    int i5;
    int i4;
    float f1;
    float f2;
    if ((i6 & 0xFF) == 6)
    {
      i1 = 1;
      if (i1 == 0) {
        break label95;
      }
      i3 = bi.b(paramMotionEvent);
      i5 = bi.c(paramMotionEvent);
      i4 = 0;
      f1 = 0.0F;
      f2 = 0.0F;
      label66:
      if (i4 >= i5) {
        break label122;
      }
      if (i3 != i4) {
        break label101;
      }
    }
    for (;;)
    {
      i4 += 1;
      break label66;
      i1 = 0;
      break;
      label95:
      i3 = -1;
      break label53;
      label101:
      f2 += bi.c(paramMotionEvent, i4);
      f1 += bi.d(paramMotionEvent, i4);
    }
    label122:
    if (i1 != 0)
    {
      i1 = i5 - 1;
      f2 /= i1;
      f1 /= i1;
    }
    float f3;
    boolean bool2;
    float f4;
    int i2;
    switch (i6 & 0xFF)
    {
    case 4: 
    default: 
    case 5: 
    case 6: 
    case 0: 
    case 2: 
      do
      {
        do
        {
          return false;
          i1 = i5;
          break;
          s = f2;
          u = f2;
          t = f1;
          v = f1;
          b();
          return false;
          s = f2;
          u = f2;
          t = f1;
          v = f1;
          x.computeCurrentVelocity(1000, d);
          i3 = bi.b(paramMotionEvent);
          i1 = bi.b(paramMotionEvent, i3);
          f1 = ci.a(x, i1);
          f2 = ci.b(x, i1);
          i1 = 0;
        } while (i1 >= i5);
        if (i1 == i3) {}
        do
        {
          i1 += 1;
          break;
          i4 = bi.b(paramMotionEvent, i1);
          f3 = ci.a(x, i4);
        } while (ci.b(x, i4) * f2 + f3 * f1 >= 0.0F);
        x.clear();
        return false;
        if (j != null)
        {
          bool2 = h.hasMessages(3);
          if (bool2) {
            h.removeMessages(3);
          }
          if ((p != null) && (q != null) && (bool2) && (a(p, q, paramMotionEvent))) {
            r = true;
          }
        }
        for (boolean bool1 = j.onDoubleTap(p) | false | j.onDoubleTapEvent(paramMotionEvent);; bool1 = false)
        {
          s = f2;
          u = f2;
          t = f1;
          v = f1;
          if (p != null) {
            p.recycle();
          }
          p = MotionEvent.obtain(paramMotionEvent);
          n = true;
          o = true;
          k = true;
          m = false;
          l = false;
          if (w)
          {
            h.removeMessages(2);
            h.sendEmptyMessageAtTime(2, p.getDownTime() + f + e);
          }
          h.sendEmptyMessageAtTime(1, p.getDownTime() + f);
          return bool1 | i.onDown(paramMotionEvent);
          h.sendEmptyMessageDelayed(3, g);
        }
      } while (m);
      f3 = s - f2;
      f4 = t - f1;
      if (r) {
        return false | j.onDoubleTapEvent(paramMotionEvent);
      }
      if (n)
      {
        i2 = (int)(f2 - u);
        i3 = (int)(f1 - v);
        i2 = i2 * i2 + i3 * i3;
        if (i2 <= a) {
          break label1136;
        }
        bool2 = i.onScroll(p, paramMotionEvent, f3, f4);
        s = f2;
        t = f1;
        n = false;
        h.removeMessages(3);
        h.removeMessages(1);
        h.removeMessages(2);
      }
      break;
    }
    for (;;)
    {
      if (i2 > a) {
        o = false;
      }
      return bool2;
      if ((Math.abs(f3) < 1.0F) && (Math.abs(f4) < 1.0F)) {
        break;
      }
      bool2 = i.onScroll(p, paramMotionEvent, f3, f4);
      s = f2;
      t = f1;
      return bool2;
      k = false;
      MotionEvent localMotionEvent = MotionEvent.obtain(paramMotionEvent);
      if (r) {
        bool2 = j.onDoubleTapEvent(paramMotionEvent) | false;
      }
      for (;;)
      {
        if (q != null) {
          q.recycle();
        }
        q = localMotionEvent;
        if (x != null)
        {
          x.recycle();
          x = null;
        }
        r = false;
        l = false;
        h.removeMessages(1);
        h.removeMessages(2);
        return bool2;
        if (m)
        {
          h.removeMessages(3);
          m = false;
          bool2 = false;
        }
        else if (n)
        {
          boolean bool3 = i.onSingleTapUp(paramMotionEvent);
          bool2 = bool3;
          if (l)
          {
            bool2 = bool3;
            if (j != null)
            {
              j.onSingleTapConfirmed(paramMotionEvent);
              bool2 = bool3;
            }
          }
        }
        else
        {
          VelocityTracker localVelocityTracker = x;
          i2 = bi.b(paramMotionEvent, 0);
          localVelocityTracker.computeCurrentVelocity(1000, d);
          f1 = ci.b(localVelocityTracker, i2);
          f2 = ci.a(localVelocityTracker, i2);
          if ((Math.abs(f1) > c) || (Math.abs(f2) > c))
          {
            bool2 = i.onFling(p, paramMotionEvent, f2, f1);
            continue;
            a();
            return false;
          }
          else
          {
            bool2 = false;
          }
        }
      }
      label1136:
      bool2 = false;
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.s
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
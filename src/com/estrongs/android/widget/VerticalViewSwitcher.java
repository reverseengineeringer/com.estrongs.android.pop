package com.estrongs.android.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewConfiguration;
import android.widget.FrameLayout;
import android.widget.Scroller;

public class VerticalViewSwitcher
  extends FrameLayout
{
  protected Scroller a;
  public int b;
  protected int c = 0;
  protected int d = -2;
  protected boolean e = true;
  private VelocityTracker f;
  private int g = -1;
  private int h = 0;
  private float i;
  private boolean j = true;
  private int k = 0;
  private int l = 0;
  private int m = -1;
  private boolean n = true;
  private boolean o = false;
  private boolean p = false;
  private boolean q = true;
  private bw r = null;
  
  public VerticalViewSwitcher(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a();
  }
  
  private void a()
  {
    a = new Scroller(getContext());
    b = ViewConfiguration.get(getContext()).getScaledTouchSlop();
  }
  
  private int b(int paramInt)
  {
    int i1 = 0;
    if (paramInt < 0) {
      return 0;
    }
    if (paramInt >= l) {
      return (paramInt + 1) * k;
    }
    int i2 = k;
    if (e) {
      i1 = k;
    }
    return i1 + i2 * paramInt;
  }
  
  private void b()
  {
    View localView = getChildAt(0);
    if (localView == null) {
      return;
    }
    localView.layout(localView.getLeft(), localView.getHeight() + b(l - 1), localView.getRight(), localView.getHeight() * 2 + b(l - 1));
    p = true;
  }
  
  private void c()
  {
    View localView = getChildAt(0);
    localView.layout(localView.getLeft(), k, localView.getRight(), localView.getHeight() + k);
    p = false;
  }
  
  private void d()
  {
    View localView = getChildAt(l - 1);
    if (localView == null) {
      return;
    }
    localView.layout(localView.getLeft(), 0, localView.getRight(), localView.getHeight());
    o = true;
  }
  
  private void e()
  {
    View localView = getChildAt(l - 1);
    if (localView == null) {
      return;
    }
    localView.layout(localView.getLeft(), b(l - 1), localView.getRight(), localView.getHeight() + b(l - 1));
    o = false;
  }
  
  private void f()
  {
    int i1 = getHeight();
    int i2 = (getScrollY() + i1 / 2) / i1;
    i1 = i2;
    if (e) {
      i1 = i2 - 1;
    }
    a(i1);
  }
  
  private void g()
  {
    l = getChildCount();
    if (l < 2) {
      e = false;
    }
    while (!n) {
      return;
    }
    e = true;
  }
  
  public void a(int paramInt)
  {
    if (!a.isFinished()) {
      return;
    }
    d = paramInt;
    paramInt = b(paramInt) - getScrollY();
    a.startScroll(0, getScrollY(), 0, paramInt, Math.abs(paramInt) * 2);
    invalidate();
  }
  
  public void addView(View paramView)
  {
    q = true;
    paramView.setVisibility(0);
    super.addView(paramView);
    g();
    requestLayout();
  }
  
  public void computeScroll()
  {
    int i1 = 0;
    if (a.computeScrollOffset())
    {
      scrollTo(a.getCurrX(), a.getCurrY());
      postInvalidate();
    }
    while (d == -2) {
      return;
    }
    c = d;
    int i2;
    if (c < 0)
    {
      i1 = l - 1;
      i2 = 1;
    }
    for (;;)
    {
      if (p) {
        c();
      }
      if (o) {
        e();
      }
      if (i2 != 0) {
        setCurrentScreen(i1);
      }
      if (r != null) {
        r.a(c);
      }
      d = -2;
      return;
      if (c >= l)
      {
        i2 = 1;
      }
      else
      {
        i2 = 0;
        i1 = -1;
      }
    }
  }
  
  public int getCurrentChildIndex()
  {
    return getCurrentScreen();
  }
  
  public int getCurrentScreen()
  {
    return c;
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    int i1 = paramMotionEvent.getAction();
    if (f == null) {
      f = VelocityTracker.obtain();
    }
    f.addMovement(paramMotionEvent);
    if ((i1 == 2) && (h != 0)) {}
    for (;;)
    {
      return true;
      switch (i1 & 0xFF)
      {
      }
      while (h == 0)
      {
        return false;
        i1 = paramMotionEvent.findPointerIndex(g);
        if (i1 == -1) {
          return false;
        }
        float f1 = paramMotionEvent.getY(i1);
        if ((int)Math.abs(f1 - i) > b) {}
        for (i1 = 1; i1 != 0; i1 = 0)
        {
          h = 1;
          i = f1;
          break;
        }
        i = paramMotionEvent.getY();
        g = paramMotionEvent.getPointerId(0);
        if (!a.isFinished()) {
          a.abortAnimation();
        }
        h = 0;
      }
    }
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if ((!p) && (!o))
    {
      label34:
      View localView;
      if (e)
      {
        paramInt1 = k;
        paramInt3 = getChildCount();
        paramInt2 = 0;
        if (paramInt2 >= paramInt3) {
          return;
        }
        localView = getChildAt(paramInt2);
        if (localView != null) {
          break label64;
        }
      }
      for (;;)
      {
        paramInt2 += 1;
        break label34;
        paramInt1 = 0;
        break;
        label64:
        localView.setVisibility(0);
        paramInt4 = localView.getMeasuredHeight();
        localView.layout(0, paramInt1, localView.getMeasuredWidth(), paramInt1 + paramInt4);
        paramInt1 += paramInt4;
      }
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i2 = k;
    super.onMeasure(paramInt1, paramInt2);
    k = View.MeasureSpec.getSize(paramInt2);
    int i3 = getChildCount();
    if ((i3 < 2) || ((!q) && (l < 2))) {
      e = false;
    }
    int i1 = 0;
    for (;;)
    {
      if (i1 < i3) {}
      try
      {
        getChildAt(i1).measure(paramInt1, paramInt2);
        i1 += 1;
        continue;
        if (q)
        {
          q = false;
          g();
        }
        if ((j) || (i2 != k))
        {
          scrollTo(0, b(c));
          j = false;
        }
        return;
      }
      catch (Exception localException)
      {
        for (;;) {}
      }
    }
  }
  
  protected void onScrollChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onScrollChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    if (r != null)
    {
      float f1 = (paramInt2 - b(c)) / getWidth();
      r.a(c, f1);
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    int i2 = 0;
    if (f == null) {
      f = VelocityTracker.obtain();
    }
    f.addMovement(paramMotionEvent);
    int i1 = paramMotionEvent.getAction();
    float f1 = paramMotionEvent.getY();
    switch (i1)
    {
    default: 
    case 0: 
    case 2: 
      int i4;
      do
      {
        do
        {
          return true;
          m = c;
          return true;
          if ((int)Math.abs(f1 - i) <= b) {
            break;
          }
          i1 = 1;
          if (i1 != 0) {
            h = 1;
          }
        } while (h != 1);
        i3 = (int)(i - f1);
        i = f1;
        i4 = getScrollY();
        if (i3 >= 0) {
          break label299;
        }
        if (i4 > 0)
        {
          if (e)
          {
            i1 = i4 + i3;
            if (i1 >= b(0)) {
              break label276;
            }
            if (!o) {
              d();
            }
          }
          scrollBy(0, Math.max(-i4, i3));
        }
      } while (r == null);
      i1 = getHeight();
      int i3 = (getScrollY() + i1 / 2) / i1;
      i1 = i3;
      if (e)
      {
        i3 -= 1;
        if (i3 < 0) {
          i1 = l - 1;
        }
      }
      while ((m != i1) && (i1 < l) && (i1 >= 0))
      {
        m = i1;
        return true;
        i1 = 0;
        break label99;
        if ((i1 >= b(1)) || (!p)) {
          break label179;
        }
        c();
        break label179;
        if (i3 <= 0) {
          break label192;
        }
        if (e)
        {
          i1 = i4 + i3;
          if (i1 <= b(l - 1)) {
            break label386;
          }
          if (!p) {
            b();
          }
        }
        try
        {
          if (p) {
            i1 = getChildAt(0).getBottom();
          }
          for (;;)
          {
            i1 = i1 - i4 - getHeight();
            if (i1 <= 0) {
              break;
            }
            scrollBy(0, Math.min(i1, i3));
            break;
            if ((i1 <= b(l - 1) - k) || (!o)) {
              break label342;
            }
            e();
            break label342;
            if (o) {
              i1 = b(l - 1) + k;
            } else {
              i1 = getChildAt(l - 1).getBottom();
            }
          }
        }
        catch (Exception paramMotionEvent)
        {
          for (;;)
          {
            i1 = 0;
          }
        }
        i1 = i2;
        if (i3 < l) {
          i1 = i3;
        }
      }
    case 1: 
      label99:
      label179:
      label192:
      label276:
      label299:
      label342:
      label386:
      if (h == 1)
      {
        paramMotionEvent = f;
        paramMotionEvent.computeCurrentVelocity(1000);
        i1 = (int)paramMotionEvent.getYVelocity();
        if (i1 <= 300) {
          break label594;
        }
        if (!e) {
          break label587;
        }
        if (c < 0) {
          break label594;
        }
        if (getChildAt(c).getTop() <= getScrollY()) {
          break label650;
        }
        a(c - 1);
      }
      for (;;)
      {
        if (f != null)
        {
          f.recycle();
          f = null;
        }
        h = 0;
        return true;
        label587:
        if (c > 0) {
          break;
        }
        label594:
        if (i1 < 65236) {
          if (e)
          {
            if (c >= l) {}
          }
          else {
            label650:
            while (c < l - 1)
            {
              if (getChildAt(c).getTop() >= getScrollY()) {
                break label677;
              }
              a(c + 1);
              break;
              f();
              break;
            }
          }
        }
        f();
        continue;
        label677:
        f();
      }
    }
    h = 0;
    return true;
  }
  
  public void removeViewAt(int paramInt)
  {
    q = true;
    super.removeViewAt(paramInt);
    g();
    requestLayout();
  }
  
  public void setCurrentScreen(int paramInt)
  {
    if (paramInt == -1) {
      return;
    }
    c = paramInt;
    scrollTo(0, b(c));
    invalidate();
  }
  
  public void setOnScreenSwitchListener(bw parambw)
  {
    r = parambw;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.widget.VerticalViewSwitcher
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
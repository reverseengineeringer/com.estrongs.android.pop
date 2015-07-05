package com.estrongs.android.widget;

import android.content.Context;
import android.os.Vibrator;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.GridView;
import android.widget.LinearLayout;

public class HeaderGridView
  extends GridView
  implements AbsListView.OnScrollListener
{
  private LinearLayout a;
  private int b = 30;
  private int c = 0;
  private int d;
  private boolean e;
  private boolean f;
  private int g;
  private int h;
  private int i;
  private boolean j = false;
  private int k = 0;
  private Vibrator l;
  
  public HeaderGridView(Context paramContext)
  {
    super(paramContext);
  }
  
  public HeaderGridView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public HeaderGridView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  private void a()
  {
    if (k == 0) {}
    for (;;)
    {
      return;
      int n = (h - g) / 2;
      a.setVisibility(0);
      d = a.getMeasuredHeight();
      int m;
      if (k == 1) {
        if ((f) && (n < d))
        {
          f = false;
          e();
          m = n;
        }
      }
      while (m > 0)
      {
        n = getLeft();
        int i1 = getRight();
        int i2 = d;
        a.layout(n, m - i2, i1, m);
        layout(n, m, i1, getBottom());
        return;
        m = n;
        if (!f)
        {
          m = n;
          if (n > d)
          {
            f = true;
            e();
            m = n;
            continue;
            if (k != 3)
            {
              m = n;
              if (k != 2) {}
            }
            else
            {
              n += d;
              m = n;
              if (!f)
              {
                m = n;
                if (n > 0)
                {
                  f = true;
                  e();
                  m = n;
                }
              }
            }
          }
        }
      }
    }
  }
  
  private void b()
  {
    if (k == 1) {
      if (f)
      {
        k = 2;
        c();
      }
    }
    for (;;)
    {
      h = -100;
      g = -100;
      f = false;
      setVerticalScrollBarEnabled(true);
      return;
      k = 0;
      d();
      continue;
      if (k == 3)
      {
        k = 0;
        d();
      }
    }
  }
  
  private void c()
  {
    a.setVisibility(0);
    int m = getLeft();
    int n = getRight();
    int i1 = d;
    a.layout(m, 0, n, i1);
    layout(m, i1, n, getBottom());
  }
  
  private void d()
  {
    a.setVisibility(4);
    layout(getLeft(), 0, getRight(), getBottom());
  }
  
  private void e()
  {
    if (l != null) {
      l.vibrate(30L);
    }
  }
  
  public void a(boolean paramBoolean)
  {
    j = paramBoolean;
  }
  
  public void onMeasure(int paramInt1, int paramInt2)
  {
    if (j)
    {
      super.onMeasure(paramInt1, View.MeasureSpec.makeMeasureSpec(16777215, Integer.MIN_VALUE));
      ViewGroup.LayoutParams localLayoutParams = getLayoutParams();
      if (localLayoutParams != null) {
        height = getMeasuredHeight();
      }
      return;
    }
    super.onMeasure(paramInt1, paramInt2);
  }
  
  public void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onScrollStateChanged(AbsListView paramAbsListView, int paramInt) {}
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    int n = 0;
    int i1 = 0;
    int m = 0;
    int i2;
    if ((getFirstVisiblePosition() == 0) && (e))
    {
      int i3 = paramMotionEvent.getAction();
      i2 = (int)paramMotionEvent.getRawY();
      switch (i3)
      {
      }
    }
    label186:
    do
    {
      do
      {
        return super.onTouchEvent(paramMotionEvent);
        if (g == -100)
        {
          g = i2;
          h = i2;
        }
      } while (k != 2);
      return true;
      if (Math.abs(i2 - g) > i)
      {
        if ((k != 0) || (getFirstVisiblePosition() != 0)) {
          break label186;
        }
        if (i2 > g)
        {
          k = 1;
          setVerticalScrollBarEnabled(false);
        }
      }
      while (k != 0)
      {
        if (i2 - h < 0) {
          m = 1;
        }
        h = i2;
        a();
        if (m == 0) {
          break;
        }
        return true;
        if (k == 2)
        {
          k = 3;
          setVerticalScrollBarEnabled(false);
        }
      }
      if (k == 0)
      {
        m = i1;
        if (k == 2) {}
      }
      else
      {
        m = n;
        if (k == 3) {
          m = 1;
        }
        h = i2;
        a();
        b();
      }
    } while (m == 0);
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.widget.HeaderGridView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
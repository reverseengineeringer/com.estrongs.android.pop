package com.estrongs.android.pop.esclasses;

import android.content.Context;
import android.support.v4.view.bi;
import android.support.v4.widget.DrawerLayout;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.ViewConfiguration;

public class ESDrawerLayout
  extends DrawerLayout
{
  private int b;
  private float c;
  private float d;
  
  public ESDrawerLayout(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public ESDrawerLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public ESDrawerLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    f();
  }
  
  private void f()
  {
    b = ViewConfiguration.get(getContext()).getScaledTouchSlop();
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    int i = 1;
    boolean bool = false;
    int j = bi.a(paramMotionEvent);
    float f1 = paramMotionEvent.getX();
    float f2 = paramMotionEvent.getY();
    switch (j)
    {
    }
    for (;;)
    {
      bool = super.onInterceptTouchEvent(paramMotionEvent);
      int k;
      do
      {
        return bool;
        c = f1;
        d = f2;
        break;
        if (paramMotionEvent.getPointerCount() > 1) {
          break label163;
        }
        j = (int)Math.abs(f1 - c);
        k = (int)Math.abs(f2 - d);
      } while ((j > 0) && (k > 0) && (j * j + k * k > b * b) && (Math.toDegrees(Math.atan(j / k)) < 60.0D));
      label163:
      if ((g(8388613)) && (paramMotionEvent.getPointerCount() <= 1))
      {
        j = (int)Math.abs(f1 - c);
        k = (int)Math.abs(f2 - d);
        if ((j > b) && (j >= k)) {}
        while (i != 0)
        {
          if (f1 >= c) {
            break label250;
          }
          b(2, 8388613);
          break;
          i = 0;
        }
        label250:
        if (2 == a(8388613))
        {
          b(0, 8388613);
          continue;
          if (a(8388613) == 2) {
            b(0, 8388613);
          }
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.esclasses.ESDrawerLayout
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
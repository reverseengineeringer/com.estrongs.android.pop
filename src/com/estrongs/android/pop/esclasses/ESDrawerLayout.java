package com.estrongs.android.pop.esclasses;

import android.content.Context;
import android.support.v4.view.z;
import android.support.v4.widget.DrawerLayout;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.ViewConfiguration;

public class ESDrawerLayout
  extends DrawerLayout
{
  private int a;
  private float b;
  private float c;
  
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
    e();
  }
  
  private void e()
  {
    a = ViewConfiguration.get(getContext()).getScaledTouchSlop();
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    int i = 1;
    int j = z.a(paramMotionEvent);
    float f1 = paramMotionEvent.getX();
    float f2 = paramMotionEvent.getY();
    switch (j)
    {
    }
    for (;;)
    {
      return super.onInterceptTouchEvent(paramMotionEvent);
      b = f1;
      c = f2;
      continue;
      if ((d(8388613)) && (paramMotionEvent.getPointerCount() <= 1))
      {
        j = (int)Math.abs(f1 - b);
        int k = (int)Math.abs(f2 - c);
        if ((j > a) && (j >= k)) {}
        while (i != 0)
        {
          if (f1 >= b) {
            break label158;
          }
          b(2, 8388613);
          break;
          i = 0;
        }
        label158:
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
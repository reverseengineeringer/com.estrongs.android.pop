package com.estrongs.android.ui.a;

import android.content.Context;
import android.graphics.PointF;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.LinearSmoothScroller;
import android.view.View;
import com.estrongs.android.util.l;

class c
  extends LinearSmoothScroller
{
  private static final String a = c.class.getSimpleName();
  private LinearLayoutManager b;
  private float c = 0.0F;
  
  public c(Context paramContext, LinearLayoutManager paramLinearLayoutManager)
  {
    super(paramContext);
    b = paramLinearLayoutManager;
  }
  
  public float a()
  {
    return c;
  }
  
  public void a(float paramFloat)
  {
    c = paramFloat;
  }
  
  protected int calculateTimeForDeceleration(int paramInt)
  {
    int i = calculateTimeForScrolling(paramInt);
    paramInt = i;
    if (0.0F == c) {
      paramInt = (int)Math.ceil(i / 0.3356D);
    }
    return paramInt;
  }
  
  protected int calculateTimeForScrolling(int paramInt)
  {
    if (0.0F == c) {
      return super.calculateTimeForScrolling(paramInt);
    }
    return (int)Math.ceil(Math.abs(paramInt) / c);
  }
  
  public PointF computeScrollVectorForPosition(int paramInt)
  {
    int i = b.findFirstVisibleItemPosition();
    if (-1 == i)
    {
      l.d(a, "computeScrollVectorForPosition(" + paramInt + ") no child");
      return null;
    }
    View localView = b.findViewByPosition(i);
    return new PointF(0.0F, (paramInt - i) * b.getDecoratedMeasuredHeight(localView));
  }
  
  protected int getVerticalSnapPreference()
  {
    return -1;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.a.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
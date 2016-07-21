package android.support.v4.widget;

import android.view.View;

class bx
  extends dc
{
  private bx(SlidingPaneLayout paramSlidingPaneLayout) {}
  
  public int a(View paramView, int paramInt1, int paramInt2)
  {
    return paramView.getTop();
  }
  
  public void a(int paramInt)
  {
    if (SlidingPaneLayout.b(a).a() == 0)
    {
      if (SlidingPaneLayout.c(a) == 0.0F)
      {
        a.d(SlidingPaneLayout.d(a));
        a.c(SlidingPaneLayout.d(a));
        SlidingPaneLayout.a(a, false);
      }
    }
    else {
      return;
    }
    a.b(SlidingPaneLayout.d(a));
    SlidingPaneLayout.a(a, true);
  }
  
  public void a(View paramView, float paramFloat1, float paramFloat2)
  {
    SlidingPaneLayout.LayoutParams localLayoutParams = (SlidingPaneLayout.LayoutParams)paramView.getLayoutParams();
    int i;
    int j;
    if (SlidingPaneLayout.e(a))
    {
      i = a.getPaddingRight();
      j = rightMargin + i;
      if (paramFloat1 >= 0.0F)
      {
        i = j;
        if (paramFloat1 == 0.0F)
        {
          i = j;
          if (SlidingPaneLayout.c(a) <= 0.5F) {}
        }
      }
      else
      {
        i = j + SlidingPaneLayout.f(a);
      }
      j = SlidingPaneLayout.d(a).getWidth();
      i = a.getWidth() - i - j;
    }
    for (;;)
    {
      SlidingPaneLayout.b(a).a(i, paramView.getTop());
      a.invalidate();
      return;
      i = a.getPaddingLeft();
      j = leftMargin + i;
      if (paramFloat1 <= 0.0F)
      {
        i = j;
        if (paramFloat1 == 0.0F)
        {
          i = j;
          if (SlidingPaneLayout.c(a) <= 0.5F) {}
        }
      }
      else
      {
        i = j + SlidingPaneLayout.f(a);
      }
    }
  }
  
  public void a(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    SlidingPaneLayout.a(a, paramInt1);
    a.invalidate();
  }
  
  public boolean a(View paramView, int paramInt)
  {
    if (SlidingPaneLayout.a(a)) {
      return false;
    }
    return getLayoutParamsb;
  }
  
  public int b(View paramView)
  {
    return SlidingPaneLayout.f(a);
  }
  
  public int b(View paramView, int paramInt1, int paramInt2)
  {
    paramView = (SlidingPaneLayout.LayoutParams)SlidingPaneLayout.d(a).getLayoutParams();
    if (SlidingPaneLayout.e(a))
    {
      paramInt2 = a.getWidth();
      i = a.getPaddingRight();
      paramInt2 -= rightMargin + i + SlidingPaneLayout.d(a).getWidth();
      i = SlidingPaneLayout.f(a);
      return Math.max(Math.min(paramInt1, paramInt2), paramInt2 - i);
    }
    paramInt2 = a.getPaddingLeft();
    paramInt2 = leftMargin + paramInt2;
    int i = SlidingPaneLayout.f(a);
    return Math.min(Math.max(paramInt1, paramInt2), i + paramInt2);
  }
  
  public void b(int paramInt1, int paramInt2)
  {
    SlidingPaneLayout.b(a).a(SlidingPaneLayout.d(a), paramInt2);
  }
  
  public void b(View paramView, int paramInt)
  {
    a.a();
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.bx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
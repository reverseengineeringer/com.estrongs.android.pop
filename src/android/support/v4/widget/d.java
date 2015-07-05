package android.support.v4.widget;

import android.view.View;

class d
  extends ad
{
  private final int b;
  private aa c;
  private final Runnable d = new e(this);
  
  public d(DrawerLayout paramDrawerLayout, int paramInt)
  {
    b = paramInt;
  }
  
  private void b()
  {
    int i = 3;
    if (b == 3) {
      i = 5;
    }
    View localView = a.b(i);
    if (localView != null) {
      a.i(localView);
    }
  }
  
  private void c()
  {
    int j = 0;
    int k = c.b();
    int i;
    View localView;
    if (b == 3)
    {
      i = 1;
      if (i == 0) {
        break label149;
      }
      localView = a.b(3);
      if (localView != null) {
        j = -localView.getWidth();
      }
      j += k;
    }
    for (;;)
    {
      if ((localView != null) && (((i != 0) && (localView.getLeft() < j)) || ((i == 0) && (localView.getLeft() > j) && (a.a(localView) == 0))))
      {
        DrawerLayout.LayoutParams localLayoutParams = (DrawerLayout.LayoutParams)localView.getLayoutParams();
        c.a(localView, j, localView.getTop());
        c = true;
        a.invalidate();
        b();
        a.c();
      }
      return;
      i = 0;
      break;
      label149:
      localView = a.b(5);
      j = a.getWidth();
      j -= k;
    }
  }
  
  public int a(View paramView)
  {
    return paramView.getWidth();
  }
  
  public int a(View paramView, int paramInt1, int paramInt2)
  {
    if (a.a(paramView, 3)) {
      return Math.max(-paramView.getWidth(), Math.min(paramInt1, 0));
    }
    paramInt2 = a.getWidth();
    return Math.max(paramInt2 - paramView.getWidth(), Math.min(paramInt1, paramInt2));
  }
  
  public void a()
  {
    a.removeCallbacks(d);
  }
  
  public void a(int paramInt)
  {
    a.a(b, paramInt, c.c());
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    a.postDelayed(d, 160L);
  }
  
  public void a(aa paramaa)
  {
    c = paramaa;
  }
  
  public void a(View paramView, float paramFloat1, float paramFloat2)
  {
    paramFloat2 = a.d(paramView);
    int k = paramView.getWidth();
    int i;
    if (a.a(paramView, 3)) {
      if ((paramFloat1 > 0.0F) || ((paramFloat1 == 0.0F) && (paramFloat2 > 0.5F))) {
        i = 0;
      }
    }
    for (;;)
    {
      c.a(i, paramView.getTop());
      a.invalidate();
      return;
      i = -k;
      continue;
      int j = a.getWidth();
      if (paramFloat1 >= 0.0F)
      {
        i = j;
        if (paramFloat1 == 0.0F)
        {
          i = j;
          if (paramFloat2 >= 0.5F) {}
        }
      }
      else
      {
        i = j - k;
      }
    }
  }
  
  public void a(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    paramInt2 = paramView.getWidth();
    float f;
    if (a.a(paramView, 3))
    {
      f = (paramInt2 + paramInt1) / paramInt2;
      a.b(paramView, f);
      if (f != 0.0F) {
        break label76;
      }
    }
    label76:
    for (paramInt1 = 4;; paramInt1 = 0)
    {
      paramView.setVisibility(paramInt1);
      a.invalidate();
      return;
      f = (a.getWidth() - paramInt1) / paramInt2;
      break;
    }
  }
  
  public boolean a(View paramView, int paramInt)
  {
    return (a.g(paramView)) && (a.a(paramView, b)) && (a.a(paramView) == 0);
  }
  
  public int b(View paramView, int paramInt1, int paramInt2)
  {
    return paramView.getTop();
  }
  
  public void b(int paramInt1, int paramInt2)
  {
    if ((paramInt1 & 0x1) == 1) {}
    for (View localView = a.b(3);; localView = a.b(5))
    {
      if ((localView != null) && (a.a(localView) == 0)) {
        c.a(localView, paramInt2);
      }
      return;
    }
  }
  
  public void b(View paramView, int paramInt)
  {
    getLayoutParamsc = false;
    b();
  }
  
  public boolean b(int paramInt)
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
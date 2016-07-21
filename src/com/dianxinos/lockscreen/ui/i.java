package com.dianxinos.lockscreen.ui;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import com.dianxinos.lockscreen.c.g;

public class i
{
  public static int a = 20;
  public static float b = 0.3F;
  private static boolean d = g.a;
  private static String e = "DrawerViewHelper";
  ViewGroup.MarginLayoutParams c;
  private j f;
  private View g;
  private int h = 0;
  private int i = 0;
  private int j = 0;
  private boolean k = false;
  private boolean l = false;
  private boolean m = false;
  private boolean n = false;
  private int o;
  private int p;
  private int q;
  private int r;
  
  public i(View paramView)
  {
    g = paramView;
  }
  
  private void a(int paramInt)
  {
    c.leftMargin = (q - paramInt);
    c.rightMargin = (r + paramInt);
    g.setLayoutParams(c);
  }
  
  private boolean b(int paramInt)
  {
    return Math.abs(paramInt) < a;
  }
  
  private boolean d()
  {
    return a();
  }
  
  private void e()
  {
    c.leftMargin = q;
    c.rightMargin = r;
    g.setLayoutParams(c);
    if (f != null) {
      f.e();
    }
  }
  
  private void f()
  {
    h = 0;
    i = 0;
    j = 0;
    k = false;
    l = false;
  }
  
  public void a(j paramj)
  {
    f = paramj;
  }
  
  public boolean a()
  {
    if (m) {
      return n;
    }
    if (g == null)
    {
      m = true;
      n = false;
      return false;
    }
    ViewGroup.LayoutParams localLayoutParams = g.getLayoutParams();
    if ((localLayoutParams instanceof ViewGroup.MarginLayoutParams))
    {
      c = ((ViewGroup.MarginLayoutParams)localLayoutParams);
      o = g.getWidth();
      if (o == 0)
      {
        n = false;
        return false;
      }
    }
    else
    {
      m = true;
      n = false;
      return false;
    }
    p = ((int)(o * b));
    q = c.leftMargin;
    r = c.rightMargin;
    m = true;
    n = true;
    return true;
  }
  
  public boolean a(MotionEvent paramMotionEvent)
  {
    if (d())
    {
      h = ((int)paramMotionEvent.getRawX());
      i = ((int)paramMotionEvent.getRawY());
    }
    return false;
  }
  
  public boolean b()
  {
    return d();
  }
  
  public boolean b(MotionEvent paramMotionEvent)
  {
    int i1;
    float f1;
    if (d())
    {
      i1 = (int)(h - paramMotionEvent.getRawX());
      int i2 = (int)(i - paramMotionEvent.getRawY());
      if ((!k) && ((!b(i1)) || (!b(i2))))
      {
        k = true;
        if (Math.abs(i1) > Math.abs(i2))
        {
          l = true;
          if (f != null)
          {
            if (i1 <= 0) {
              break label158;
            }
            f.a();
          }
        }
      }
      if ((k) && (l))
      {
        j = i1;
        a(i1);
        if (f != null)
        {
          if (Math.abs(i1) < p) {
            break label176;
          }
          if (i1 <= 0) {
            break label170;
          }
          f1 = 1.0F;
        }
      }
    }
    for (;;)
    {
      f.a(f1);
      return false;
      label158:
      f.c();
      break;
      label170:
      f1 = -1.0F;
      continue;
      label176:
      f1 = i1 / p;
    }
  }
  
  public void c()
  {
    if (d()) {}
  }
  
  public boolean c(MotionEvent paramMotionEvent)
  {
    boolean bool = k;
    if (d()) {
      if (l) {
        if (Math.abs(j) > p)
        {
          if (j <= 0) {
            break label66;
          }
          if (f != null) {
            f.b();
          }
        }
      }
    }
    for (;;)
    {
      e();
      f();
      return bool;
      label66:
      if (f != null) {
        f.d();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.lockscreen.ui.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
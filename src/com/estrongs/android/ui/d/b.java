package com.estrongs.android.ui.d;

import android.content.Context;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewParent;
import android.widget.LinearLayout;
import com.estrongs.android.ui.view.IndicatorView;

public abstract class b
{
  private LinearLayout a;
  private LinearLayout b;
  protected IndicatorView c;
  private int d = -1;
  private Context e;
  
  public b(LinearLayout paramLinearLayout, Context paramContext)
  {
    a = paramLinearLayout;
    e = paramContext;
    b = ((LinearLayout)a.findViewById(2131361908));
    a();
  }
  
  protected void a()
  {
    c = new c(this, e);
    b.addView(c, new ViewGroup.LayoutParams(-1, -1));
    int i = 0;
    while (i < b())
    {
      c.a(e.c(i), i);
      i += 1;
    }
    d = e.a();
    e(d);
  }
  
  public abstract void a(int paramInt);
  
  public void a(int paramInt, float paramFloat)
  {
    c.a(paramInt, paramFloat);
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    c.a(paramInt1, paramInt2);
    d = paramInt2;
  }
  
  public void a(LinearLayout paramLinearLayout)
  {
    a = paramLinearLayout;
    a.removeAllViews();
    ViewParent localViewParent = b.getParent();
    if (localViewParent == null) {
      paramLinearLayout.addView(b, new ViewGroup.LayoutParams(-1, -1));
    }
    for (;;)
    {
      c(d());
      return;
      if ((localViewParent != paramLinearLayout) && ((localViewParent instanceof ViewGroup)))
      {
        ((ViewGroup)localViewParent).removeView(b);
        paramLinearLayout.addView(b, new ViewGroup.LayoutParams(-1, -1));
      }
    }
  }
  
  public void a(d paramd)
  {
    c.a(paramd);
  }
  
  public void a(d paramd, int paramInt)
  {
    c.a(paramd, paramInt);
  }
  
  protected int b()
  {
    return e.c();
  }
  
  public void b(int paramInt)
  {
    for (;;)
    {
      try
      {
        if (d == paramInt)
        {
          i = 1;
          d = e.a();
          int k = d;
          int j = k;
          if (paramInt <= d) {
            j = k + 1;
          }
          if (i != 0)
          {
            c.a(paramInt, j, true);
            return;
          }
          c.c(paramInt);
          return;
        }
      }
      catch (Exception localException)
      {
        return;
      }
      int i = 0;
    }
  }
  
  public void c()
  {
    a.removeView(b);
  }
  
  public void c(int paramInt)
  {
    if (paramInt != d) {
      c.a(d, paramInt);
    }
    for (;;)
    {
      d = paramInt;
      return;
      c.b(paramInt);
    }
  }
  
  public int d()
  {
    return d;
  }
  
  public void d(int paramInt)
  {
    e(paramInt);
  }
  
  public void e(int paramInt)
  {
    c.b(paramInt);
    d = paramInt;
  }
  
  public void f(int paramInt)
  {
    d locald = e.c(paramInt);
    c.a(paramInt, locald);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.d.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
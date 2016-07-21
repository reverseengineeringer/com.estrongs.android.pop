package com.estrongs.android.ui.view;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.NinePatchDrawable;

class bn
{
  private Drawable b;
  private String c;
  private int d;
  private int e;
  private int f;
  private int g;
  private int h;
  private NinePatchDrawable i;
  private float j;
  private boolean k;
  
  private NinePatchDrawable g()
  {
    if (i == null)
    {
      i = ((NinePatchDrawable)a.getResources().getDrawable(2130837688));
      i.mutate();
    }
    return i;
  }
  
  public int a()
  {
    if (IndicatorView.a(a)) {
      return (int)(h + f * j + 0.5F);
    }
    return (int)(h + (f + e) * j + 0.5F);
  }
  
  public void a(float paramFloat)
  {
    j = paramFloat;
  }
  
  public int b()
  {
    return g;
  }
  
  public int c()
  {
    return f;
  }
  
  public Drawable d()
  {
    if (j > 0.0F) {
      b.setState(IndicatorView.a());
    }
    for (;;)
    {
      return b;
      b.setState(IndicatorView.b());
    }
  }
  
  public boolean e()
  {
    return ((j > 0.0F) || (k)) && (!IndicatorView.a(a));
  }
  
  public boolean f()
  {
    return (j > 0.0F) && (!IndicatorView.a(a));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.view.bn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
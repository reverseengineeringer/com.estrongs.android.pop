package com.estrongs.android.ui.view;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.NinePatchDrawable;
import android.text.Layout;
import com.estrongs.android.ui.d.a;
import com.estrongs.android.ui.d.d;

class be
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
  
  public be(IndicatorView paramIndicatorView, d paramd)
  {
    f = a.a(paramIndicatorView.getContext(), 1.0F);
    g = a.a(paramIndicatorView.getContext(), 2.0F);
    a(paramd);
  }
  
  private Drawable a(int paramInt)
  {
    int m = 2130837760;
    switch (paramInt)
    {
    case 16: 
    case 17: 
    case 18: 
    case 19: 
    default: 
      m = 2130837761;
    }
    for (;;)
    {
      return a.getContext().getResources().getDrawable(m);
      m = 2130837750;
      continue;
      m = 2130837765;
      continue;
      m = 2130837755;
      continue;
      m = 2130837759;
      continue;
      m = 2130837745;
      continue;
      m = 2130837748;
      continue;
      m = 2130837752;
      continue;
      m = 2130837756;
      continue;
      m = 2130837757;
      continue;
      m = 2130837762;
      continue;
      m = 2130837749;
      continue;
      m = 2130837751;
      continue;
      m = 2130837746;
      continue;
      m = 2130837747;
      continue;
      m = 2130837763;
      continue;
      m = 2130837764;
      continue;
      m = 2130837754;
      continue;
      m = 2130837767;
      continue;
      m = 2130837758;
      continue;
      m = 2130837766;
    }
  }
  
  private String b(int paramInt)
  {
    switch (paramInt)
    {
    case 0: 
    case 1: 
    case 16: 
    case 17: 
    case 18: 
    case 19: 
    default: 
      return a.getContext().getString(2131427414);
    case -1: 
      return a.getContext().getString(2131427361);
    case 4: 
      return a.getContext().getString(2131427413);
    case 3: 
      return a.getContext().getString(2131427411);
    case 2: 
      return a.getContext().getString(2131427410);
    case 5: 
      return a.getContext().getString(2131427412);
    case 11: 
      return a.getContext().getString(2131427423);
    case 9: 
      return a.getContext().getString(2131427424);
    case 10: 
      return a.getContext().getString(2131428223);
    case 8: 
      return a.getContext().getString(2131427425);
    case 7: 
      return a.getContext().getString(2131427422);
    case 6: 
      return a.getContext().getString(2131427421);
    case 12: 
      return a.getContext().getString(2131428551);
    case 13: 
      return a.getContext().getString(2131427638);
    case 14: 
      return a.getContext().getString(2131428114);
    case 15: 
      return a.getContext().getString(2131427712);
    case 20: 
      return a.getContext().getString(2131428318);
    case 21: 
      return a.getContext().getString(2131428319);
    case 22: 
      return a.getContext().getString(2131428368);
    case 23: 
      return a.getContext().getString(2131427606);
    case 24: 
      return a.getContext().getString(2131428402);
    case 25: 
      return a.getContext().getString(2131428432);
    case 26: 
      return a.getContext().getString(2131428700);
    case 27: 
      return a.getContext().getString(2131428505);
    case 28: 
      return a.getContext().getString(2131428716);
    }
    return a.getContext().getString(2131428722);
  }
  
  private NinePatchDrawable g()
  {
    if (i == null)
    {
      i = ((NinePatchDrawable)a.getResources().getDrawable(2130837814));
      i.mutate();
    }
    return i;
  }
  
  public int a()
  {
    return (int)(h + (f + e) * j + 0.5F);
  }
  
  public void a(float paramFloat)
  {
    j = paramFloat;
  }
  
  public void a(d paramd)
  {
    b = a(paramd.a());
    c = b(paramd.a());
    d = a.getContext().getResources().getDimensionPixelSize(2131296264);
    e = ((int)(Layout.getDesiredWidth(c, IndicatorView.a(a)) + f + 0.5F));
    h = (g + d + g);
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
      b.setState(IndicatorView.b());
    }
    for (;;)
    {
      return b;
      b.setState(IndicatorView.c());
    }
  }
  
  public boolean e()
  {
    return (j > 0.0F) || (k);
  }
  
  public boolean f()
  {
    return j > 0.0F;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.view.be
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
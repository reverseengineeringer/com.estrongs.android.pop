package com.estrongs.android.ui.fastscroller.vertical;

import android.content.Context;
import android.content.res.Resources;
import android.support.v4.view.cn;
import android.util.AttributeSet;
import android.view.View;
import com.estrongs.android.ui.fastscroller.AbsRecyclerViewFastScroller;
import com.estrongs.android.ui.fastscroller.a.b.b;
import com.estrongs.android.ui.fastscroller.a.b.c;
import com.estrongs.android.ui.theme.at;

public class VerticalRecyclerViewFastScroller
  extends AbsRecyclerViewFastScroller
{
  private com.estrongs.android.ui.fastscroller.a.b.d f;
  private com.estrongs.android.ui.fastscroller.a.a.a g;
  
  public VerticalRecyclerViewFastScroller(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public VerticalRecyclerViewFastScroller(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public VerticalRecyclerViewFastScroller(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  protected void a()
  {
    com.estrongs.android.ui.fastscroller.a.a locala = new com.estrongs.android.ui.fastscroller.a.a(cn.v(a), cn.v(a) + a.getHeight() - b.getHeight() / 2);
    f = new c(locala);
    g = new com.estrongs.android.ui.fastscroller.a.a.a(locala);
  }
  
  public void a(float paramFloat)
  {
    int j = 0;
    if (g == null) {
      return;
    }
    if ((paramFloat != 0.0F) && (getVisibility() != 0))
    {
      setVisibility(0);
      if (d != null) {
        d.a(0);
      }
    }
    float f1 = g.a(paramFloat) - b.getHeight() / 2;
    int i = j;
    if (at.a(getContext()).o())
    {
      i = j;
      if (e) {
        i = getResources().getDimensionPixelSize(2131165464);
      }
    }
    paramFloat = f1;
    if (f1 <= i) {
      paramFloat = i;
    }
    cn.d(b, paramFloat);
  }
  
  public void b(float paramFloat1, float paramFloat2)
  {
    com.estrongs.android.ui.fastscroller.a.a locala = new com.estrongs.android.ui.fastscroller.a.a(paramFloat1, paramFloat2);
    f = new c(locala);
    g = new com.estrongs.android.ui.fastscroller.a.a.a(locala);
  }
  
  protected int getLayoutResourceId()
  {
    return 2130903455;
  }
  
  protected b getScrollProgressCalculator()
  {
    return f;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.fastscroller.vertical.VerticalRecyclerViewFastScroller
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.estrongs.android.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.support.design.widget.AppBarLayout;
import android.support.design.widget.AppBarLayout.Behavior;
import android.support.design.widget.CoordinatorLayout;
import android.support.design.widget.g;
import android.support.design.widget.v;
import android.util.AttributeSet;
import java.lang.ref.WeakReference;

public class ControllableAppBarLayout
  extends AppBarLayout
  implements g
{
  private AppBarLayout.Behavior b;
  private WeakReference<CoordinatorLayout> c;
  private ControllableAppBarLayout.ToolbarChange d = ControllableAppBarLayout.ToolbarChange.NONE;
  private boolean e = false;
  private ControllableAppBarLayout.State f;
  private d g;
  
  public ControllableAppBarLayout(Context paramContext)
  {
    super(paramContext);
  }
  
  public ControllableAppBarLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  private void c()
  {
    for (;;)
    {
      try
      {
        switch (c.a[d.ordinal()])
        {
        case 1: 
          d = ControllableAppBarLayout.ToolbarChange.NONE;
          return;
        }
      }
      finally {}
      d();
      continue;
      e();
      continue;
      f();
      continue;
      g();
    }
  }
  
  private void d()
  {
    if (c.get() != null) {
      b.a((CoordinatorLayout)c.get(), this, null, 0, getHeight(), new int[] { 0, 0 });
    }
  }
  
  private void e()
  {
    if (c.get() != null) {
      b.a((CoordinatorLayout)c.get(), this, null, 0.0F, getHeight(), true);
    }
  }
  
  private void f()
  {
    if (c.get() != null) {
      b.a(0);
    }
  }
  
  private void g()
  {
    if (c.get() != null) {
      b.a((CoordinatorLayout)c.get(), this, null, 0.0F, -getHeight() * 5, false);
    }
  }
  
  public void a(AppBarLayout paramAppBarLayout, int paramInt)
  {
    if (paramInt == 0)
    {
      if ((g != null) && (f != ControllableAppBarLayout.State.EXPANDED)) {
        g.a(ControllableAppBarLayout.State.EXPANDED);
      }
      f = ControllableAppBarLayout.State.EXPANDED;
      return;
    }
    if (Math.abs(paramInt) >= paramAppBarLayout.getTotalScrollRange())
    {
      if ((g != null) && (f != ControllableAppBarLayout.State.COLLAPSED)) {
        g.a(ControllableAppBarLayout.State.COLLAPSED);
      }
      f = ControllableAppBarLayout.State.COLLAPSED;
      return;
    }
    if ((g != null) && (f != ControllableAppBarLayout.State.IDLE)) {
      g.a(ControllableAppBarLayout.State.IDLE);
    }
    f = ControllableAppBarLayout.State.IDLE;
  }
  
  public void a(boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (ControllableAppBarLayout.ToolbarChange localToolbarChange = ControllableAppBarLayout.ToolbarChange.EXPAND_WITH_ANIMATION;; localToolbarChange = ControllableAppBarLayout.ToolbarChange.EXPAND)
    {
      d = localToolbarChange;
      requestLayout();
      return;
    }
  }
  
  public void b()
  {
    a(false);
  }
  
  public ControllableAppBarLayout.State getState()
  {
    return f;
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    if ((!(getLayoutParams() instanceof v)) || (!(getParent() instanceof CoordinatorLayout))) {
      throw new IllegalStateException("ControllableAppBarLayout must be a direct child of CoordinatorLayout.");
    }
    c = new WeakReference((CoordinatorLayout)getParent());
    a(this);
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    if (!e)
    {
      e = true;
      if (d != ControllableAppBarLayout.ToolbarChange.NONE) {
        c();
      }
    }
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    if ((paramInt3 - paramInt1 > 0) && (paramInt4 - paramInt2 > 0) && (e) && (d != ControllableAppBarLayout.ToolbarChange.NONE)) {
      c();
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    if (b == null) {
      b = ((AppBarLayout.Behavior)((v)getLayoutParams()).b());
    }
  }
  
  public void setOnStateChangeListener(d paramd)
  {
    g = paramd;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.widget.ControllableAppBarLayout
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
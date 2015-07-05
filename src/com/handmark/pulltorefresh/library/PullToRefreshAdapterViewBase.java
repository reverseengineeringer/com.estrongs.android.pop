package com.handmark.pulltorefresh.library;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.Adapter;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.LinearLayout.LayoutParams;
import com.handmark.pulltorefresh.library.a.a;
import com.handmark.pulltorefresh.library.a.c;

public abstract class PullToRefreshAdapterViewBase<T extends AbsListView>
  extends PullToRefreshBase<T>
  implements AbsListView.OnScrollListener
{
  private boolean b;
  private AbsListView.OnScrollListener c;
  private h d;
  private View e;
  private c f;
  private c g;
  private boolean h;
  private boolean i = true;
  
  public PullToRefreshAdapterViewBase(Context paramContext)
  {
    super(paramContext);
    ((AbsListView)a).setOnScrollListener(this);
  }
  
  public PullToRefreshAdapterViewBase(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    ((AbsListView)a).setOnScrollListener(this);
  }
  
  public PullToRefreshAdapterViewBase(Context paramContext, PullToRefreshBase.Mode paramMode)
  {
    super(paramContext, paramMode);
    ((AbsListView)a).setOnScrollListener(this);
  }
  
  public PullToRefreshAdapterViewBase(Context paramContext, PullToRefreshBase.Mode paramMode, PullToRefreshBase.AnimationStyle paramAnimationStyle)
  {
    super(paramContext, paramMode, paramAnimationStyle);
    ((AbsListView)a).setOnScrollListener(this);
  }
  
  private static FrameLayout.LayoutParams a(ViewGroup.LayoutParams paramLayoutParams)
  {
    FrameLayout.LayoutParams localLayoutParams = null;
    if (paramLayoutParams != null)
    {
      localLayoutParams = new FrameLayout.LayoutParams(paramLayoutParams);
      if ((paramLayoutParams instanceof LinearLayout.LayoutParams)) {
        gravity = gravity;
      }
    }
    else
    {
      return localLayoutParams;
    }
    gravity = 17;
    return localLayoutParams;
  }
  
  private void u()
  {
    Object localObject = i();
    FrameLayout localFrameLayout = s();
    if ((((PullToRefreshBase.Mode)localObject).showHeaderLoadingLayout()) && (f == null))
    {
      f = new c(getContext(), PullToRefreshBase.Mode.PULL_FROM_START);
      FrameLayout.LayoutParams localLayoutParams = new FrameLayout.LayoutParams(-2, -2);
      rightMargin = getResources().getDimensionPixelSize(2131296351);
      gravity = 53;
      localFrameLayout.addView(f, localLayoutParams);
    }
    do
    {
      while ((((PullToRefreshBase.Mode)localObject).showFooterLoadingLayout()) && (g == null))
      {
        g = new c(getContext(), PullToRefreshBase.Mode.PULL_FROM_END);
        localObject = new FrameLayout.LayoutParams(-2, -2);
        rightMargin = getResources().getDimensionPixelSize(2131296351);
        gravity = 85;
        localFrameLayout.addView(g, (ViewGroup.LayoutParams)localObject);
        return;
        if ((!((PullToRefreshBase.Mode)localObject).showHeaderLoadingLayout()) && (f != null))
        {
          localFrameLayout.removeView(f);
          f = null;
        }
      }
    } while ((((PullToRefreshBase.Mode)localObject).showFooterLoadingLayout()) || (g == null));
    localFrameLayout.removeView(g);
    g = null;
  }
  
  private boolean v()
  {
    return (h) && (k());
  }
  
  private boolean w()
  {
    Object localObject = ((AbsListView)a).getAdapter();
    if ((localObject == null) || (((Adapter)localObject).isEmpty())) {
      return true;
    }
    if (((AbsListView)a).getFirstVisiblePosition() <= 1)
    {
      localObject = ((AbsListView)a).getChildAt(0);
      if (localObject != null) {
        return ((View)localObject).getTop() >= ((AbsListView)a).getTop();
      }
    }
    return false;
  }
  
  private boolean x()
  {
    Object localObject = ((AbsListView)a).getAdapter();
    if ((localObject == null) || (((Adapter)localObject).isEmpty())) {
      return true;
    }
    int k = ((AbsListView)a).getCount();
    int j = ((AbsListView)a).getLastVisiblePosition();
    if (j >= k - 1 - 1)
    {
      k = ((AbsListView)a).getFirstVisiblePosition();
      localObject = ((AbsListView)a).getChildAt(j - k);
      if (localObject != null) {
        return ((View)localObject).getBottom() <= ((AbsListView)a).getBottom();
      }
    }
    return false;
  }
  
  private void y()
  {
    if (f != null)
    {
      s().removeView(f);
      f = null;
    }
    if (g != null)
    {
      s().removeView(g);
      g = null;
    }
  }
  
  private void z()
  {
    if (f != null)
    {
      if ((m()) || (!d())) {
        break label77;
      }
      if (!f.a()) {
        f.c();
      }
    }
    label77:
    do
    {
      for (;;)
      {
        if (g != null)
        {
          if ((m()) || (!e())) {
            break;
          }
          if (!g.a()) {
            g.c();
          }
        }
        return;
        if (f.a()) {
          f.b();
        }
      }
    } while (!g.a());
    g.b();
  }
  
  protected void a()
  {
    super.a();
    if (v()) {}
    switch (d.a[g().ordinal()])
    {
    default: 
      return;
    case 1: 
      g.e();
      return;
    }
    f.e();
  }
  
  protected void a(TypedArray paramTypedArray)
  {
    if (!l()) {}
    for (boolean bool = true;; bool = false)
    {
      h = paramTypedArray.getBoolean(5, bool);
      return;
    }
  }
  
  public final void a(View paramView)
  {
    FrameLayout localFrameLayout = s();
    if (paramView != null)
    {
      paramView.setClickable(true);
      Object localObject = paramView.getParent();
      if ((localObject != null) && ((localObject instanceof ViewGroup))) {
        ((ViewGroup)localObject).removeView(paramView);
      }
      localObject = a(paramView.getLayoutParams());
      if (localObject != null) {
        localFrameLayout.addView(paramView, (ViewGroup.LayoutParams)localObject);
      }
    }
    else
    {
      if (!(a instanceof a)) {
        break label93;
      }
      ((a)a).a(paramView);
    }
    for (;;)
    {
      e = paramView;
      return;
      localFrameLayout.addView(paramView);
      break;
      label93:
      ((AbsListView)a).setEmptyView(paramView);
    }
  }
  
  public void a(boolean paramBoolean)
  {
    h = paramBoolean;
    if (v())
    {
      u();
      return;
    }
    y();
  }
  
  protected void b()
  {
    super.b();
    if (v()) {}
    switch (d.a[g().ordinal()])
    {
    default: 
      return;
    case 1: 
      g.d();
      return;
    }
    f.d();
  }
  
  protected void b(boolean paramBoolean)
  {
    super.b(paramBoolean);
    if (v()) {
      z();
    }
  }
  
  protected void c()
  {
    super.c();
    if (v()) {
      z();
    }
  }
  
  protected boolean d()
  {
    return w();
  }
  
  protected boolean e()
  {
    return x();
  }
  
  protected void f()
  {
    super.f();
    if (v())
    {
      u();
      return;
    }
    y();
  }
  
  public final void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3)
  {
    if (d != null) {
      if ((paramInt3 <= 0) || (paramInt1 + paramInt2 < paramInt3 - 1)) {
        break label64;
      }
    }
    label64:
    for (boolean bool = true;; bool = false)
    {
      b = bool;
      if (v()) {
        z();
      }
      if (c != null) {
        c.onScroll(paramAbsListView, paramInt1, paramInt2, paramInt3);
      }
      return;
    }
  }
  
  protected void onScrollChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onScrollChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    if ((e != null) && (!i)) {
      e.scrollTo(-paramInt1, -paramInt2);
    }
  }
  
  public final void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
  {
    if ((paramInt == 0) && (d != null) && (b)) {
      d.a();
    }
    if (c != null) {
      c.onScrollStateChanged(paramAbsListView, paramInt);
    }
  }
}

/* Location:
 * Qualified Name:     com.handmark.pulltorefresh.library.PullToRefreshAdapterViewBase
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package android.support.v4.widget;

import android.graphics.Rect;
import android.support.v4.view.a;
import android.support.v4.view.a.g;
import android.support.v4.view.cn;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;

class bv
  extends a
{
  private final Rect b = new Rect();
  
  bv(SlidingPaneLayout paramSlidingPaneLayout) {}
  
  private void a(g paramg1, g paramg2)
  {
    Rect localRect = b;
    paramg2.a(localRect);
    paramg1.b(localRect);
    paramg2.c(localRect);
    paramg1.d(localRect);
    paramg1.c(paramg2.h());
    paramg1.a(paramg2.p());
    paramg1.b(paramg2.q());
    paramg1.d(paramg2.s());
    paramg1.h(paramg2.m());
    paramg1.f(paramg2.k());
    paramg1.a(paramg2.f());
    paramg1.b(paramg2.g());
    paramg1.d(paramg2.i());
    paramg1.e(paramg2.j());
    paramg1.g(paramg2.l());
    paramg1.a(paramg2.b());
    paramg1.b(paramg2.c());
  }
  
  public boolean a(View paramView)
  {
    return a.e(paramView);
  }
  
  public void onInitializeAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    super.onInitializeAccessibilityEvent(paramView, paramAccessibilityEvent);
    paramAccessibilityEvent.setClassName(SlidingPaneLayout.class.getName());
  }
  
  public void onInitializeAccessibilityNodeInfo(View paramView, g paramg)
  {
    g localg = g.a(paramg);
    super.onInitializeAccessibilityNodeInfo(paramView, localg);
    a(paramg, localg);
    localg.t();
    paramg.b(SlidingPaneLayout.class.getName());
    paramg.a(paramView);
    paramView = cn.i(paramView);
    if ((paramView instanceof View)) {
      paramg.c((View)paramView);
    }
    int j = a.getChildCount();
    int i = 0;
    while (i < j)
    {
      paramView = a.getChildAt(i);
      if ((!a(paramView)) && (paramView.getVisibility() == 0))
      {
        cn.c(paramView, 1);
        paramg.b(paramView);
      }
      i += 1;
    }
  }
  
  public boolean onRequestSendAccessibilityEvent(ViewGroup paramViewGroup, View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    if (!a(paramView)) {
      return super.onRequestSendAccessibilityEvent(paramViewGroup, paramView, paramAccessibilityEvent);
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.bv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
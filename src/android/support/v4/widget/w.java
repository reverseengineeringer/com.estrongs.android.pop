package android.support.v4.widget;

import android.graphics.Rect;
import android.support.v4.view.a;
import android.support.v4.view.a.g;
import android.support.v4.view.a.h;
import android.support.v4.view.cn;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import java.util.List;

class w
  extends a
{
  private final Rect b = new Rect();
  
  w(DrawerLayout paramDrawerLayout) {}
  
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
  }
  
  private void a(g paramg, ViewGroup paramViewGroup)
  {
    int j = paramViewGroup.getChildCount();
    int i = 0;
    while (i < j)
    {
      View localView = paramViewGroup.getChildAt(i);
      if (DrawerLayout.l(localView)) {
        paramg.b(localView);
      }
      i += 1;
    }
  }
  
  public boolean dispatchPopulateAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    if (paramAccessibilityEvent.getEventType() == 32)
    {
      paramView = paramAccessibilityEvent.getText();
      paramAccessibilityEvent = DrawerLayout.a(a);
      if (paramAccessibilityEvent != null)
      {
        int i = a.e(paramAccessibilityEvent);
        paramAccessibilityEvent = a.b(i);
        if (paramAccessibilityEvent != null) {
          paramView.add(paramAccessibilityEvent);
        }
      }
      return true;
    }
    return super.dispatchPopulateAccessibilityEvent(paramView, paramAccessibilityEvent);
  }
  
  public void onInitializeAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    super.onInitializeAccessibilityEvent(paramView, paramAccessibilityEvent);
    paramAccessibilityEvent.setClassName(DrawerLayout.class.getName());
  }
  
  public void onInitializeAccessibilityNodeInfo(View paramView, g paramg)
  {
    if (DrawerLayout.e()) {
      super.onInitializeAccessibilityNodeInfo(paramView, paramg);
    }
    for (;;)
    {
      paramg.b(DrawerLayout.class.getName());
      paramg.a(false);
      paramg.b(false);
      paramg.a(h.a);
      paramg.a(h.b);
      return;
      g localg = g.a(paramg);
      super.onInitializeAccessibilityNodeInfo(paramView, localg);
      paramg.a(paramView);
      ViewParent localViewParent = cn.i(paramView);
      if ((localViewParent instanceof View)) {
        paramg.c((View)localViewParent);
      }
      a(paramg, localg);
      localg.t();
      a(paramg, (ViewGroup)paramView);
    }
  }
  
  public boolean onRequestSendAccessibilityEvent(ViewGroup paramViewGroup, View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    if ((DrawerLayout.e()) || (DrawerLayout.l(paramView))) {
      return super.onRequestSendAccessibilityEvent(paramViewGroup, paramView, paramAccessibilityEvent);
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.w
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
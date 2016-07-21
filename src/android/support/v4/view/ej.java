package android.support.v4.view;

import android.os.Bundle;
import android.support.v4.view.a.am;
import android.support.v4.view.a.g;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;

class ej
  extends a
{
  ej(ViewPager paramViewPager) {}
  
  private boolean a()
  {
    return (ViewPager.access$200(a) != null) && (ViewPager.access$200(a).getCount() > 1);
  }
  
  public void onInitializeAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    super.onInitializeAccessibilityEvent(paramView, paramAccessibilityEvent);
    paramAccessibilityEvent.setClassName(ViewPager.class.getName());
    paramView = android.support.v4.view.a.a.a(paramAccessibilityEvent);
    paramView.a(a());
    if ((paramAccessibilityEvent.getEventType() == 4096) && (ViewPager.access$200(a) != null))
    {
      paramView.a(ViewPager.access$200(a).getCount());
      paramView.b(ViewPager.access$300(a));
      paramView.c(ViewPager.access$300(a));
    }
  }
  
  public void onInitializeAccessibilityNodeInfo(View paramView, g paramg)
  {
    super.onInitializeAccessibilityNodeInfo(paramView, paramg);
    paramg.b(ViewPager.class.getName());
    paramg.i(a());
    if (a.canScrollHorizontally(1)) {
      paramg.a(4096);
    }
    if (a.canScrollHorizontally(-1)) {
      paramg.a(8192);
    }
  }
  
  public boolean performAccessibilityAction(View paramView, int paramInt, Bundle paramBundle)
  {
    if (super.performAccessibilityAction(paramView, paramInt, paramBundle)) {
      return true;
    }
    switch (paramInt)
    {
    default: 
      return false;
    case 4096: 
      if (a.canScrollHorizontally(1))
      {
        a.setCurrentItem(ViewPager.access$300(a) + 1);
        return true;
      }
      return false;
    }
    if (a.canScrollHorizontally(-1))
    {
      a.setCurrentItem(ViewPager.access$300(a) - 1);
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.ej
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
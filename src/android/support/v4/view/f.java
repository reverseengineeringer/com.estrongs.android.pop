package android.support.v4.view;

import android.os.Bundle;
import android.support.v4.view.a.g;
import android.support.v4.view.a.z;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;

class f
  implements m
{
  f(e parame, a parama) {}
  
  public Object a(View paramView)
  {
    paramView = a.getAccessibilityNodeProvider(paramView);
    if (paramView != null) {
      return paramView.a();
    }
    return null;
  }
  
  public void a(View paramView, int paramInt)
  {
    a.sendAccessibilityEvent(paramView, paramInt);
  }
  
  public void a(View paramView, Object paramObject)
  {
    a.onInitializeAccessibilityNodeInfo(paramView, new g(paramObject));
  }
  
  public boolean a(View paramView, int paramInt, Bundle paramBundle)
  {
    return a.performAccessibilityAction(paramView, paramInt, paramBundle);
  }
  
  public boolean a(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    return a.dispatchPopulateAccessibilityEvent(paramView, paramAccessibilityEvent);
  }
  
  public boolean a(ViewGroup paramViewGroup, View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    return a.onRequestSendAccessibilityEvent(paramViewGroup, paramView, paramAccessibilityEvent);
  }
  
  public void b(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    a.onInitializeAccessibilityEvent(paramView, paramAccessibilityEvent);
  }
  
  public void c(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    a.onPopulateAccessibilityEvent(paramView, paramAccessibilityEvent);
  }
  
  public void d(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    a.sendAccessibilityEventUnchecked(paramView, paramAccessibilityEvent);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
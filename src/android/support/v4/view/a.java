package android.support.v4.view;

import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.v4.view.a.z;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;

public class a
{
  private static final Object DEFAULT_DELEGATE;
  private static final d IMPL;
  final Object mBridge = IMPL.a(this);
  
  static
  {
    if (Build.VERSION.SDK_INT >= 16) {
      IMPL = new e();
    }
    for (;;)
    {
      DEFAULT_DELEGATE = IMPL.a();
      return;
      if (Build.VERSION.SDK_INT >= 14) {
        IMPL = new b();
      } else {
        IMPL = new g();
      }
    }
  }
  
  public boolean dispatchPopulateAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    return IMPL.a(DEFAULT_DELEGATE, paramView, paramAccessibilityEvent);
  }
  
  public z getAccessibilityNodeProvider(View paramView)
  {
    return IMPL.a(DEFAULT_DELEGATE, paramView);
  }
  
  Object getBridge()
  {
    return mBridge;
  }
  
  public void onInitializeAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    IMPL.b(DEFAULT_DELEGATE, paramView, paramAccessibilityEvent);
  }
  
  public void onInitializeAccessibilityNodeInfo(View paramView, android.support.v4.view.a.g paramg)
  {
    IMPL.a(DEFAULT_DELEGATE, paramView, paramg);
  }
  
  public void onPopulateAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    IMPL.c(DEFAULT_DELEGATE, paramView, paramAccessibilityEvent);
  }
  
  public boolean onRequestSendAccessibilityEvent(ViewGroup paramViewGroup, View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    return IMPL.a(DEFAULT_DELEGATE, paramViewGroup, paramView, paramAccessibilityEvent);
  }
  
  public boolean performAccessibilityAction(View paramView, int paramInt, Bundle paramBundle)
  {
    return IMPL.a(DEFAULT_DELEGATE, paramView, paramInt, paramBundle);
  }
  
  public void sendAccessibilityEvent(View paramView, int paramInt)
  {
    IMPL.a(DEFAULT_DELEGATE, paramView, paramInt);
  }
  
  public void sendAccessibilityEventUnchecked(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    IMPL.d(DEFAULT_DELEGATE, paramView, paramAccessibilityEvent);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
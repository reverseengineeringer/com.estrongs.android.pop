package android.support.v4.view;

import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;

public abstract interface j
{
  public abstract void a(View paramView, int paramInt);
  
  public abstract void a(View paramView, Object paramObject);
  
  public abstract boolean a(View paramView, AccessibilityEvent paramAccessibilityEvent);
  
  public abstract boolean a(ViewGroup paramViewGroup, View paramView, AccessibilityEvent paramAccessibilityEvent);
  
  public abstract void b(View paramView, AccessibilityEvent paramAccessibilityEvent);
  
  public abstract void c(View paramView, AccessibilityEvent paramAccessibilityEvent);
  
  public abstract void d(View paramView, AccessibilityEvent paramAccessibilityEvent);
}

/* Location:
 * Qualified Name:     android.support.v4.view.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
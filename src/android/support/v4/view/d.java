package android.support.v4.view;

import android.os.Bundle;
import android.support.v4.view.a.g;
import android.support.v4.view.a.z;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;

abstract interface d
{
  public abstract z a(Object paramObject, View paramView);
  
  public abstract Object a();
  
  public abstract Object a(a parama);
  
  public abstract void a(Object paramObject, View paramView, int paramInt);
  
  public abstract void a(Object paramObject, View paramView, g paramg);
  
  public abstract boolean a(Object paramObject, View paramView, int paramInt, Bundle paramBundle);
  
  public abstract boolean a(Object paramObject, View paramView, AccessibilityEvent paramAccessibilityEvent);
  
  public abstract boolean a(Object paramObject, ViewGroup paramViewGroup, View paramView, AccessibilityEvent paramAccessibilityEvent);
  
  public abstract void b(Object paramObject, View paramView, AccessibilityEvent paramAccessibilityEvent);
  
  public abstract void c(Object paramObject, View paramView, AccessibilityEvent paramAccessibilityEvent);
  
  public abstract void d(Object paramObject, View paramView, AccessibilityEvent paramAccessibilityEvent);
}

/* Location:
 * Qualified Name:     android.support.v4.view.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
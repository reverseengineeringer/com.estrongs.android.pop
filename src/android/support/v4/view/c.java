package android.support.v4.view;

import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;

class c
  implements j
{
  c(b paramb, a parama) {}
  
  public void a(View paramView, int paramInt)
  {
    a.a(paramView, paramInt);
  }
  
  public void a(View paramView, Object paramObject)
  {
    a.a(paramView, new android.support.v4.view.a.a(paramObject));
  }
  
  public boolean a(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    return a.b(paramView, paramAccessibilityEvent);
  }
  
  public boolean a(ViewGroup paramViewGroup, View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    return a.a(paramViewGroup, paramView, paramAccessibilityEvent);
  }
  
  public void b(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    a.d(paramView, paramAccessibilityEvent);
  }
  
  public void c(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    a.c(paramView, paramAccessibilityEvent);
  }
  
  public void d(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    a.a(paramView, paramAccessibilityEvent);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
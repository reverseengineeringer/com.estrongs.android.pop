package android.support.v4.view.a;

import android.view.accessibility.AccessibilityNodeInfo;

class g
{
  public static void a(Object paramObject, boolean paramBoolean)
  {
    ((AccessibilityNodeInfo)paramObject).setVisibleToUser(paramBoolean);
  }
  
  public static boolean a(Object paramObject)
  {
    return ((AccessibilityNodeInfo)paramObject).isVisibleToUser();
  }
  
  public static void b(Object paramObject, boolean paramBoolean)
  {
    ((AccessibilityNodeInfo)paramObject).setAccessibilityFocused(paramBoolean);
  }
  
  public static boolean b(Object paramObject)
  {
    return ((AccessibilityNodeInfo)paramObject).isAccessibilityFocused();
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.a.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
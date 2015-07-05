package android.support.v4.view;

import android.os.Bundle;
import android.view.View;
import android.view.View.AccessibilityDelegate;

class k
{
  public static Object a(m paramm)
  {
    return new l(paramm);
  }
  
  public static Object a(Object paramObject, View paramView)
  {
    return ((View.AccessibilityDelegate)paramObject).getAccessibilityNodeProvider(paramView);
  }
  
  public static boolean a(Object paramObject, View paramView, int paramInt, Bundle paramBundle)
  {
    return ((View.AccessibilityDelegate)paramObject).performAccessibilityAction(paramView, paramInt, paramBundle);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
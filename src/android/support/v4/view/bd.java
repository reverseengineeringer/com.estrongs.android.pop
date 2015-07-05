package android.support.v4.view;

import android.view.View;
import android.view.View.AccessibilityDelegate;

class bd
{
  public static void a(View paramView, Object paramObject)
  {
    paramView.setAccessibilityDelegate((View.AccessibilityDelegate)paramObject);
  }
  
  public static boolean a(View paramView, int paramInt)
  {
    return paramView.canScrollHorizontally(paramInt);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.bd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
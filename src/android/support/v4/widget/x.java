package android.support.v4.widget;

import android.support.v4.view.a;
import android.support.v4.view.a.g;
import android.view.View;

final class x
  extends a
{
  x(DrawerLayout paramDrawerLayout) {}
  
  public void onInitializeAccessibilityNodeInfo(View paramView, g paramg)
  {
    super.onInitializeAccessibilityNodeInfo(paramView, paramg);
    if (!DrawerLayout.l(paramView)) {
      paramg.c(null);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.x
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
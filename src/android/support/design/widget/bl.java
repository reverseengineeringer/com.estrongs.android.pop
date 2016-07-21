package android.support.design.widget;

import android.support.v4.view.fp;
import android.view.View;
import android.view.accessibility.AccessibilityManager;

class bl
  extends fp
{
  boolean a = false;
  
  bl(Snackbar paramSnackbar, int paramInt) {}
  
  public void onAnimationEnd(View paramView)
  {
    Snackbar.b(c, b);
  }
  
  public void onAnimationStart(View paramView)
  {
    if (!Snackbar.d(c).isEnabled()) {
      Snackbar.c(c).b(0, 180);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.bl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
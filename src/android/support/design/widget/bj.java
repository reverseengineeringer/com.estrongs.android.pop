package android.support.design.widget;

import android.support.v4.view.fp;
import android.view.View;
import android.view.accessibility.AccessibilityManager;

class bj
  extends fp
{
  bj(Snackbar paramSnackbar) {}
  
  public void onAnimationEnd(View paramView)
  {
    Snackbar.e(a);
  }
  
  public void onAnimationStart(View paramView)
  {
    if (!Snackbar.d(a).isEnabled()) {
      Snackbar.c(a).a(70, 180);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.bj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
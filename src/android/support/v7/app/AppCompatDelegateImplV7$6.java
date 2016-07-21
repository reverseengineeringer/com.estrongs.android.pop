package android.support.v7.app;

import android.support.v4.view.cn;
import android.support.v4.view.ex;
import android.support.v4.view.fp;
import android.support.v7.widget.ActionBarContextView;
import android.view.View;

class AppCompatDelegateImplV7$6
  extends fp
{
  AppCompatDelegateImplV7$6(AppCompatDelegateImplV7 paramAppCompatDelegateImplV7) {}
  
  public void onAnimationEnd(View paramView)
  {
    cn.c(this$0.mActionModeView, 1.0F);
    this$0.mFadeAnim.a(null);
    this$0.mFadeAnim = null;
  }
  
  public void onAnimationStart(View paramView)
  {
    this$0.mActionModeView.setVisibility(0);
    this$0.mActionModeView.sendAccessibilityEvent(32);
    if (this$0.mActionModeView.getParent() != null) {
      cn.y((View)this$0.mActionModeView.getParent());
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.app.AppCompatDelegateImplV7.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
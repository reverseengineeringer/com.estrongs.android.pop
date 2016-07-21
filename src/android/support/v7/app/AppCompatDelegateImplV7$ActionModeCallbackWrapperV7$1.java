package android.support.v7.app;

import android.support.v4.view.cn;
import android.support.v4.view.ex;
import android.support.v4.view.fp;
import android.support.v7.widget.ActionBarContextView;
import android.view.View;
import android.widget.PopupWindow;

class AppCompatDelegateImplV7$ActionModeCallbackWrapperV7$1
  extends fp
{
  AppCompatDelegateImplV7$ActionModeCallbackWrapperV7$1(AppCompatDelegateImplV7.ActionModeCallbackWrapperV7 paramActionModeCallbackWrapperV7) {}
  
  public void onAnimationEnd(View paramView)
  {
    this$1.this$0.mActionModeView.setVisibility(8);
    if (this$1.this$0.mActionModePopup != null) {
      this$1.this$0.mActionModePopup.dismiss();
    }
    for (;;)
    {
      this$1.this$0.mActionModeView.removeAllViews();
      this$1.this$0.mFadeAnim.a(null);
      this$1.this$0.mFadeAnim = null;
      return;
      if ((this$1.this$0.mActionModeView.getParent() instanceof View)) {
        cn.y((View)this$1.this$0.mActionModeView.getParent());
      }
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.app.AppCompatDelegateImplV7.ActionModeCallbackWrapperV7.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
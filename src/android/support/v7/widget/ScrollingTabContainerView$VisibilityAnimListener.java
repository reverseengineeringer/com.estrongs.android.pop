package android.support.v7.widget;

import android.support.v4.view.ex;
import android.support.v4.view.fo;
import android.view.View;

public class ScrollingTabContainerView$VisibilityAnimListener
  implements fo
{
  private boolean mCanceled = false;
  private int mFinalVisibility;
  
  protected ScrollingTabContainerView$VisibilityAnimListener(ScrollingTabContainerView paramScrollingTabContainerView) {}
  
  public void onAnimationCancel(View paramView)
  {
    mCanceled = true;
  }
  
  public void onAnimationEnd(View paramView)
  {
    if (mCanceled) {
      return;
    }
    this$0.mVisibilityAnim = null;
    this$0.setVisibility(mFinalVisibility);
  }
  
  public void onAnimationStart(View paramView)
  {
    this$0.setVisibility(0);
    mCanceled = false;
  }
  
  public VisibilityAnimListener withFinalVisibility(ex paramex, int paramInt)
  {
    mFinalVisibility = paramInt;
    this$0.mVisibilityAnim = paramex;
    return this;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.ScrollingTabContainerView.VisibilityAnimListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
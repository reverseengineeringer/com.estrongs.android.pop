package android.support.v7.widget;

import android.support.v4.view.fp;
import android.view.View;

class ToolbarWidgetWrapper$2
  extends fp
{
  private boolean mCanceled = false;
  
  ToolbarWidgetWrapper$2(ToolbarWidgetWrapper paramToolbarWidgetWrapper, int paramInt) {}
  
  public void onAnimationCancel(View paramView)
  {
    mCanceled = true;
  }
  
  public void onAnimationEnd(View paramView)
  {
    if (!mCanceled) {
      ToolbarWidgetWrapper.access$000(this$0).setVisibility(val$visibility);
    }
  }
  
  public void onAnimationStart(View paramView)
  {
    ToolbarWidgetWrapper.access$000(this$0).setVisibility(0);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.ToolbarWidgetWrapper.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
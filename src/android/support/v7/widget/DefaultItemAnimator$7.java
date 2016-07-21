package android.support.v7.widget;

import android.support.v4.view.cn;
import android.support.v4.view.ex;
import android.view.View;
import java.util.ArrayList;

class DefaultItemAnimator$7
  extends DefaultItemAnimator.VpaListenerAdapter
{
  DefaultItemAnimator$7(DefaultItemAnimator paramDefaultItemAnimator, DefaultItemAnimator.ChangeInfo paramChangeInfo, ex paramex)
  {
    super(null);
  }
  
  public void onAnimationEnd(View paramView)
  {
    val$oldViewAnim.a(null);
    cn.c(paramView, 1.0F);
    cn.a(paramView, 0.0F);
    cn.b(paramView, 0.0F);
    this$0.dispatchChangeFinished(val$changeInfo.oldHolder, true);
    DefaultItemAnimator.access$1300(this$0).remove(val$changeInfo.oldHolder);
    DefaultItemAnimator.access$800(this$0);
  }
  
  public void onAnimationStart(View paramView)
  {
    this$0.dispatchChangeStarting(val$changeInfo.oldHolder, true);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.DefaultItemAnimator.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
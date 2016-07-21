package android.support.v7.widget;

import android.support.v4.view.cn;
import android.support.v4.view.ex;
import android.view.View;
import java.util.ArrayList;

class DefaultItemAnimator$8
  extends DefaultItemAnimator.VpaListenerAdapter
{
  DefaultItemAnimator$8(DefaultItemAnimator paramDefaultItemAnimator, DefaultItemAnimator.ChangeInfo paramChangeInfo, ex paramex, View paramView)
  {
    super(null);
  }
  
  public void onAnimationEnd(View paramView)
  {
    val$newViewAnimation.a(null);
    cn.c(val$newView, 1.0F);
    cn.a(val$newView, 0.0F);
    cn.b(val$newView, 0.0F);
    this$0.dispatchChangeFinished(val$changeInfo.newHolder, false);
    DefaultItemAnimator.access$1300(this$0).remove(val$changeInfo.newHolder);
    DefaultItemAnimator.access$800(this$0);
  }
  
  public void onAnimationStart(View paramView)
  {
    this$0.dispatchChangeStarting(val$changeInfo.newHolder, false);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.DefaultItemAnimator.8
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
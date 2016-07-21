package android.support.v7.widget;

import android.support.v4.view.cn;
import android.support.v4.view.ex;
import android.view.View;
import java.util.ArrayList;

class DefaultItemAnimator$4
  extends DefaultItemAnimator.VpaListenerAdapter
{
  DefaultItemAnimator$4(DefaultItemAnimator paramDefaultItemAnimator, RecyclerView.ViewHolder paramViewHolder, ex paramex)
  {
    super(null);
  }
  
  public void onAnimationEnd(View paramView)
  {
    val$animation.a(null);
    cn.c(paramView, 1.0F);
    this$0.dispatchRemoveFinished(val$holder);
    DefaultItemAnimator.access$700(this$0).remove(val$holder);
    DefaultItemAnimator.access$800(this$0);
  }
  
  public void onAnimationStart(View paramView)
  {
    this$0.dispatchRemoveStarting(val$holder);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.DefaultItemAnimator.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
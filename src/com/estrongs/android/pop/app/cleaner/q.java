package com.estrongs.android.pop.app.cleaner;

import android.support.v4.view.cn;
import android.support.v4.view.ex;
import android.support.v4.view.fo;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.view.View;
import java.util.ArrayList;

class q
  implements fo
{
  q(p paramp, RecyclerView.ViewHolder paramViewHolder, ex paramex) {}
  
  public void onAnimationCancel(View paramView)
  {
    cn.a(paramView, 0.0F);
    cn.b(paramView, 0.0F);
  }
  
  public void onAnimationEnd(View paramView)
  {
    b.a(null);
    c.dispatchAddFinished(a);
    p.a(c).remove(a);
    p.b(c);
  }
  
  public void onAnimationStart(View paramView)
  {
    c.dispatchAddStarting(a);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.cleaner.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
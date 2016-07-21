package com.estrongs.android.ui.recycler;

import android.support.v4.view.cn;
import android.support.v4.view.ex;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.view.View;
import java.util.ArrayList;

class t
  extends z
{
  t(n paramn, RecyclerView.ViewHolder paramViewHolder, ex paramex)
  {
    super(null);
  }
  
  public void onAnimationCancel(View paramView)
  {
    cn.a(paramView, 0.0F);
  }
  
  public void onAnimationEnd(View paramView)
  {
    b.a(null);
    c.dispatchAddFinished(a);
    c.a.remove(a);
    c.a();
  }
  
  public void onAnimationStart(View paramView)
  {
    c.dispatchAddStarting(a);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.recycler.t
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
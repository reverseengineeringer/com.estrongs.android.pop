package com.estrongs.android.ui.recycler;

import android.support.v4.view.cn;
import android.support.v4.view.ex;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.view.View;
import java.util.ArrayList;

class s
  extends z
{
  s(n paramn, RecyclerView.ViewHolder paramViewHolder, ex paramex)
  {
    super(null);
  }
  
  public void onAnimationEnd(View paramView)
  {
    b.a(null);
    cn.c(paramView, 1.0F);
    c.dispatchRemoveFinished(a);
    c.c.remove(a);
    c.a();
  }
  
  public void onAnimationStart(View paramView)
  {
    c.dispatchRemoveStarting(a);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.recycler.s
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
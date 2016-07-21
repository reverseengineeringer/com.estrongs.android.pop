package com.estrongs.android.ui.recycler;

import android.support.v4.view.cn;
import android.support.v4.view.ex;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.view.View;
import java.util.ArrayList;

class u
  extends z
{
  u(n paramn, RecyclerView.ViewHolder paramViewHolder, int paramInt1, int paramInt2, ex paramex)
  {
    super(null);
  }
  
  public void onAnimationCancel(View paramView)
  {
    if (b != 0) {
      cn.a(paramView, 0.0F);
    }
    if (c != 0) {
      cn.b(paramView, 0.0F);
    }
  }
  
  public void onAnimationEnd(View paramView)
  {
    d.a(null);
    e.dispatchMoveFinished(a);
    e.b.remove(a);
    e.a();
  }
  
  public void onAnimationStart(View paramView)
  {
    e.dispatchMoveStarting(a);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.recycler.u
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
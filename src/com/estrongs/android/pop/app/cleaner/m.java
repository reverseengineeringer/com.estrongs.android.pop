package com.estrongs.android.pop.app.cleaner;

import android.support.v4.view.cn;
import android.support.v4.view.ex;
import android.support.v4.view.fo;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.view.View;
import java.util.ArrayList;

class m
  implements fo
{
  m(i parami, ex paramex, RecyclerView.ViewHolder paramViewHolder) {}
  
  public void onAnimationCancel(View paramView)
  {
    cn.f(paramView, 0.0F);
    i.a(c, true);
  }
  
  public void onAnimationEnd(View paramView)
  {
    a.a(null);
    c.a.remove(b);
    if (c.a.isEmpty()) {
      i.a(c, true);
    }
    if (i.c(c) != null) {
      cn.a(paramView, i.c(c));
    }
  }
  
  public void onAnimationStart(View paramView) {}
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.cleaner.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
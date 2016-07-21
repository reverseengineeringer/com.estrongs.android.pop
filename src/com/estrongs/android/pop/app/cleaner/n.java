package com.estrongs.android.pop.app.cleaner;

import android.support.v4.view.cn;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import java.util.ArrayList;

class n
  implements Animation.AnimationListener
{
  n(i parami, RecyclerView.ViewHolder paramViewHolder, View paramView) {}
  
  public void onAnimationEnd(Animation paramAnimation)
  {
    i.a(c, true);
    c.a.remove(a);
    if (i.c(c) != null) {
      cn.a(b, i.c(c));
    }
  }
  
  public void onAnimationRepeat(Animation paramAnimation) {}
  
  public void onAnimationStart(Animation paramAnimation) {}
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.cleaner.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
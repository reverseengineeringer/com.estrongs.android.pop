package com.estrongs.android.pop.app.cleaner;

import android.support.v4.view.cn;
import android.support.v4.view.ex;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.TranslateAnimation;
import com.estrongs.android.pop.ac;

class ag
  implements Runnable
{
  ag(ab paramab, RecyclerView.ViewHolder paramViewHolder, View paramView) {}
  
  public void run()
  {
    if (ac.a() < 14)
    {
      localObject = new TranslateAnimation(2, 1.0F, 2, 0.0F, 2, 0.0F, 2, 0.0F);
      ((TranslateAnimation)localObject).setDuration(200L);
      ((TranslateAnimation)localObject).setAnimationListener(new ah(this));
      a.itemView.startAnimation((Animation)localObject);
      return;
    }
    Object localObject = cn.s(b);
    ((ex)localObject).b(0.0F).a(200L).a(new ai(this, (ex)localObject)).c();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.cleaner.ag
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.estrongs.android.pop.app.cleaner;

import android.app.Activity;
import android.content.res.Resources;
import android.support.v4.a.l;
import android.support.v4.view.cn;
import android.support.v4.view.ex;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import com.estrongs.android.widget.b;

final class t
  extends b
{
  t(View paramView1, Activity paramActivity, View paramView2, View paramView3, Runnable paramRunnable) {}
  
  public void onAnimationEnd(l paraml)
  {
    int i = a.getHeight() / 2;
    int j = b.getResources().getDimensionPixelSize(2131165262);
    int k = c.getHeight() / 2 + b.getResources().getDimensionPixelSize(2131165281);
    cn.b(a, i);
    cn.b(c, -j);
    cn.b(d, -k);
    cn.c(a, 1.0F);
    cn.s(a).g(-i).a(1000L).a(new DecelerateInterpolator(1.2F)).c();
    cn.s(c).g(j).a(1.0F).b(500L).a(1000L).c();
    cn.s(d).g(k).a(1.0F).b(500L).a(1000L).c();
    a.postDelayed(e, 1500L);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.cleaner.t
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
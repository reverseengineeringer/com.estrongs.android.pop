package com.estrongs.android.pop.app.cleaner;

import android.support.v4.view.cn;
import android.support.v4.view.ex;
import android.support.v4.view.fo;
import android.view.View;
import java.util.ArrayList;

class ai
  implements fo
{
  ai(ag paramag, ex paramex) {}
  
  public void onAnimationCancel(View paramView)
  {
    cn.a(paramView, 0.0F);
  }
  
  public void onAnimationEnd(View paramView)
  {
    a.a(null);
    ab.c(b.c).remove(b.a);
    if (ab.c(b.c).isEmpty()) {
      ab.a(b.c, true);
    }
  }
  
  public void onAnimationStart(View paramView) {}
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.cleaner.ai
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
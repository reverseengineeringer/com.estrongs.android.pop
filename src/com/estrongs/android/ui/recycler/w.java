package com.estrongs.android.ui.recycler;

import android.support.v4.view.cn;
import android.support.v4.view.ex;
import android.view.View;
import java.util.ArrayList;

class w
  extends z
{
  w(n paramn, x paramx, ex paramex, View paramView)
  {
    super(null);
  }
  
  public void onAnimationEnd(View paramView)
  {
    b.a(null);
    cn.c(c, 1.0F);
    cn.a(c, 0.0F);
    cn.b(c, 0.0F);
    d.dispatchChangeFinished(a.b, false);
    d.d.remove(a.b);
    d.a();
  }
  
  public void onAnimationStart(View paramView)
  {
    d.dispatchChangeStarting(a.b, false);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.recycler.w
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
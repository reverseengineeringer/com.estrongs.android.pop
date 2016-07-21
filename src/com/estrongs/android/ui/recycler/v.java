package com.estrongs.android.ui.recycler;

import android.support.v4.view.cn;
import android.support.v4.view.ex;
import android.view.View;
import java.util.ArrayList;

class v
  extends z
{
  v(n paramn, x paramx, ex paramex)
  {
    super(null);
  }
  
  public void onAnimationEnd(View paramView)
  {
    b.a(null);
    cn.c(paramView, 1.0F);
    cn.a(paramView, 0.0F);
    cn.b(paramView, 0.0F);
    c.dispatchChangeFinished(a.a, true);
    c.d.remove(a.a);
    c.a();
  }
  
  public void onAnimationStart(View paramView)
  {
    c.dispatchChangeStarting(a.a, true);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.recycler.v
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
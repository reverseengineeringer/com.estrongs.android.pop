package com.estrongs.android.ui.view;

import android.os.Handler;
import android.view.animation.Animation;
import java.util.Map;

class cl
  extends com.estrongs.android.widget.a
{
  private Handler c = new Handler();
  private Runnable d = new cm(this);
  
  cl(ck paramck, String paramString) {}
  
  private void a(String paramString)
  {
    try
    {
      if (ck.a(b) != null) {
        ck.a(b).b();
      }
      if (!paramString.equals(ck.c(b))) {
        ck.a(b, ((com.estrongs.android.ui.e.a)ck.d(b).get(ck.c(b))).a());
      }
    }
    catch (Exception paramString)
    {
      for (;;) {}
    }
    ck.a(b, false);
  }
  
  public void onAnimationEnd(Animation paramAnimation)
  {
    if (!ck.b(b)) {
      return;
    }
    a(a);
    try
    {
      c.removeCallbacks(d);
      return;
    }
    catch (Exception paramAnimation) {}
  }
  
  public void onAnimationStart(Animation paramAnimation)
  {
    ck.a(b, true);
    if (ck.a(b) != null) {
      ck.a(b).a();
    }
    try
    {
      c.postDelayed(d, 500L);
      return;
    }
    catch (Exception paramAnimation) {}
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.view.cl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
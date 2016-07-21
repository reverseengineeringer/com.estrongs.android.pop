package com.dianxinos.lockscreen.ui;

import android.graphics.Bitmap.Config;
import android.view.animation.AccelerateDecelerateInterpolator;
import com.dianxinos.lockscreen.c.l;
import com.nineoldandroids.a.ac;

class m
  implements Runnable
{
  m(RealTimeView paramRealTimeView) {}
  
  public void run()
  {
    RealTimeView.a(a);
    RealTimeView.a(a, l.a(RealTimeView.b(a), Bitmap.Config.ARGB_8888));
    RealTimeView.a(a, ac.b(new float[] { -RealTimeView.c(a), 0.0F }));
    RealTimeView.d(a).b(1000L);
    RealTimeView.d(a).a(new AccelerateDecelerateInterpolator());
    RealTimeView.d(a).a(new n(this));
    RealTimeView.d(a).a(new o(this));
    RealTimeView.d(a).a();
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.lockscreen.ui.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
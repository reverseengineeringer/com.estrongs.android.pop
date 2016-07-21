package com.estrongs.android.pop.app.cleaner;

import android.graphics.PointF;
import android.os.Handler;
import com.estrongs.android.ui.a.b;
import com.estrongs.android.view.w;

class g
  implements Runnable
{
  private long b = a.b.b.D();
  private final float c = aa.b).computeScrollVectorForPosition(a.a).y / c.a(a.b).a();
  private final int d = (int)((float)b / c) * 100;
  
  g(e parame) {}
  
  public void run()
  {
    if (c.d(a.b)) {
      return;
    }
    b -= d;
    if (b >= 0L) {
      a.b.b.a(b);
    }
    for (;;)
    {
      a.b.b.u().postDelayed(this, 100L);
      return;
      a.b.b.a(0L);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.cleaner.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
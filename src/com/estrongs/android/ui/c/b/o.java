package com.estrongs.android.ui.c.b;

import android.os.Handler;
import android.view.animation.Interpolator;
import com.estrongs.android.ui.c.a.f;

class o
  implements Runnable
{
  o(l paraml, s params, f paramf) {}
  
  public void run()
  {
    long l1 = a.b;
    long l2 = a.c;
    int i = 1;
    for (;;)
    {
      if (i <= 50)
      {
        long l3 = (l.d(c).getInterpolation(1.0F * i / 50.0F) * (float)l1);
        l.e(c).post(new p(this, l3, l2));
        try
        {
          Thread.sleep(10L);
          i += 1;
        }
        catch (InterruptedException localInterruptedException)
        {
          for (;;)
          {
            localInterruptedException.printStackTrace();
          }
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.c.b.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
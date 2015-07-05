package com.estrongs.android.ui.drag;

import android.os.Handler;
import android.os.SystemClock;

class v
  implements Runnable
{
  v(u paramu) {}
  
  public void run()
  {
    float f2 = 1.0F;
    long l1 = a.e;
    long l2 = SystemClock.uptimeMillis() - l1;
    int i = a.b;
    float f3 = (float)l2 / i;
    float f1 = f3;
    if (!a.f) {
      f1 = 1.0F - f3;
    }
    if (f1 > 1.0F) {
      f1 = f2;
    }
    for (;;)
    {
      f2 = a.g;
      a.g = f1;
      a.c.a(f1, f2);
      long l3 = ((int)(l2 / 33L) + 1) * 33;
      if (l2 < i) {
        a.a.postAtTime(this, l3 + l1);
      }
      if (l2 >= i)
      {
        a.c.b();
        a.d = false;
      }
      return;
      if (f1 < 0.0F) {
        f1 = 0.0F;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.drag.v
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
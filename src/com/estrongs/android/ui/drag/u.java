package com.estrongs.android.ui.drag;

import android.os.Handler;
import android.os.SystemClock;

public class u
{
  Handler a;
  int b;
  w c;
  boolean d;
  long e;
  boolean f;
  float g;
  Runnable h = new v(this);
  
  public u(boolean paramBoolean, int paramInt, w paramw)
  {
    if (paramBoolean) {}
    for (float f1 = 1.0F;; f1 = 0.0F)
    {
      g = f1;
      f = paramBoolean;
      b = paramInt;
      c = paramw;
      a = new Handler();
      return;
    }
  }
  
  public void a(boolean paramBoolean)
  {
    a(paramBoolean, SystemClock.uptimeMillis());
  }
  
  public void a(boolean paramBoolean, long paramLong)
  {
    if (paramBoolean != f)
    {
      if (d) {
        break label61;
      }
      e = paramLong;
      d = true;
      c.a();
      paramLong = SystemClock.uptimeMillis();
      a.postAtTime(h, paramLong + 33L);
    }
    for (;;)
    {
      f = paramBoolean;
      return;
      label61:
      paramLong = SystemClock.uptimeMillis();
      e = (paramLong + (paramLong - e) - b);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.drag.u
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
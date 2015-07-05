package com.handmark.pulltorefresh.library;

import android.view.animation.Interpolator;
import com.handmark.pulltorefresh.library.a.i;

final class m
  implements Runnable
{
  private final Interpolator b;
  private final int c;
  private final int d;
  private final long e;
  private l f;
  private boolean g = true;
  private long h = -1L;
  private int i = -1;
  
  public m(PullToRefreshBase paramPullToRefreshBase, int paramInt1, int paramInt2, long paramLong, l paraml)
  {
    d = paramInt1;
    c = paramInt2;
    b = PullToRefreshBase.b(paramPullToRefreshBase);
    e = paramLong;
    f = paraml;
  }
  
  public void a()
  {
    g = false;
    a.removeCallbacks(this);
  }
  
  public void run()
  {
    if (h == -1L)
    {
      h = System.currentTimeMillis();
      if ((!g) || (c == i)) {
        break label128;
      }
      i.a(a, this);
    }
    label128:
    while (f == null)
    {
      return;
      long l = Math.max(Math.min((System.currentTimeMillis() - h) * 1000L / e, 1000L), 0L);
      float f1 = d - c;
      int j = Math.round(b.getInterpolation((float)l / 1000.0F) * f1);
      i = (d - j);
      a.a(i);
      break;
    }
    f.a();
  }
}

/* Location:
 * Qualified Name:     com.handmark.pulltorefresh.library.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package android.support.design.widget;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Interpolator;

class dc
  extends cz
{
  private static final Handler a = new Handler(Looper.getMainLooper());
  private long b;
  private boolean c;
  private final int[] d = new int[2];
  private final float[] e = new float[2];
  private int f = 200;
  private Interpolator g;
  private da h;
  private db i;
  private float j;
  private final Runnable k = new dd(this);
  
  private void h()
  {
    if (c)
    {
      float f2 = (float)(SystemClock.uptimeMillis() - b) / f;
      float f1 = f2;
      if (g != null) {
        f1 = g.getInterpolation(f2);
      }
      j = f1;
      if (i != null) {
        i.a();
      }
      if (SystemClock.uptimeMillis() >= b + f)
      {
        c = false;
        if (h != null) {
          h.b();
        }
      }
    }
    if (c) {
      a.postDelayed(k, 10L);
    }
  }
  
  public void a()
  {
    if (c) {
      return;
    }
    if (g == null) {
      g = new AccelerateDecelerateInterpolator();
    }
    b = SystemClock.uptimeMillis();
    c = true;
    if (h != null) {
      h.a();
    }
    a.postDelayed(k, 10L);
  }
  
  public void a(float paramFloat1, float paramFloat2)
  {
    e[0] = paramFloat1;
    e[1] = paramFloat2;
  }
  
  public void a(int paramInt)
  {
    f = paramInt;
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    d[0] = paramInt1;
    d[1] = paramInt2;
  }
  
  public void a(da paramda)
  {
    h = paramda;
  }
  
  public void a(db paramdb)
  {
    i = paramdb;
  }
  
  public void a(Interpolator paramInterpolator)
  {
    g = paramInterpolator;
  }
  
  public boolean b()
  {
    return c;
  }
  
  public int c()
  {
    return a.a(d[0], d[1], f());
  }
  
  public float d()
  {
    return a.a(e[0], e[1], f());
  }
  
  public void e()
  {
    c = false;
    a.removeCallbacks(k);
    if (h != null) {
      h.c();
    }
  }
  
  public float f()
  {
    return j;
  }
  
  public long g()
  {
    return f;
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.dc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
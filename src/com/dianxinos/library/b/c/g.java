package com.dianxinos.library.b.c;

import android.os.SystemClock;

public class g
{
  private h[] a;
  private int b;
  
  public g(int paramInt)
  {
    b = paramInt;
    a = new h[b];
    paramInt = 0;
    while (paramInt < b)
    {
      a[paramInt] = new h(this);
      paramInt += 1;
    }
  }
  
  public void a(int paramInt)
  {
    if (paramInt < b) {
      a[paramInt].a(SystemClock.uptimeMillis());
    }
  }
  
  public long b(int paramInt)
  {
    if (paramInt < b) {
      return a[paramInt].b(SystemClock.uptimeMillis());
    }
    return 0L;
  }
  
  public float c(int paramInt)
  {
    float f = 0.0F;
    if (paramInt < b) {
      f = (float)a[paramInt].a();
    }
    return f;
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.library.b.c.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
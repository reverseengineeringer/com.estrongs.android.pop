package android.support.v4.widget;

import android.view.animation.AnimationUtils;

class c
{
  private int a;
  private int b;
  private float c;
  private float d;
  private long e = Long.MIN_VALUE;
  private long f = 0L;
  private int g = 0;
  private int h = 0;
  private long i = -1L;
  private float j;
  private int k;
  
  private float a(float paramFloat)
  {
    return -4.0F * paramFloat * paramFloat + 4.0F * paramFloat;
  }
  
  private float a(long paramLong)
  {
    if (paramLong < e) {
      return 0.0F;
    }
    if ((i < 0L) || (paramLong < i)) {
      return a.a((float)(paramLong - e) / a, 0.0F, 1.0F) * 0.5F;
    }
    long l = i;
    float f1 = j;
    float f2 = j;
    return a.a((float)(paramLong - l) / k, 0.0F, 1.0F) * f2 + (1.0F - f1);
  }
  
  public void a()
  {
    e = AnimationUtils.currentAnimationTimeMillis();
    i = -1L;
    f = e;
    j = 0.5F;
    g = 0;
    h = 0;
  }
  
  public void a(float paramFloat1, float paramFloat2)
  {
    c = paramFloat1;
    d = paramFloat2;
  }
  
  public void a(int paramInt)
  {
    a = paramInt;
  }
  
  public void b()
  {
    long l = AnimationUtils.currentAnimationTimeMillis();
    k = a.a((int)(l - e), 0, b);
    j = a(l);
    i = l;
  }
  
  public void b(int paramInt)
  {
    b = paramInt;
  }
  
  public boolean c()
  {
    return (i > 0L) && (AnimationUtils.currentAnimationTimeMillis() > i + k);
  }
  
  public void d()
  {
    if (f == 0L) {
      throw new RuntimeException("Cannot compute scroll delta before calling start()");
    }
    long l1 = AnimationUtils.currentAnimationTimeMillis();
    float f1 = a(a(l1));
    long l2 = l1 - f;
    f = l1;
    g = ((int)((float)l2 * f1 * c));
    h = ((int)((float)l2 * f1 * d));
  }
  
  public int e()
  {
    return (int)(c / Math.abs(c));
  }
  
  public int f()
  {
    return (int)(d / Math.abs(d));
  }
  
  public int g()
  {
    return g;
  }
  
  public int h()
  {
    return h;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package android.support.v4.widget;

import android.content.Context;
import android.os.Build.VERSION;
import android.view.animation.Interpolator;

public final class bn
{
  Object a;
  bo b;
  
  private bn(int paramInt, Context paramContext, Interpolator paramInterpolator)
  {
    if (paramInt >= 14) {
      b = new br();
    }
    for (;;)
    {
      a = b.a(paramContext, paramInterpolator);
      return;
      if (paramInt >= 9) {
        b = new bq();
      } else {
        b = new bp();
      }
    }
  }
  
  public static bn a(Context paramContext)
  {
    return a(paramContext, null);
  }
  
  public static bn a(Context paramContext, Interpolator paramInterpolator)
  {
    return new bn(Build.VERSION.SDK_INT, paramContext, paramInterpolator);
  }
  
  public void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    b.a(a, paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  public void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    b.a(a, paramInt1, paramInt2, paramInt3, paramInt4, paramInt5);
  }
  
  public void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8)
  {
    b.a(a, paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, paramInt6, paramInt7, paramInt8);
  }
  
  public void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8, int paramInt9, int paramInt10)
  {
    b.a(a, paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, paramInt6, paramInt7, paramInt8, paramInt9, paramInt10);
  }
  
  public boolean a()
  {
    return b.a(a);
  }
  
  public boolean a(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6)
  {
    return b.a(a, paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, paramInt6);
  }
  
  public int b()
  {
    return b.b(a);
  }
  
  public int c()
  {
    return b.c(a);
  }
  
  public int d()
  {
    return b.g(a);
  }
  
  public int e()
  {
    return b.h(a);
  }
  
  public float f()
  {
    return b.d(a);
  }
  
  public boolean g()
  {
    return b.e(a);
  }
  
  public void h()
  {
    b.f(a);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.bn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
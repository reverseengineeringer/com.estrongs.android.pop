package android.support.v4.widget;

import android.content.Context;
import android.os.Build.VERSION;
import android.view.animation.Interpolator;

public class k
{
  static final l b = new m();
  Object a;
  
  static
  {
    int i = Build.VERSION.SDK_INT;
    if (i >= 14)
    {
      b = new o();
      return;
    }
    if (i >= 9)
    {
      b = new n();
      return;
    }
  }
  
  k(Context paramContext, Interpolator paramInterpolator)
  {
    a = b.a(paramContext, paramInterpolator);
  }
  
  public static k a(Context paramContext, Interpolator paramInterpolator)
  {
    return new k(paramContext, paramInterpolator);
  }
  
  public void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    b.a(a, paramInt1, paramInt2, paramInt3, paramInt4, paramInt5);
  }
  
  public boolean a()
  {
    return b.a(a);
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
    return b.f(a);
  }
  
  public int e()
  {
    return b.g(a);
  }
  
  public boolean f()
  {
    return b.d(a);
  }
  
  public void g()
  {
    b.e(a);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
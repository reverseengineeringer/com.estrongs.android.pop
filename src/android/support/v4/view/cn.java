package android.support.v4.view;

import android.content.res.ColorStateList;
import android.graphics.Paint;
import android.graphics.PorterDuff.Mode;
import android.os.Build.VERSION;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;

public final class cn
{
  static final da a = new co();
  
  static
  {
    int i = Build.VERSION.SDK_INT;
    if (i >= 23)
    {
      a = new cz();
      return;
    }
    if (i >= 21)
    {
      a = new cy();
      return;
    }
    if (i >= 19)
    {
      a = new cx();
      return;
    }
    if (i >= 17)
    {
      a = new cv();
      return;
    }
    if (i >= 16)
    {
      a = new cu();
      return;
    }
    if (i >= 15)
    {
      a = new cs();
      return;
    }
    if (i >= 14)
    {
      a = new ct();
      return;
    }
    if (i >= 11)
    {
      a = new cr();
      return;
    }
    if (i >= 9)
    {
      a = new cq();
      return;
    }
    if (i >= 7)
    {
      a = new cp();
      return;
    }
  }
  
  public static void A(View paramView)
  {
    a.C(paramView);
  }
  
  public static boolean B(View paramView)
  {
    return a.o(paramView);
  }
  
  public static boolean C(View paramView)
  {
    return a.D(paramView);
  }
  
  public static ColorStateList D(View paramView)
  {
    return a.F(paramView);
  }
  
  public static PorterDuff.Mode E(View paramView)
  {
    return a.G(paramView);
  }
  
  public static boolean F(View paramView)
  {
    return a.E(paramView);
  }
  
  public static void G(View paramView)
  {
    a.H(paramView);
  }
  
  public static boolean H(View paramView)
  {
    return a.I(paramView);
  }
  
  public static float I(View paramView)
  {
    return a.J(paramView);
  }
  
  public static boolean J(View paramView)
  {
    return a.K(paramView);
  }
  
  public static boolean K(View paramView)
  {
    return a.L(paramView);
  }
  
  public static int a(int paramInt1, int paramInt2)
  {
    return a.a(paramInt1, paramInt2);
  }
  
  public static int a(int paramInt1, int paramInt2, int paramInt3)
  {
    return a.a(paramInt1, paramInt2, paramInt3);
  }
  
  public static int a(View paramView)
  {
    return a.a(paramView);
  }
  
  public static fr a(View paramView, fr paramfr)
  {
    return a.a(paramView, paramfr);
  }
  
  public static void a(View paramView, float paramFloat)
  {
    a.b(paramView, paramFloat);
  }
  
  public static void a(View paramView, int paramInt1, int paramInt2)
  {
    a.a(paramView, paramInt1, paramInt2);
  }
  
  public static void a(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    a.a(paramView, paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  public static void a(View paramView, int paramInt, Paint paramPaint)
  {
    a.a(paramView, paramInt, paramPaint);
  }
  
  public static void a(View paramView, ColorStateList paramColorStateList)
  {
    a.a(paramView, paramColorStateList);
  }
  
  public static void a(View paramView, Paint paramPaint)
  {
    a.a(paramView, paramPaint);
  }
  
  public static void a(View paramView, PorterDuff.Mode paramMode)
  {
    a.a(paramView, paramMode);
  }
  
  public static void a(View paramView, a parama)
  {
    a.a(paramView, parama);
  }
  
  public static void a(View paramView, bv parambv)
  {
    a.a(paramView, parambv);
  }
  
  public static void a(View paramView, Runnable paramRunnable)
  {
    a.a(paramView, paramRunnable);
  }
  
  public static void a(View paramView, Runnable paramRunnable, long paramLong)
  {
    a.a(paramView, paramRunnable, paramLong);
  }
  
  public static void a(View paramView, boolean paramBoolean)
  {
    a.a(paramView, paramBoolean);
  }
  
  public static void a(ViewGroup paramViewGroup, boolean paramBoolean)
  {
    a.a(paramViewGroup, paramBoolean);
  }
  
  public static boolean a(View paramView, int paramInt)
  {
    return a.a(paramView, paramInt);
  }
  
  public static fr b(View paramView, fr paramfr)
  {
    return a.b(paramView, paramfr);
  }
  
  public static void b(View paramView, float paramFloat)
  {
    a.c(paramView, paramFloat);
  }
  
  public static void b(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    a.b(paramView, paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  public static void b(View paramView, boolean paramBoolean)
  {
    a.b(paramView, paramBoolean);
  }
  
  public static boolean b(View paramView)
  {
    return a.b(paramView);
  }
  
  public static boolean b(View paramView, int paramInt)
  {
    return a.b(paramView, paramInt);
  }
  
  public static void c(View paramView, float paramFloat)
  {
    a.d(paramView, paramFloat);
  }
  
  public static void c(View paramView, int paramInt)
  {
    a.c(paramView, paramInt);
  }
  
  public static void c(View paramView, boolean paramBoolean)
  {
    a.c(paramView, paramBoolean);
  }
  
  public static boolean c(View paramView)
  {
    return a.c(paramView);
  }
  
  public static void d(View paramView)
  {
    a.d(paramView);
  }
  
  public static void d(View paramView, float paramFloat)
  {
    a.i(paramView, paramFloat);
  }
  
  public static void d(View paramView, int paramInt)
  {
    a.d(paramView, paramInt);
  }
  
  public static int e(View paramView)
  {
    return a.e(paramView);
  }
  
  public static void e(View paramView, float paramFloat)
  {
    a.a(paramView, paramFloat);
  }
  
  public static void e(View paramView, int paramInt)
  {
    a.f(paramView, paramInt);
  }
  
  public static float f(View paramView)
  {
    return a.f(paramView);
  }
  
  public static void f(View paramView, float paramFloat)
  {
    a.e(paramView, paramFloat);
  }
  
  public static void f(View paramView, int paramInt)
  {
    a.e(paramView, paramInt);
  }
  
  public static int g(View paramView)
  {
    return a.g(paramView);
  }
  
  public static void g(View paramView, float paramFloat)
  {
    a.f(paramView, paramFloat);
  }
  
  public static int h(View paramView)
  {
    return a.h(paramView);
  }
  
  public static void h(View paramView, float paramFloat)
  {
    a.g(paramView, paramFloat);
  }
  
  public static ViewParent i(View paramView)
  {
    return a.i(paramView);
  }
  
  public static void i(View paramView, float paramFloat)
  {
    a.h(paramView, paramFloat);
  }
  
  public static void j(View paramView, float paramFloat)
  {
    a.j(paramView, paramFloat);
  }
  
  public static boolean j(View paramView)
  {
    return a.j(paramView);
  }
  
  public static int k(View paramView)
  {
    return a.k(paramView);
  }
  
  public static void k(View paramView, float paramFloat)
  {
    a.k(paramView, paramFloat);
  }
  
  public static int l(View paramView)
  {
    return a.l(paramView);
  }
  
  public static void l(View paramView, float paramFloat)
  {
    a.l(paramView, paramFloat);
  }
  
  public static int m(View paramView)
  {
    return a.m(paramView);
  }
  
  public static int n(View paramView)
  {
    return a.n(paramView);
  }
  
  public static float o(View paramView)
  {
    return a.p(paramView);
  }
  
  public static float p(View paramView)
  {
    return a.q(paramView);
  }
  
  public static int q(View paramView)
  {
    return a.u(paramView);
  }
  
  public static int r(View paramView)
  {
    return a.v(paramView);
  }
  
  public static ex s(View paramView)
  {
    return a.w(paramView);
  }
  
  public static float t(View paramView)
  {
    return a.t(paramView);
  }
  
  public static float u(View paramView)
  {
    return a.r(paramView);
  }
  
  public static float v(View paramView)
  {
    return a.s(paramView);
  }
  
  public static float w(View paramView)
  {
    return a.z(paramView);
  }
  
  public static int x(View paramView)
  {
    return a.x(paramView);
  }
  
  public static void y(View paramView)
  {
    a.y(paramView);
  }
  
  public static boolean z(View paramView)
  {
    return a.B(paramView);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.cn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package android.support.v4.view.a;

import android.graphics.Rect;
import android.os.Build.VERSION;
import android.view.View;

public class a
{
  private static final c a = new e();
  private final Object b;
  
  static
  {
    if (Build.VERSION.SDK_INT >= 16)
    {
      a = new d();
      return;
    }
    if (Build.VERSION.SDK_INT >= 14)
    {
      a = new b();
      return;
    }
  }
  
  public a(Object paramObject)
  {
    b = paramObject;
  }
  
  public static a a(a parama)
  {
    return a(a.a(b));
  }
  
  static a a(Object paramObject)
  {
    if (paramObject != null) {
      return new a(paramObject);
    }
    return null;
  }
  
  public Object a()
  {
    return b;
  }
  
  public void a(int paramInt)
  {
    a.a(b, paramInt);
  }
  
  public void a(Rect paramRect)
  {
    a.a(b, paramRect);
  }
  
  public void a(View paramView)
  {
    a.c(b, paramView);
  }
  
  public void a(CharSequence paramCharSequence)
  {
    a.c(b, paramCharSequence);
  }
  
  public void a(boolean paramBoolean)
  {
    a.c(b, paramBoolean);
  }
  
  public int b()
  {
    return a.b(b);
  }
  
  public void b(Rect paramRect)
  {
    a.c(b, paramRect);
  }
  
  public void b(View paramView)
  {
    a.a(b, paramView);
  }
  
  public void b(CharSequence paramCharSequence)
  {
    a.a(b, paramCharSequence);
  }
  
  public void b(boolean paramBoolean)
  {
    a.d(b, paramBoolean);
  }
  
  public void c(Rect paramRect)
  {
    a.b(b, paramRect);
  }
  
  public void c(View paramView)
  {
    a.b(b, paramView);
  }
  
  public void c(CharSequence paramCharSequence)
  {
    a.b(b, paramCharSequence);
  }
  
  public void c(boolean paramBoolean)
  {
    a.h(b, paramBoolean);
  }
  
  public boolean c()
  {
    return a.h(b);
  }
  
  public void d(Rect paramRect)
  {
    a.d(b, paramRect);
  }
  
  public void d(boolean paramBoolean)
  {
    a.i(b, paramBoolean);
  }
  
  public boolean d()
  {
    return a.i(b);
  }
  
  public void e(boolean paramBoolean)
  {
    a.g(b, paramBoolean);
  }
  
  public boolean e()
  {
    return a.m(b);
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      do
      {
        return true;
        if (paramObject == null) {
          return false;
        }
        if (getClass() != paramObject.getClass()) {
          return false;
        }
        paramObject = (a)paramObject;
        if (b != null) {
          break;
        }
      } while (b == null);
      return false;
    } while (b.equals(b));
    return false;
  }
  
  public void f(boolean paramBoolean)
  {
    a.a(b, paramBoolean);
  }
  
  public boolean f()
  {
    return a.n(b);
  }
  
  public void g(boolean paramBoolean)
  {
    a.e(b, paramBoolean);
  }
  
  public boolean g()
  {
    return a.k(b);
  }
  
  public void h(boolean paramBoolean)
  {
    a.b(b, paramBoolean);
  }
  
  public boolean h()
  {
    return a.f(b);
  }
  
  public int hashCode()
  {
    if (b == null) {
      return 0;
    }
    return b.hashCode();
  }
  
  public void i(boolean paramBoolean)
  {
    a.f(b, paramBoolean);
  }
  
  public boolean i()
  {
    return a.j(b);
  }
  
  public boolean j()
  {
    return a.g(b);
  }
  
  public CharSequence k()
  {
    return a.e(b);
  }
  
  public CharSequence l()
  {
    return a.c(b);
  }
  
  public CharSequence m()
  {
    return a.d(b);
  }
  
  public void n()
  {
    a.l(b);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
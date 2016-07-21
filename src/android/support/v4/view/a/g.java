package android.support.v4.view.a;

import android.graphics.Rect;
import android.os.Build.VERSION;
import android.view.View;

public class g
{
  private static final l a = new q();
  private final Object b;
  
  static
  {
    if (Build.VERSION.SDK_INT >= 22)
    {
      a = new j();
      return;
    }
    if (Build.VERSION.SDK_INT >= 21)
    {
      a = new i();
      return;
    }
    if (Build.VERSION.SDK_INT >= 19)
    {
      a = new p();
      return;
    }
    if (Build.VERSION.SDK_INT >= 18)
    {
      a = new o();
      return;
    }
    if (Build.VERSION.SDK_INT >= 17)
    {
      a = new n();
      return;
    }
    if (Build.VERSION.SDK_INT >= 16)
    {
      a = new m();
      return;
    }
    if (Build.VERSION.SDK_INT >= 14)
    {
      a = new k();
      return;
    }
  }
  
  public g(Object paramObject)
  {
    b = paramObject;
  }
  
  public static g a(g paramg)
  {
    return a(a.a(b));
  }
  
  static g a(Object paramObject)
  {
    if (paramObject != null) {
      return new g(paramObject);
    }
    return null;
  }
  
  private static String c(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return "ACTION_UNKNOWN";
    case 1: 
      return "ACTION_FOCUS";
    case 2: 
      return "ACTION_CLEAR_FOCUS";
    case 4: 
      return "ACTION_SELECT";
    case 8: 
      return "ACTION_CLEAR_SELECTION";
    case 16: 
      return "ACTION_CLICK";
    case 32: 
      return "ACTION_LONG_CLICK";
    case 64: 
      return "ACTION_ACCESSIBILITY_FOCUS";
    case 128: 
      return "ACTION_CLEAR_ACCESSIBILITY_FOCUS";
    case 256: 
      return "ACTION_NEXT_AT_MOVEMENT_GRANULARITY";
    case 512: 
      return "ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY";
    case 1024: 
      return "ACTION_NEXT_HTML_ELEMENT";
    case 2048: 
      return "ACTION_PREVIOUS_HTML_ELEMENT";
    case 4096: 
      return "ACTION_SCROLL_FORWARD";
    case 8192: 
      return "ACTION_SCROLL_BACKWARD";
    case 65536: 
      return "ACTION_CUT";
    case 16384: 
      return "ACTION_COPY";
    case 32768: 
      return "ACTION_PASTE";
    }
    return "ACTION_SET_SELECTION";
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
    a.d(b, paramCharSequence);
  }
  
  public void a(boolean paramBoolean)
  {
    a.c(b, paramBoolean);
  }
  
  public boolean a(h paramh)
  {
    return a.a(b, h.a(paramh));
  }
  
  public int b()
  {
    return a.b(b);
  }
  
  public void b(int paramInt)
  {
    a.b(b, paramInt);
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
    a.b(b, paramCharSequence);
  }
  
  public void b(Object paramObject)
  {
    a.b(b, a);
  }
  
  public void b(boolean paramBoolean)
  {
    a.d(b, paramBoolean);
  }
  
  public int c()
  {
    return a.r(b);
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
    a.e(b, paramCharSequence);
  }
  
  public void c(Object paramObject)
  {
    a.c(b, s.a((s)paramObject));
  }
  
  public void c(boolean paramBoolean)
  {
    a.h(b, paramBoolean);
  }
  
  public void d(Rect paramRect)
  {
    a.d(b, paramRect);
  }
  
  public void d(View paramView)
  {
    a.d(b, paramView);
  }
  
  public void d(CharSequence paramCharSequence)
  {
    a.c(b, paramCharSequence);
  }
  
  public void d(boolean paramBoolean)
  {
    a.i(b, paramBoolean);
  }
  
  public boolean d()
  {
    return a.g(b);
  }
  
  public void e(CharSequence paramCharSequence)
  {
    a.a(b, paramCharSequence);
  }
  
  public void e(boolean paramBoolean)
  {
    a.g(b, paramBoolean);
  }
  
  public boolean e()
  {
    return a.h(b);
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
        paramObject = (g)paramObject;
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
    return a.k(b);
  }
  
  public void g(boolean paramBoolean)
  {
    a.e(b, paramBoolean);
  }
  
  public boolean g()
  {
    return a.l(b);
  }
  
  public void h(boolean paramBoolean)
  {
    a.b(b, paramBoolean);
  }
  
  public boolean h()
  {
    return a.s(b);
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
    return a.t(b);
  }
  
  public void j(boolean paramBoolean)
  {
    a.j(b, paramBoolean);
  }
  
  public boolean j()
  {
    return a.p(b);
  }
  
  public boolean k()
  {
    return a.i(b);
  }
  
  public boolean l()
  {
    return a.m(b);
  }
  
  public boolean m()
  {
    return a.j(b);
  }
  
  public boolean n()
  {
    return a.n(b);
  }
  
  public boolean o()
  {
    return a.o(b);
  }
  
  public CharSequence p()
  {
    return a.e(b);
  }
  
  public CharSequence q()
  {
    return a.c(b);
  }
  
  public CharSequence r()
  {
    return a.f(b);
  }
  
  public CharSequence s()
  {
    return a.d(b);
  }
  
  public void t()
  {
    a.q(b);
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(super.toString());
    Rect localRect = new Rect();
    a(localRect);
    localStringBuilder.append("; boundsInParent: " + localRect);
    c(localRect);
    localStringBuilder.append("; boundsInScreen: " + localRect);
    localStringBuilder.append("; packageName: ").append(p());
    localStringBuilder.append("; className: ").append(q());
    localStringBuilder.append("; text: ").append(r());
    localStringBuilder.append("; contentDescription: ").append(s());
    localStringBuilder.append("; viewId: ").append(u());
    localStringBuilder.append("; checkable: ").append(d());
    localStringBuilder.append("; checked: ").append(e());
    localStringBuilder.append("; focusable: ").append(f());
    localStringBuilder.append("; focused: ").append(g());
    localStringBuilder.append("; selected: ").append(j());
    localStringBuilder.append("; clickable: ").append(k());
    localStringBuilder.append("; longClickable: ").append(l());
    localStringBuilder.append("; enabled: ").append(m());
    localStringBuilder.append("; password: ").append(n());
    localStringBuilder.append("; scrollable: " + o());
    localStringBuilder.append("; [");
    int i = b();
    while (i != 0)
    {
      int k = 1 << Integer.numberOfTrailingZeros(i);
      int j = i & (k ^ 0xFFFFFFFF);
      localStringBuilder.append(c(k));
      i = j;
      if (j != 0)
      {
        localStringBuilder.append(", ");
        i = j;
      }
    }
    localStringBuilder.append("]");
    return localStringBuilder.toString();
  }
  
  public String u()
  {
    return a.u(b);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.a.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
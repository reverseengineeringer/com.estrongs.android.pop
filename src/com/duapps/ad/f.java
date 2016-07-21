package com.duapps.ad;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import com.duapps.ad.base.r;

public class f
{
  a a;
  private Context b;
  private c c;
  private e d;
  private int e;
  private View f;
  private Handler g;
  private d h = new g(this);
  
  public f(Context paramContext, int paramInt)
  {
    this(paramContext, paramInt, 2);
  }
  
  public f(Context paramContext, int paramInt1, int paramInt2)
  {
    b = paramContext;
    e = paramInt1;
    a = ((a)k.a(paramContext.getApplicationContext()).a(e, paramInt2));
    g = new Handler(Looper.getMainLooper());
  }
  
  public void a()
  {
    if (!r.g(b))
    {
      h.a(b.c);
      return;
    }
    a.a();
    r.h(b);
  }
  
  public void a(View paramView)
  {
    if (b())
    {
      if (f != null) {
        c();
      }
      f = paramView;
      c.a(paramView);
    }
  }
  
  public void a(e parame)
  {
    d = parame;
  }
  
  public boolean b()
  {
    return c != null;
  }
  
  public void c()
  {
    if (b()) {
      c.i();
    }
  }
  
  public void d()
  {
    if (!r.f(b))
    {
      h.a(b.c);
      return;
    }
    a.a(null);
    a.a(h);
    a.b();
    r.i(b);
  }
  
  public void e()
  {
    if (b()) {
      c.j();
    }
    g.removeCallbacksAndMessages(null);
    a.a(null);
    a.c();
  }
  
  public String f()
  {
    if (b()) {
      return c.a();
    }
    return null;
  }
  
  public String g()
  {
    if (b()) {
      return c.b();
    }
    return null;
  }
  
  public String h()
  {
    if (b()) {
      return c.c();
    }
    return null;
  }
  
  public String i()
  {
    if (b()) {
      return c.d();
    }
    return null;
  }
  
  public String j()
  {
    if (b()) {
      return c.e();
    }
    return null;
  }
  
  public int k()
  {
    if (b()) {
      return c.g();
    }
    return -1;
  }
  
  public c l()
  {
    return c;
  }
  
  public int m()
  {
    if (b()) {
      return c.k();
    }
    return -1;
  }
}

/* Location:
 * Qualified Name:     com.duapps.ad.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
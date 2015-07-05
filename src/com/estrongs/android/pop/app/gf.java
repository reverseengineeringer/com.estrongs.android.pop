package com.estrongs.android.pop.app;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.estrongs.android.c.a;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.app.a.ak;
import com.estrongs.android.pop.app.a.al;
import com.estrongs.android.ui.notification.ChromeCastPlayerNotificationHelper;
import com.estrongs.android.util.bc;
import java.util.List;

public class gf
  extends gd
{
  protected com.estrongs.android.pop.app.a.am b = c.m();
  protected aa c = aa.g();
  protected gc d = null;
  protected boolean e = false;
  
  public com.estrongs.android.pop.app.a.am A()
  {
    return b;
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    b.a(paramInt1, paramInt2);
  }
  
  public void a(long paramLong)
  {
    c.a(paramLong);
  }
  
  public void a(com.estrongs.android.pop.app.a.am paramam)
  {
    b = paramam;
  }
  
  public void a(gc paramgc)
  {
    d = paramgc;
  }
  
  public void a(List<ak> paramList)
  {
    b.b(paramList);
  }
  
  public void a(boolean paramBoolean)
  {
    e = paramBoolean;
    if (!e)
    {
      n();
      return;
    }
    o();
  }
  
  public boolean a()
  {
    String str = b.g().b;
    if (c.r() != 3)
    {
      c.a(str, com.estrongs.android.util.am.a(str, a.a(), true, true), com.estrongs.android.util.am.d(str), bc.S(com.estrongs.android.util.am.d(str)), b);
      return true;
    }
    c.j();
    return true;
  }
  
  public boolean a(int paramInt)
  {
    if (!b.c(paramInt)) {
      return false;
    }
    b.a(paramInt, true);
    b.d(paramInt);
    String str = b.g().b;
    c.a(str, com.estrongs.android.util.am.a(str, a.a(), true, true), com.estrongs.android.util.am.d(str), bc.S(com.estrongs.android.util.am.d(str)), b);
    return true;
  }
  
  public boolean a(al paramal)
  {
    return b.a(paramal);
  }
  
  public void b(int paramInt)
  {
    b.a(paramInt);
  }
  
  public void b(List<String> paramList)
  {
    b.a(paramList);
  }
  
  public long c()
  {
    return c.t();
  }
  
  public void c(int paramInt)
  {
    b.b(paramInt);
  }
  
  public boolean d()
  {
    return false;
  }
  
  public boolean d(int paramInt)
  {
    boolean bool2 = true;
    boolean bool1;
    if (!b.h()) {
      bool1 = false;
    }
    do
    {
      do
      {
        return bool1;
        if (paramInt < 0) {
          b.a();
        }
        b.d(paramInt);
        bool1 = bool2;
      } while (b.j() != 0);
      bool1 = bool2;
    } while (d == null);
    d.a(-1);
    return true;
  }
  
  public boolean e()
  {
    return (c.r() != 1) && (c.r() != 0);
  }
  
  public boolean f()
  {
    return c.r() == 3;
  }
  
  public String g()
  {
    try
    {
      String str2 = b.e().a();
      String str1 = str2;
      if (str2 == null)
      {
        int i = b.e().b();
        str1 = str2;
        if (i != -1) {
          str1 = FexApplication.a().getString(i);
        }
      }
      return str1;
    }
    catch (NullPointerException localNullPointerException) {}
    return null;
  }
  
  public al h()
  {
    return b.e();
  }
  
  public int i()
  {
    return b.m();
  }
  
  public int j()
  {
    return b.k();
  }
  
  public int k()
  {
    return b.l();
  }
  
  public int l()
  {
    return b.f();
  }
  
  public long m()
  {
    return c.s();
  }
  
  public void n()
  {
    ChromeCastPlayerNotificationHelper.a().j();
  }
  
  public void o()
  {
    ChromeCastPlayerNotificationHelper.a().b();
  }
  
  public void p()
  {
    c.j();
  }
  
  public void q() {}
  
  public ak r()
  {
    return b.g();
  }
  
  public String s()
  {
    Object localObject = null;
    if (h() == null) {}
    String str;
    do
    {
      do
      {
        return (String)localObject;
      } while (b.j() == 0);
      str = b.g().e;
      if (str == null) {
        break;
      }
      localObject = str;
    } while (!"".equals(str));
    return com.estrongs.android.util.am.d(b.g().b);
  }
  
  public String t()
  {
    Object localObject = null;
    if (h() == null) {}
    String str;
    do
    {
      do
      {
        return (String)localObject;
      } while (b.j() == 0);
      str = b.g().g;
      localObject = str;
    } while (str != null);
    return FexApplication.a().getString(2131428312);
  }
  
  public int u()
  {
    return b.c();
  }
  
  public int v()
  {
    return b.d();
  }
  
  public void w()
  {
    c.l();
  }
  
  public boolean x()
  {
    return a();
  }
  
  public Bitmap y()
  {
    Object localObject = null;
    if (h() == null) {}
    Bitmap localBitmap;
    do
    {
      do
      {
        return (Bitmap)localObject;
      } while (b.j() == 0);
      localBitmap = b.g().a(FexApplication.a());
      localObject = localBitmap;
    } while (localBitmap != null);
    return BitmapFactory.decodeResource(FexApplication.a().getResources(), 2130837518);
  }
  
  public void z() {}
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.gf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
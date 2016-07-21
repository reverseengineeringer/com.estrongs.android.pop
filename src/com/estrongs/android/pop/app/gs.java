package com.estrongs.android.pop.app;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.estrongs.android.g.a;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.app.c.i;
import com.estrongs.android.pop.app.c.j;
import com.estrongs.android.pop.app.c.k;
import com.estrongs.android.ui.notification.ChromeCastPlayerNotificationHelper;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.bg;
import java.util.List;

public class gs
  extends gq
{
  protected k b = c.m();
  protected ag c = ag.g();
  protected gp d = null;
  protected boolean e = false;
  
  public k A()
  {
    return b;
  }
  
  public Bitmap B()
  {
    if (h() == null) {}
    while (b.j() == 0) {
      return null;
    }
    return b.g().a(FexApplication.a());
  }
  
  public void a(long paramLong)
  {
    c.a(paramLong);
  }
  
  public void a(k paramk)
  {
    b = paramk;
  }
  
  public void a(gp paramgp)
  {
    d = paramgp;
  }
  
  public void a(List<i> paramList)
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
      c.a(str, ap.a(str, a.a(), true, true), ap.d(str), bg.U(ap.d(str)), b);
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
    c.a(str, ap.a(str, a.a(), true, true), ap.d(str), bg.U(ap.d(str)), b);
    return true;
  }
  
  public boolean a(j paramj)
  {
    return b.a(paramj);
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
  
  public j h()
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
  
  public i r()
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
    return ap.d(b.g().b);
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
    return FexApplication.a().getString(2131231045);
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
    Bitmap localBitmap2 = B();
    Bitmap localBitmap1 = localBitmap2;
    if (localBitmap2 == null) {
      localBitmap1 = BitmapFactory.decodeResource(FexApplication.a().getResources(), 2130838165);
    }
    return localBitmap1;
  }
  
  public void z() {}
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.gs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
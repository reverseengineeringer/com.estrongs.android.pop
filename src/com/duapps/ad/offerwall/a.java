package com.duapps.ad.offerwall;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Message;
import com.duapps.ad.base.ap;
import com.duapps.ad.base.l;
import com.duapps.ad.entity.AdData;
import com.duapps.ad.offerwall.a.g;
import com.facebook.ads.NativeAd;
import java.util.List;

@SuppressLint({"NewApi"})
public class a
  implements Handler.Callback
{
  public int a;
  private com.duapps.ad.offerwall.ui.a b;
  private int c = 1;
  private int d;
  private Context e;
  private boolean f;
  private boolean g;
  private boolean h;
  private boolean i;
  private boolean j;
  private g k;
  private com.duapps.ad.offerwall.a.b l;
  private boolean m;
  private boolean n = true;
  private boolean o = false;
  private Handler p;
  private boolean q;
  private boolean r;
  private com.duapps.ad.offerwall.a.a s = new b(this);
  
  public a(int paramInt, com.duapps.ad.offerwall.ui.a parama, Context paramContext)
  {
    this(paramInt, parama, paramContext, true);
  }
  
  public a(int paramInt, com.duapps.ad.offerwall.ui.a parama, Context paramContext, boolean paramBoolean)
  {
    d = paramInt;
    e = paramContext;
    b = parama;
    q = paramBoolean;
    p = new Handler(this);
  }
  
  private void a(List<NativeAd> paramList)
  {
    f = false;
    if (!r)
    {
      r = true;
      b.a(paramList);
    }
  }
  
  private void b(List<AdData> paramList)
  {
    g = false;
    b.b(paramList);
  }
  
  private void d()
  {
    m = true;
    h = false;
  }
  
  private boolean e()
  {
    return (k != null) && (k.d()) && (k.c() > 0);
  }
  
  private boolean f()
  {
    return l.a() > 0;
  }
  
  private void g()
  {
    b.a();
  }
  
  private void h()
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (!f)
    {
      bool1 = bool2;
      if (l != null)
      {
        bool1 = bool2;
        if (!l.d())
        {
          bool1 = bool2;
          if (!f()) {
            bool1 = true;
          }
        }
      }
    }
    b.a(n, bool1);
  }
  
  private void i()
  {
    b.b(n);
  }
  
  public void a()
  {
    n = true;
    b.a(n);
    a(1);
    p.removeMessages(1);
    p.sendEmptyMessageDelayed(1, 10000L);
  }
  
  public void a(int paramInt)
  {
    if (!ap.a(e.getApplicationContext())) {}
    do
    {
      do
      {
        p.sendEmptyMessageDelayed(2, 1000L);
        do
        {
          return;
        } while (m);
        if (l == null) {
          l = new com.duapps.ad.offerwall.a.b(d, e, s);
        }
        if ((ap.b(e)) && (k == null)) {
          k = new g(e, d, s);
        }
        if ((!f) && (!l.d()) && (!f()))
        {
          o = true;
          g();
          return;
        }
      } while (o);
      if ((f) && (e()))
      {
        a(k.e());
        return;
      }
      if ((g) && (f()))
      {
        b(l.c());
        return;
      }
      b.a(n);
      d();
      a = paramInt;
      if (!l.b()) {
        l.a(paramInt);
      }
    } while ((!q) || (k == null) || (k.a()) || (r));
    k.b();
  }
  
  public void b()
  {
    n = false;
  }
  
  public void c()
  {
    if (l != null) {
      l.e();
    }
    if (k != null)
    {
      k.f();
      p.removeMessages(1);
      p = null;
    }
  }
  
  public boolean handleMessage(Message paramMessage)
  {
    int i1 = what;
    if (i1 == 1) {
      if ((j) && ((k == null) || (!i)))
      {
        i();
        l.c("OfferWallPresenter", "Poll data timeout.");
      }
    }
    for (;;)
    {
      return false;
      if (i1 == 2) {
        i();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.duapps.ad.offerwall.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
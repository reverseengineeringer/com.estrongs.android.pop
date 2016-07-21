package com.duapps.ad.a;

import android.content.Context;
import android.view.View;
import com.duapps.ad.d;
import com.duapps.ad.entity.a.c;
import com.duapps.ad.stats.u;
import com.google.android.gms.ads.a;

public class f
  extends a
  implements c
{
  private e a;
  private Context b;
  private int c;
  private d d;
  private g e;
  private long f;
  
  public f(Context paramContext, int paramInt)
  {
    b = paramContext.getApplicationContext();
    c = paramInt;
  }
  
  private void b(View paramView)
  {
    u.a(b, c);
  }
  
  private boolean p()
  {
    return a != null;
  }
  
  public e a()
  {
    return a;
  }
  
  public void a(View paramView)
  {
    b(paramView);
  }
  
  public void a(e parame)
  {
    a = parame;
    f = System.currentTimeMillis();
  }
  
  public void a(g paramg)
  {
    e = paramg;
  }
  
  public void a(d paramd)
  {
    d = paramd;
  }
  
  public boolean b()
  {
    long l = System.currentTimeMillis() - f;
    return (l > 0L) && (l < 3600000L);
  }
  
  public void c() {}
  
  public void d() {}
  
  public String e()
  {
    if (!p()) {
      return null;
    }
    return a.f();
  }
  
  public String f()
  {
    if (!p()) {
      return null;
    }
    return a.g();
  }
  
  public String g()
  {
    if (!p()) {
      return null;
    }
    return a.e();
  }
  
  public String h()
  {
    if (!p()) {
      return null;
    }
    return a.d();
  }
  
  public String i()
  {
    if (!p()) {
      return null;
    }
    return a.c();
  }
  
  public float j()
  {
    if (!p()) {
      return 0.0F;
    }
    return a.h();
  }
  
  public int k()
  {
    return 4;
  }
  
  public String l()
  {
    return null;
  }
  
  public String m()
  {
    return null;
  }
  
  public String n()
  {
    return "admob";
  }
  
  public int o()
  {
    if (!p()) {
      return -2;
    }
    if (a.a()) {
      return 1;
    }
    if (a.b()) {
      return 0;
    }
    return -10;
  }
  
  public void onAdClosed()
  {
    if (e != null) {
      e.d();
    }
  }
  
  public void onAdFailedToLoad(int paramInt)
  {
    if (e != null) {
      e.a(paramInt);
    }
  }
  
  public void onAdLeftApplication()
  {
    if (e != null) {
      e.c();
    }
  }
  
  public void onAdLoaded()
  {
    if (e != null) {
      e.b();
    }
  }
  
  public void onAdOpened()
  {
    if (d != null) {
      d.a();
    }
    if (e != null) {
      e.a();
    }
  }
}

/* Location:
 * Qualified Name:     com.duapps.ad.a.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
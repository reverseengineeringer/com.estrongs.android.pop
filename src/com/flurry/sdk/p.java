package com.flurry.sdk;

import android.content.Context;
import android.text.TextUtils;
import android.view.ViewGroup;
import java.lang.ref.WeakReference;
import java.util.Collections;

public abstract class p
  implements s
{
  private static final String a = p.class.getSimpleName();
  private final int b;
  private final WeakReference<Context> c;
  private final WeakReference<ViewGroup> d;
  private final String e;
  private final dq f;
  private boolean g = false;
  private boolean h = false;
  private long i;
  private final kb<ln> j = new p.1(this);
  private final kb<d> k = new p.2(this);
  private final kb<lg> l = new p.3(this);
  private au m;
  private au n;
  private e o;
  
  protected p(Context paramContext, ViewGroup paramViewGroup, String paramString)
  {
    i locali = i.a();
    if (locali == null) {
      throw new IllegalStateException("A session must be started before ad objects may be instantiated.");
    }
    b = fd.a();
    c = new WeakReference(paramContext);
    d = new WeakReference(paramViewGroup);
    e = paramString;
    f = new dq(paramString);
    locali.d().a(paramContext, this);
    y();
    A();
    C();
  }
  
  private void A()
  {
    kc.a().a("com.flurry.android.impl.ads.AdStateEvent", k);
  }
  
  private void B()
  {
    kc.a().a(k);
  }
  
  private void C()
  {
    kc.a().a("com.flurry.android.sdk.FlurrySessionEvent", l);
  }
  
  private void D()
  {
    kc.a().a(l);
  }
  
  private void E()
  {
    if ((g) && (l().e(bb.v.a())))
    {
      fa.a(bb.v, Collections.emptyMap(), f(), this, l(), 0);
      l().f(bb.v.a());
    }
  }
  
  private void y()
  {
    i = System.currentTimeMillis();
    lo.a().a(j);
  }
  
  private void z()
  {
    lo.a().b(j);
  }
  
  public void a()
  {
    z();
    B();
    D();
    g = false;
    h = false;
    i.a().d().b(f(), this);
    b();
    if (f != null) {
      f.a();
    }
    o = null;
  }
  
  public void a(au paramau)
  {
    m = paramau;
  }
  
  public void a(au paramau, long paramLong, boolean paramBoolean)
  {
    kg.a(3, "VerifyPackageLog", "Getting nextAdUnit...  current cacheSize: " + k().b());
    i().d();
    if ((k().b() == 0) && (!paramBoolean))
    {
      kg.a(3, "VerifyPackageLog", "nextAdUnit() cacheSize is empty");
      paramau = new d();
      a = this;
      b = d.a.b;
      paramau.b();
      return;
    }
    i().a(this, j(), k());
  }
  
  protected void a(d paramd)
  {
    if ((d.a.a.equals(b)) || (d.a.b.equals(b)))
    {
      int i1 = k().b();
      if (i1 == 0)
      {
        kg.a(3, a, "Starting ad request from EnsureCacheNotEmpty size: " + i1);
        j().a(this, k(), null);
      }
    }
    if ((d.a.g.equals(b)) && (a.equals(this))) {
      u();
    }
  }
  
  public void a(e parame)
  {
    o = parame;
  }
  
  public void a(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return;
    }
    i().b();
    k().a(paramString);
  }
  
  protected void b()
  {
    ab localab = i.a().l();
    if (localab != null) {
      localab.a(this);
    }
  }
  
  public void c()
  {
    z();
  }
  
  public void d()
  {
    E();
    y();
  }
  
  public int e()
  {
    return b;
  }
  
  public Context f()
  {
    return (Context)c.get();
  }
  
  protected void finalize()
  {
    super.finalize();
    a();
  }
  
  public ViewGroup g()
  {
    return (ViewGroup)d.get();
  }
  
  public String h()
  {
    return e;
  }
  
  public dq i()
  {
    return f;
  }
  
  public dr j()
  {
    return i.a().c().a(h(), null, m()).a();
  }
  
  public y k()
  {
    return i.a().c().a(h(), null, m()).b();
  }
  
  public au l()
  {
    return n;
  }
  
  public e m()
  {
    return o;
  }
  
  public void n()
  {
    f.c();
  }
  
  protected au o()
  {
    return m;
  }
  
  protected void p()
  {
    
    if ((!m.o()) && (m.n()))
    {
      kg.a(3, a, "Precaching optional for ad, copying assets before display");
      i.a().l().a(this, m);
    }
  }
  
  protected void q()
  {
    n = m;
    m = null;
  }
  
  protected long r()
  {
    return i;
  }
  
  protected void s() {}
  
  protected void t()
  {
    if (TextUtils.isEmpty(je.a().c()))
    {
      kg.a(3, a, "Session Id not created yet. Delaying the fetch until session is created." + this);
      h = true;
      return;
    }
    kg.a(3, a, "Fetching ad now for " + this);
    i().a(this, j(), k());
  }
  
  protected void u()
  {
    g = true;
    l().g(bb.v.a());
  }
  
  protected void v()
  {
    if (h)
    {
      kg.a(3, a, "Session created. Fetching ad now for " + this);
      i().a(this, j(), k());
      h = false;
    }
  }
  
  protected void w()
  {
    g = false;
    h = false;
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
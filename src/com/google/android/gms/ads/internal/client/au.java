package com.google.android.gms.ads.internal.client;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import com.google.android.gms.ads.a.b;
import com.google.android.gms.internal.me;
import java.util.Collections;
import java.util.Date;
import java.util.Map;
import java.util.Set;

@me
public final class au
{
  public static final String a = m.a().a("emulator");
  private final Date b;
  private final String c;
  private final int d;
  private final Set<String> e;
  private final Location f;
  private final boolean g;
  private final Bundle h;
  private final Map<Class<? extends Object>, Object> i;
  private final String j;
  private final String k;
  private final com.google.android.gms.ads.search.a l;
  private final int m;
  private final Set<String> n;
  private final Bundle o;
  private final Set<String> p;
  
  public au(av paramav)
  {
    this(paramav, null);
  }
  
  public au(av paramav, com.google.android.gms.ads.search.a parama)
  {
    b = av.a(paramav);
    c = av.b(paramav);
    d = av.c(paramav);
    e = Collections.unmodifiableSet(av.d(paramav));
    f = av.e(paramav);
    g = av.f(paramav);
    h = av.g(paramav);
    i = Collections.unmodifiableMap(av.h(paramav));
    j = av.i(paramav);
    k = av.j(paramav);
    l = parama;
    m = av.k(paramav);
    n = Collections.unmodifiableSet(av.l(paramav));
    o = av.m(paramav);
    p = Collections.unmodifiableSet(av.n(paramav));
  }
  
  public Bundle a(Class<? extends b> paramClass)
  {
    return h.getBundle(paramClass.getName());
  }
  
  public Date a()
  {
    return b;
  }
  
  public boolean a(Context paramContext)
  {
    return n.contains(m.a().a(paramContext));
  }
  
  public String b()
  {
    return c;
  }
  
  public int c()
  {
    return d;
  }
  
  public Set<String> d()
  {
    return e;
  }
  
  public Location e()
  {
    return f;
  }
  
  public boolean f()
  {
    return g;
  }
  
  public String g()
  {
    return j;
  }
  
  public String h()
  {
    return k;
  }
  
  public com.google.android.gms.ads.search.a i()
  {
    return l;
  }
  
  public Map<Class<? extends Object>, Object> j()
  {
    return i;
  }
  
  public Bundle k()
  {
    return h;
  }
  
  public int l()
  {
    return m;
  }
  
  public Bundle m()
  {
    return o;
  }
  
  public Set<String> n()
  {
    return p;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.client.au
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
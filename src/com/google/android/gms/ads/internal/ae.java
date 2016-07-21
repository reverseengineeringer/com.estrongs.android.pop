package com.google.android.gms.ads.internal;

import android.os.Build.VERSION;
import com.google.android.gms.ads.internal.overlay.a;
import com.google.android.gms.ads.internal.overlay.n;
import com.google.android.gms.ads.internal.purchase.k;
import com.google.android.gms.ads.internal.request.c;
import com.google.android.gms.internal.cw;
import com.google.android.gms.internal.cx;
import com.google.android.gms.internal.cy;
import com.google.android.gms.internal.df;
import com.google.android.gms.internal.gj;
import com.google.android.gms.internal.id;
import com.google.android.gms.internal.lk;
import com.google.android.gms.internal.me;
import com.google.android.gms.internal.mx;
import com.google.android.gms.internal.nk;
import com.google.android.gms.internal.oe;
import com.google.android.gms.internal.oh;
import com.google.android.gms.internal.pd;
import com.google.android.gms.internal.qh;
import com.google.android.gms.internal.te;
import com.google.android.gms.internal.tf;

@me
public class ae
{
  private static final Object a = new Object();
  private static ae b;
  private final c c = new c();
  private final a d = new a();
  private final n e = new n();
  private final lk f = new lk();
  private final oe g = new oe();
  private final qh h = new qh();
  private final oh i = oh.a(Build.VERSION.SDK_INT);
  private final nk j = new nk(g);
  private final te k = new tf();
  private final df l = new df();
  private final mx m = new mx();
  private final cx n = new cx();
  private final cw o = new cw();
  private final cy p = new cy();
  private final k q = new k();
  private final pd r = new pd();
  private final id s = new id();
  private final gj t = new gj();
  
  static
  {
    a(new ae());
  }
  
  public static c a()
  {
    return sc;
  }
  
  protected static void a(ae paramae)
  {
    synchronized (a)
    {
      b = paramae;
      return;
    }
  }
  
  public static a b()
  {
    return sd;
  }
  
  public static n c()
  {
    return se;
  }
  
  public static lk d()
  {
    return sf;
  }
  
  public static oe e()
  {
    return sg;
  }
  
  public static qh f()
  {
    return sh;
  }
  
  public static oh g()
  {
    return si;
  }
  
  public static nk h()
  {
    return sj;
  }
  
  public static te i()
  {
    return sk;
  }
  
  public static df j()
  {
    return sl;
  }
  
  public static mx k()
  {
    return sm;
  }
  
  public static cx l()
  {
    return sn;
  }
  
  public static cw m()
  {
    return so;
  }
  
  public static cy n()
  {
    return sp;
  }
  
  public static k o()
  {
    return sq;
  }
  
  public static pd p()
  {
    return sr;
  }
  
  public static id q()
  {
    return ss;
  }
  
  public static gj r()
  {
    return st;
  }
  
  private static ae s()
  {
    synchronized (a)
    {
      ae localae = b;
      return localae;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.ae
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
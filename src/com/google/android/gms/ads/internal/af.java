package com.google.android.gms.ads.internal;

import android.content.Context;
import android.os.RemoteException;
import android.view.View;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.ViewTreeObserver.OnScrollChangedListener;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.client.am;
import com.google.android.gms.ads.internal.client.m;
import com.google.android.gms.ads.internal.client.o;
import com.google.android.gms.ads.internal.client.r;
import com.google.android.gms.ads.internal.formats.NativeAdOptionsParcel;
import com.google.android.gms.ads.internal.purchase.n;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.a;
import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.internal.cz;
import com.google.android.gms.internal.dd;
import com.google.android.gms.internal.dn;
import com.google.android.gms.internal.em;
import com.google.android.gms.internal.ep;
import com.google.android.gms.internal.es;
import com.google.android.gms.internal.ev;
import com.google.android.gms.internal.ii;
import com.google.android.gms.internal.kj;
import com.google.android.gms.internal.kv;
import com.google.android.gms.internal.me;
import com.google.android.gms.internal.ng;
import com.google.android.gms.internal.nh;
import com.google.android.gms.internal.ni;
import com.google.android.gms.internal.nk;
import com.google.android.gms.internal.nn;
import com.google.android.gms.internal.np;
import com.google.android.gms.internal.pg;
import com.google.android.gms.internal.qa;
import com.google.android.gms.internal.qb;
import com.google.android.gms.internal.sz;
import java.util.HashSet;
import java.util.List;
import java.util.UUID;

@me
public final class af
  implements ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener
{
  public nn A = null;
  View B = null;
  public int C = 0;
  boolean D = false;
  boolean E = false;
  private HashSet<ni> F = null;
  private int G = -1;
  private int H = -1;
  private pg I;
  final String a;
  public String b;
  public final Context c;
  final com.google.android.gms.internal.aj d;
  public final VersionInfoParcel e;
  ag f;
  public np g;
  public np h;
  public AdSizeParcel i;
  public ng j;
  public nh k;
  public ni l;
  o m;
  r n;
  com.google.android.gms.ads.internal.client.aj o;
  am p;
  kj q;
  kv r;
  em s;
  ep t;
  sz<String, es> u;
  sz<String, ev> v;
  NativeAdOptionsParcel w;
  dn x;
  List<String> y;
  n z;
  
  public af(Context paramContext, AdSizeParcel paramAdSizeParcel, String paramString, VersionInfoParcel paramVersionInfoParcel)
  {
    this(paramContext, paramAdSizeParcel, paramString, paramVersionInfoParcel, null);
  }
  
  af(Context paramContext, AdSizeParcel paramAdSizeParcel, String paramString, VersionInfoParcel paramVersionInfoParcel, com.google.android.gms.internal.aj paramaj)
  {
    cz.a(paramContext);
    if (ae.h().e() != null)
    {
      List localList = cz.a();
      if (d != 0) {
        localList.add(Integer.toString(d));
      }
      ae.h().e().a(localList);
    }
    a = UUID.randomUUID().toString();
    if ((f) || (j))
    {
      f = null;
      i = paramAdSizeParcel;
      b = paramString;
      c = paramContext;
      e = paramVersionInfoParcel;
      if (paramaj == null) {
        break label231;
      }
    }
    for (;;)
    {
      d = paramaj;
      I = new pg(200L);
      v = new sz();
      return;
      f = new ag(paramContext, this, this);
      f.setMinimumWidth(h);
      f.setMinimumHeight(e);
      f.setVisibility(4);
      break;
      label231:
      paramaj = new com.google.android.gms.internal.aj(new p(this));
    }
  }
  
  private void b(boolean paramBoolean)
  {
    boolean bool = true;
    if ((f == null) || (j == null) || (j.b == null)) {}
    do
    {
      do
      {
        return;
      } while ((!j.b.i().b()) || ((paramBoolean) && (!I.a())));
      localObject = new int[2];
      f.getLocationOnScreen((int[])localObject);
      i1 = m.a().b(c, localObject[0]);
      i2 = m.a().b(c, localObject[1]);
    } while ((i1 == G) && (i2 == H));
    G = i1;
    H = i2;
    Object localObject = j.b.i();
    int i1 = G;
    int i2 = H;
    if (!paramBoolean) {}
    for (paramBoolean = bool;; paramBoolean = false)
    {
      ((qb)localObject).a(i1, i2, paramBoolean);
      return;
    }
  }
  
  public HashSet<ni> a()
  {
    return F;
  }
  
  public void a(HashSet<ni> paramHashSet)
  {
    F = paramHashSet;
  }
  
  public void a(boolean paramBoolean)
  {
    if (C == 0) {
      c();
    }
    if (g != null) {
      g.i();
    }
    if (h != null) {
      h.i();
    }
    if (paramBoolean) {
      j = null;
    }
  }
  
  public void b()
  {
    if ((j != null) && (j.b != null)) {
      j.b.destroy();
    }
  }
  
  public void c()
  {
    if ((j != null) && (j.b != null)) {
      j.b.stopLoading();
    }
  }
  
  public void d()
  {
    if ((j != null) && (j.m != null)) {}
    try
    {
      j.m.c();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      b.e("Could not destroy mediation adapter.");
    }
  }
  
  public boolean e()
  {
    return C == 0;
  }
  
  public boolean f()
  {
    return C == 1;
  }
  
  public void g()
  {
    if (f != null) {
      f.b();
    }
  }
  
  public void h()
  {
    l.a(j.t);
    l.b(j.u);
    l.a(i.f);
    l.b(j.k);
  }
  
  public void i()
  {
    g();
    n = null;
    o = null;
    r = null;
    q = null;
    x = null;
    p = null;
    a(false);
    if (f != null) {
      f.removeAllViews();
    }
    b();
    d();
    j = null;
  }
  
  public void onGlobalLayout()
  {
    b(false);
  }
  
  public void onScrollChanged()
  {
    b(true);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.af
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
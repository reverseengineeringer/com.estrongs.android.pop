package com.google.android.gms.ads.internal;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.DisplayMetrics;
import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.client.am;
import com.google.android.gms.ads.internal.overlay.p;
import com.google.android.gms.ads.internal.purchase.GInAppPurchaseManagerInfoParcel;
import com.google.android.gms.ads.internal.purchase.e;
import com.google.android.gms.ads.internal.purchase.g;
import com.google.android.gms.ads.internal.purchase.h;
import com.google.android.gms.ads.internal.purchase.k;
import com.google.android.gms.ads.internal.purchase.n;
import com.google.android.gms.ads.internal.request.CapabilityParcel;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.internal.bn;
import com.google.android.gms.internal.at;
import com.google.android.gms.internal.cz;
import com.google.android.gms.internal.dh;
import com.google.android.gms.internal.fy;
import com.google.android.gms.internal.hs;
import com.google.android.gms.internal.hw;
import com.google.android.gms.internal.hx;
import com.google.android.gms.internal.hy;
import com.google.android.gms.internal.id;
import com.google.android.gms.internal.if;
import com.google.android.gms.internal.ii;
import com.google.android.gms.internal.kc;
import com.google.android.gms.internal.kj;
import com.google.android.gms.internal.kv;
import com.google.android.gms.internal.me;
import com.google.android.gms.internal.ng;
import com.google.android.gms.internal.ni;
import com.google.android.gms.internal.nk;
import com.google.android.gms.internal.nn;
import com.google.android.gms.internal.oe;
import com.google.android.gms.internal.oh;
import com.google.android.gms.internal.qa;
import com.google.android.gms.internal.sz;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

@me
public abstract class b
  extends a
  implements p, com.google.android.gms.ads.internal.purchase.m, fy, hx
{
  protected final if g;
  protected transient boolean h;
  private final Messenger i;
  
  public b(Context paramContext, AdSizeParcel paramAdSizeParcel, String paramString, if paramif, VersionInfoParcel paramVersionInfoParcel, i parami)
  {
    this(new af(paramContext, paramAdSizeParcel, paramString, paramVersionInfoParcel), paramif, null, parami);
  }
  
  b(af paramaf, if paramif, ab paramab, i parami)
  {
    super(paramaf, paramab, parami);
    g = paramif;
    i = new Messenger(new kc(c.c));
    h = false;
  }
  
  private com.google.android.gms.ads.internal.request.a a(AdRequestParcel paramAdRequestParcel, Bundle paramBundle)
  {
    ApplicationInfo localApplicationInfo = c.c.getApplicationInfo();
    DisplayMetrics localDisplayMetrics;
    String str1;
    Object localObject;
    int k;
    String str2;
    boolean bool3;
    long l1;
    Bundle localBundle;
    ArrayList localArrayList;
    PackageInfo localPackageInfo2;
    try
    {
      PackageInfo localPackageInfo1 = c.c.getPackageManager().getPackageInfo(packageName, 0);
      localDisplayMetrics = c.c.getResources().getDisplayMetrics();
      str1 = null;
      localObject = str1;
      if (c.f != null)
      {
        localObject = str1;
        if (c.f.getParent() != null)
        {
          localObject = new int[2];
          c.f.getLocationOnScreen((int[])localObject);
          int m = localObject[0];
          int n = localObject[1];
          int i1 = c.f.getWidth();
          int i2 = c.f.getHeight();
          k = 0;
          j = k;
          if (c.f.isShown())
          {
            j = k;
            if (m + i1 > 0)
            {
              j = k;
              if (n + i2 > 0)
              {
                j = k;
                if (m <= widthPixels)
                {
                  j = k;
                  if (n <= heightPixels) {
                    j = 1;
                  }
                }
              }
            }
          }
          localObject = new Bundle(5);
          ((Bundle)localObject).putInt("x", m);
          ((Bundle)localObject).putInt("y", n);
          ((Bundle)localObject).putInt("width", i1);
          ((Bundle)localObject).putInt("height", i2);
          ((Bundle)localObject).putInt("visible", j);
        }
      }
      str1 = ae.h().c();
      c.l = new ni(str1, c.b);
      c.l.a(paramAdRequestParcel);
      str2 = ae.e().a(c.c, c.f, c.i);
      k = v.a(c.c).c();
      bool3 = v.a(c.c).a();
      l2 = 0L;
      l1 = l2;
      if (c.p == null) {}
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      try
      {
        l1 = c.p.b();
        String str3 = UUID.randomUUID().toString();
        localBundle = ae.h().a(c.c, this, str1);
        localArrayList = new ArrayList();
        int j = 0;
        while (j < c.v.size())
        {
          localArrayList.add(c.v.b(j));
          j += 1;
          continue;
          localNameNotFoundException = localNameNotFoundException;
          localPackageInfo2 = null;
        }
      }
      catch (RemoteException localRemoteException)
      {
        for (;;)
        {
          long l2;
          com.google.android.gms.ads.internal.util.client.b.e("Cannot get correlation id, default to 0.");
          l1 = l2;
        }
      }
    }
    boolean bool1;
    if (c.q != null)
    {
      bool1 = true;
      if ((c.r == null) || (!ae.h().l())) {
        break label649;
      }
    }
    label649:
    for (boolean bool2 = true;; bool2 = false)
    {
      return new com.google.android.gms.ads.internal.request.a((Bundle)localObject, paramAdRequestParcel, c.i, c.b, localApplicationInfo, localPackageInfo2, str1, ae.h().a(), c.e, localBundle, c.y, localArrayList, paramBundle, ae.h().g(), i, widthPixels, heightPixels, density, str2, bool3, k, l1, localRemoteException, cz.a(), c.a, c.w, new CapabilityParcel(bool1, bool2));
      bool1 = false;
      break;
    }
  }
  
  public void a()
  {
    if (c.j == null)
    {
      com.google.android.gms.ads.internal.util.client.b.e("Ad state was null when trying to ping click URLs.");
      return;
    }
    if ((c.j.o != null) && (c.j.o.c != null)) {
      ae.q().a(c.c, c.e.c, c.j, c.b, false, ae.e().a(c.c, c.j.o.c, c.j.x));
    }
    if ((c.j.l != null) && (c.j.l.f != null)) {
      ae.q().a(c.c, c.e.c, c.j, c.b, false, ae.e().a(c.c, c.j.l.f, c.j.x));
    }
    super.a();
  }
  
  public void a(kj paramkj)
  {
    bn.b("setInAppPurchaseListener must be called on the main UI thread.");
    c.q = paramkj;
  }
  
  public void a(kv paramkv, String paramString)
  {
    bn.b("setPlayStorePurchaseParams must be called on the main UI thread.");
    c.z = new n(paramString);
    c.r = paramkv;
    if ((!ae.h().f()) && (paramkv != null)) {
      new com.google.android.gms.ads.internal.purchase.c(c.c, c.r, c.z).g();
    }
  }
  
  protected void a(ng paramng, boolean paramBoolean)
  {
    if (paramng == null) {
      com.google.android.gms.ads.internal.util.client.b.e("Ad state was null when trying to ping impression URLs.");
    }
    do
    {
      return;
      super.c(paramng);
      if ((o != null) && (o.d != null)) {
        ae.q().a(c.c, c.e.c, paramng, c.b, paramBoolean, ae.e().a(c.c, o.d, x));
      }
    } while ((l == null) || (l.g == null));
    ae.q().a(c.c, c.e.c, paramng, c.b, paramBoolean, ae.e().a(c.c, l.g, x));
  }
  
  public void a(String paramString, ArrayList<String> paramArrayList)
  {
    paramArrayList = new e(paramString, paramArrayList, c.c, c.e.c);
    if (c.q == null)
    {
      com.google.android.gms.ads.internal.util.client.b.e("InAppPurchaseListener is not set. Try to launch default purchase flow.");
      if (!com.google.android.gms.ads.internal.client.m.a().b(c.c))
      {
        com.google.android.gms.ads.internal.util.client.b.e("Google Play Service unavailable, cannot launch default purchase flow.");
        return;
      }
      if (c.r == null)
      {
        com.google.android.gms.ads.internal.util.client.b.e("PlayStorePurchaseListener is not set.");
        return;
      }
      if (c.z == null)
      {
        com.google.android.gms.ads.internal.util.client.b.e("PlayStorePurchaseVerifier is not initialized.");
        return;
      }
      if (c.D)
      {
        com.google.android.gms.ads.internal.util.client.b.e("An in-app purchase request is already in progress, abort");
        return;
      }
      c.D = true;
      try
      {
        if (!c.r.a(paramString))
        {
          c.D = false;
          return;
        }
      }
      catch (RemoteException paramString)
      {
        com.google.android.gms.ads.internal.util.client.b.e("Could not start In-App purchase.");
        c.D = false;
        return;
      }
      ae.o().a(c.c, c.e.f, new GInAppPurchaseManagerInfoParcel(c.c, c.z, paramArrayList, this));
      return;
    }
    try
    {
      c.q.a(paramArrayList);
      return;
    }
    catch (RemoteException paramString)
    {
      com.google.android.gms.ads.internal.util.client.b.e("Could not start In-App purchase.");
    }
  }
  
  public void a(String paramString, boolean paramBoolean, int paramInt, Intent paramIntent, g paramg)
  {
    try
    {
      if (c.r != null) {
        c.r.a(new h(c.c, paramString, paramBoolean, paramInt, paramIntent, paramg));
      }
      oe.a.postDelayed(new c(this, paramIntent), 500L);
      return;
    }
    catch (RemoteException paramString)
    {
      for (;;)
      {
        com.google.android.gms.ads.internal.util.client.b.e("Fail to invoke PlayStorePurchaseListener.");
      }
    }
  }
  
  public boolean a(AdRequestParcel paramAdRequestParcel, dh paramdh)
  {
    if (!s()) {
      return false;
    }
    Bundle localBundle = a(ae.h().a(c.c));
    b.a();
    c.C = 0;
    paramAdRequestParcel = a(paramAdRequestParcel, localBundle);
    paramdh.a("seq_num", g);
    if (x != null) {
      paramdh.a("request_id", x);
    }
    if (f != null) {
      paramdh.a("app_version", String.valueOf(f.versionCode));
    }
    c.g = ae.a().a(c.c, paramAdRequestParcel, c.d, this);
    return true;
  }
  
  protected boolean a(AdRequestParcel paramAdRequestParcel, ng paramng, boolean paramBoolean)
  {
    if ((!paramBoolean) && (c.e()))
    {
      if (h <= 0L) {
        break label43;
      }
      b.a(paramAdRequestParcel, h);
    }
    for (;;)
    {
      return b.d();
      label43:
      if ((o != null) && (o.g > 0L)) {
        b.a(paramAdRequestParcel, o.g);
      } else if ((!k) && (d == 2)) {
        b.a(paramAdRequestParcel);
      }
    }
  }
  
  boolean a(ng paramng)
  {
    boolean bool = false;
    Object localObject;
    if (d != null)
    {
      localObject = d;
      d = null;
    }
    for (;;)
    {
      return a((AdRequestParcel)localObject, paramng, bool);
      AdRequestParcel localAdRequestParcel = a;
      localObject = localAdRequestParcel;
      if (d != null)
      {
        bool = d.getBoolean("_noRefresh", false);
        localObject = localAdRequestParcel;
      }
    }
  }
  
  protected boolean a(ng paramng1, ng paramng2)
  {
    int j = 0;
    if ((paramng1 != null) && (p != null)) {
      p.a(null);
    }
    if (p != null) {
      p.a(this);
    }
    int k;
    if (o != null)
    {
      k = o.j;
      j = o.k;
    }
    for (;;)
    {
      c.A.a(k, j);
      return true;
      k = 0;
    }
  }
  
  public void b(ng paramng)
  {
    super.b(paramng);
    if ((d == 3) && (o != null) && (o.e != null))
    {
      com.google.android.gms.ads.internal.util.client.b.a("Pinging no fill URLs.");
      ae.q().a(c.c, c.e.c, paramng, c.b, false, o.e);
    }
  }
  
  protected boolean b(AdRequestParcel paramAdRequestParcel)
  {
    return (super.b(paramAdRequestParcel)) && (!h);
  }
  
  public void e()
  {
    bn.b("pause must be called on the main UI thread.");
    if ((c.j != null) && (c.j.b != null) && (c.e())) {
      ae.g().a(c.j.b.getWebView());
    }
    if ((c.j != null) && (c.j.m != null)) {}
    try
    {
      c.j.m.d();
      e.d(c.j);
      b.b();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      for (;;)
      {
        com.google.android.gms.ads.internal.util.client.b.e("Could not pause mediation adapter.");
      }
    }
  }
  
  public void f()
  {
    bn.b("resume must be called on the main UI thread.");
    if ((c.j != null) && (c.j.b != null) && (c.e())) {
      ae.g().b(c.j.b.getWebView());
    }
    if ((c.j != null) && (c.j.m != null)) {}
    try
    {
      c.j.m.e();
      b.c();
      e.e(c.j);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      for (;;)
      {
        com.google.android.gms.ads.internal.util.client.b.e("Could not resume mediation adapter.");
      }
    }
  }
  
  public void g()
  {
    throw new IllegalStateException("showInterstitial is not supported for current ad type");
  }
  
  public String k()
  {
    if (c.j == null) {
      return null;
    }
    return c.j.n;
  }
  
  public void q_()
  {
    e.b(c.j);
    h = false;
    o();
    c.l.c();
  }
  
  public void r_()
  {
    h = true;
    p();
  }
  
  protected boolean s()
  {
    boolean bool = true;
    if ((!ae.e().a(c.c.getPackageManager(), c.c.getPackageName(), "android.permission.INTERNET")) || (!ae.e().a(c.c))) {
      bool = false;
    }
    return bool;
  }
  
  public void t()
  {
    a();
  }
  
  public void u()
  {
    q_();
  }
  
  public void v()
  {
    m();
  }
  
  public void w()
  {
    r_();
  }
  
  public void x()
  {
    if (c.j != null) {
      com.google.android.gms.ads.internal.util.client.b.e("Mediation adapter " + c.j.n + " refreshed, but mediation adapters should never refresh.");
    }
    a(c.j, true);
    q();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
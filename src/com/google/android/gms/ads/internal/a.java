package com.google.android.gms.ads.internal;

import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import android.view.View;
import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.client.aj;
import com.google.android.gms.ads.internal.client.am;
import com.google.android.gms.ads.internal.client.m;
import com.google.android.gms.ads.internal.client.o;
import com.google.android.gms.ads.internal.client.r;
import com.google.android.gms.ads.internal.overlay.w;
import com.google.android.gms.ads.internal.request.AdResponseParcel;
import com.google.android.gms.ads.internal.request.d;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.common.internal.bn;
import com.google.android.gms.dynamic.e;
import com.google.android.gms.dynamic.h;
import com.google.android.gms.internal.at;
import com.google.android.gms.internal.bw;
import com.google.android.gms.internal.bz;
import com.google.android.gms.internal.cr;
import com.google.android.gms.internal.cz;
import com.google.android.gms.internal.dd;
import com.google.android.gms.internal.dg;
import com.google.android.gms.internal.dh;
import com.google.android.gms.internal.dn;
import com.google.android.gms.internal.fd;
import com.google.android.gms.internal.kj;
import com.google.android.gms.internal.kv;
import com.google.android.gms.internal.ll;
import com.google.android.gms.internal.me;
import com.google.android.gms.internal.ng;
import com.google.android.gms.internal.nh;
import com.google.android.gms.internal.ni;
import com.google.android.gms.internal.nk;
import com.google.android.gms.internal.nm;
import com.google.android.gms.internal.nn;
import com.google.android.gms.internal.oe;
import com.google.android.gms.internal.oh;
import com.google.android.gms.internal.qa;
import com.google.android.gms.internal.qb;
import java.util.HashSet;

@me
public abstract class a
  extends com.google.android.gms.ads.internal.client.ae
  implements com.google.android.gms.ads.internal.client.a, w, d, fd, ll, nm
{
  boolean a = false;
  protected final ab b;
  protected final af c;
  protected transient AdRequestParcel d;
  protected final at e;
  protected final i f;
  private dh g;
  private dg h;
  private dg i;
  
  a(af paramaf, ab paramab, i parami)
  {
    c = paramaf;
    if (paramab != null) {}
    for (;;)
    {
      b = paramab;
      f = parami;
      ae.e().b(c.c);
      ae.h().a(c.c, c.e);
      e = ae.h().j();
      return;
      paramab = new ab(this);
    }
  }
  
  private boolean s()
  {
    b.c("Ad leaving application.");
    if (c.n == null) {
      return false;
    }
    try
    {
      c.n.b();
      return true;
    }
    catch (RemoteException localRemoteException)
    {
      b.d("Could not call AdListener.onAdLeftApplication().", localRemoteException);
    }
    return false;
  }
  
  long a(String paramString)
  {
    int m = paramString.indexOf("ufe");
    int k = paramString.indexOf(',', m);
    int j = k;
    if (k == -1) {
      j = paramString.length();
    }
    try
    {
      long l = Long.parseLong(paramString.substring(m + 4, j));
      return l;
    }
    catch (IndexOutOfBoundsException paramString)
    {
      b.e("Invalid index for Url fetch time in CSI latency info.");
      return -1L;
    }
    catch (NumberFormatException paramString)
    {
      for (;;)
      {
        b.e("Cannot find valid format of Url fetch time in CSI latency info.");
      }
    }
  }
  
  Bundle a(bz parambz)
  {
    if (parambz == null) {}
    for (;;)
    {
      return null;
      if (parambz.f()) {
        parambz.d();
      }
      Object localObject = parambz.c();
      if (localObject != null)
      {
        parambz = ((bw)localObject).b();
        b.a("In AdManger: loadAd, " + ((bw)localObject).toString());
      }
      while (parambz != null)
      {
        localObject = new Bundle(1);
        ((Bundle)localObject).putString("fingerprint", parambz);
        ((Bundle)localObject).putInt("v", 1);
        return (Bundle)localObject;
        parambz = null;
      }
    }
  }
  
  public void a()
  {
    if (c.j == null) {
      b.e("Ad state was null when trying to ping click URLs.");
    }
    do
    {
      return;
      b.a("Pinging click URLs.");
      c.l.b();
      if (c.j.c != null) {
        ae.e().a(c.c, c.e.c, ae.e().a(c.c, c.j.c, c.j.x));
      }
    } while (c.m == null);
    try
    {
      c.m.a();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      b.d("Could not notify onAdClicked event.", localRemoteException);
    }
  }
  
  protected void a(View paramView)
  {
    c.f.addView(paramView, ae.g().d());
  }
  
  public void a(AdSizeParcel paramAdSizeParcel)
  {
    bn.b("setAdSize must be called on the main UI thread.");
    c.i = paramAdSizeParcel;
    if ((c.j != null) && (c.j.b != null) && (c.C == 0)) {
      c.j.b.a(paramAdSizeParcel);
    }
    if (c.f == null) {
      return;
    }
    if (c.f.getChildCount() > 1) {
      c.f.removeView(c.f.getNextView());
    }
    c.f.setMinimumWidth(h);
    c.f.setMinimumHeight(e);
    c.f.requestLayout();
  }
  
  public void a(aj paramaj)
  {
    bn.b("setAppEventListener must be called on the main UI thread.");
    c.o = paramaj;
  }
  
  public void a(am paramam)
  {
    bn.b("setCorrelationIdProvider must be called on the main UI thread");
    c.p = paramam;
  }
  
  public void a(o paramo)
  {
    bn.b("setAdListener must be called on the main UI thread.");
    c.m = paramo;
  }
  
  public void a(r paramr)
  {
    bn.b("setAdListener must be called on the main UI thread.");
    c.n = paramr;
  }
  
  public void a(dn paramdn)
  {
    throw new IllegalStateException("setOnCustomRenderedAdLoadedListener is not supported for current ad type");
  }
  
  public void a(kj paramkj)
  {
    throw new IllegalStateException("setInAppPurchaseListener is not supported for current ad type");
  }
  
  public void a(kv paramkv, String paramString)
  {
    throw new IllegalStateException("setPlayStorePurchaseParams is not supported for current ad type");
  }
  
  public void a(nh paramnh)
  {
    if ((b.o != -1L) && (!TextUtils.isEmpty(b.A)))
    {
      long l = a(b.A);
      if (l != -1L)
      {
        dg localdg = g.a(l + b.o);
        g.a(localdg, new String[] { "stc" });
      }
    }
    g.a(b.A);
    g.a(h, new String[] { "arf" });
    i = g.a();
    c.g = null;
    c.k = paramnh;
    a(paramnh, g);
  }
  
  protected abstract void a(nh paramnh, dh paramdh);
  
  public void a(String paramString1, String paramString2)
  {
    if (c.o != null) {}
    try
    {
      c.o.a(paramString1, paramString2);
      return;
    }
    catch (RemoteException paramString1)
    {
      b.d("Could not call the AppEventListener.", paramString1);
    }
  }
  
  public void a(HashSet<ni> paramHashSet)
  {
    c.a(paramHashSet);
  }
  
  public void a(boolean paramBoolean)
  {
    throw new UnsupportedOperationException("Attempt to call setManualImpressionsEnabled for an unsupported ad type.");
  }
  
  protected boolean a(int paramInt)
  {
    b.e("Failed to load ad: " + paramInt);
    a = false;
    if (c.n == null) {
      return false;
    }
    try
    {
      c.n.a(paramInt);
      return true;
    }
    catch (RemoteException localRemoteException)
    {
      b.d("Could not call AdListener.onAdFailedToLoad().", localRemoteException);
    }
    return false;
  }
  
  public boolean a(AdRequestParcel paramAdRequestParcel)
  {
    bn.b("loadAd must be called on the main UI thread.");
    if ((c.g != null) || (c.h != null))
    {
      if (d != null) {
        b.e("Aborting last ad request since another ad request is already in progress. The current request object will still be cached for future refreshes.");
      }
      d = paramAdRequestParcel;
      return false;
    }
    b.c("Starting ad request.");
    a = true;
    n();
    h = g.a();
    if (!g) {
      b.c("Use AdRequest.Builder.addTestDevice(\"" + m.a().a(c.c) + "\") to get test ads on this device.");
    }
    return a(paramAdRequestParcel, g);
  }
  
  protected abstract boolean a(AdRequestParcel paramAdRequestParcel, dh paramdh);
  
  boolean a(ng paramng)
  {
    return false;
  }
  
  protected abstract boolean a(ng paramng1, ng paramng2);
  
  public e b()
  {
    bn.b("getAdFrame must be called on the main UI thread.");
    return h.a(c.f);
  }
  
  public void b(ng paramng)
  {
    g.a(i, new String[] { "awr" });
    c.h = null;
    if ((d != -2) && (d != 3)) {
      ae.h().a(c.a());
    }
    if (d == -1) {
      a = false;
    }
    do
    {
      return;
      if (a(paramng)) {
        b.a("Ad refresh scheduled.");
      }
      if (d != -2)
      {
        a(d);
        return;
      }
      if (c.A == null) {
        c.A = new nn(c.b);
      }
      e.b(c.j);
    } while (!a(c.j, paramng));
    c.j = paramng;
    c.h();
    dh localdh = g;
    if (c.j.a())
    {
      paramng = "1";
      label204:
      localdh.a("is_mraid", paramng);
      localdh = g;
      if (!c.j.k) {
        break label379;
      }
      paramng = "1";
      label234:
      localdh.a("is_mediation", paramng);
      if ((c.j.b != null) && (c.j.b.i() != null))
      {
        localdh = g;
        if (!c.j.b.i().c()) {
          break label386;
        }
      }
    }
    label379:
    label386:
    for (paramng = "1";; paramng = "0")
    {
      localdh.a("is_video", paramng);
      g.a(h, new String[] { "ttc" });
      if (ae.h().e() != null) {
        ae.h().e().a(g);
      }
      if (!c.e()) {
        break;
      }
      q();
      return;
      paramng = "0";
      break label204;
      paramng = "0";
      break label234;
    }
  }
  
  protected boolean b(AdRequestParcel paramAdRequestParcel)
  {
    paramAdRequestParcel = c.f.getParent();
    return ((paramAdRequestParcel instanceof View)) && (((View)paramAdRequestParcel).isShown()) && (ae.e().a());
  }
  
  public void c()
  {
    bn.b("destroy must be called on the main UI thread.");
    b.a();
    e.c(c.j);
    c.i();
  }
  
  public void c(AdRequestParcel paramAdRequestParcel)
  {
    if (b(paramAdRequestParcel))
    {
      a(paramAdRequestParcel);
      return;
    }
    b.c("Ad is not visible. Not refreshing ad.");
    b.a(paramAdRequestParcel);
  }
  
  protected void c(ng paramng)
  {
    if (paramng == null) {
      b.e("Ad state was null when trying to ping impression URLs.");
    }
    do
    {
      return;
      b.a("Pinging Impression URLs.");
      c.l.a();
    } while (e == null);
    ae.e().a(c.c, c.e.c, ae.e().a(c.c, e, x));
  }
  
  public boolean d()
  {
    bn.b("isLoaded must be called on the main UI thread.");
    return (c.g == null) && (c.h == null) && (c.j != null);
  }
  
  public void e()
  {
    bn.b("pause must be called on the main UI thread.");
  }
  
  public void f()
  {
    bn.b("resume must be called on the main UI thread.");
  }
  
  public void h()
  {
    bn.b("stopLoading must be called on the main UI thread.");
    a = false;
    c.a(true);
  }
  
  public void i()
  {
    bn.b("recordManualImpression must be called on the main UI thread.");
    if (c.j == null) {
      b.e("Ad state was null when trying to ping manual tracking URLs.");
    }
    do
    {
      return;
      b.a("Pinging manual tracking URLs.");
    } while (c.j.f == null);
    ae.e().a(c.c, c.e.c, ae.e().a(c.c, c.j.f, c.j.x));
  }
  
  public AdSizeParcel j()
  {
    bn.b("getAdSize must be called on the main UI thread.");
    return c.i;
  }
  
  public boolean l()
  {
    return a;
  }
  
  public void m()
  {
    s();
  }
  
  void n()
  {
    g = new dh(((Boolean)cz.G.c()).booleanValue(), "load_ad", c.i.c);
    h = new dg(-1L, null, null);
    i = new dg(-1L, null, null);
  }
  
  protected boolean o()
  {
    b.d("Ad closing.");
    if (c.n == null) {
      return false;
    }
    try
    {
      c.n.a();
      return true;
    }
    catch (RemoteException localRemoteException)
    {
      b.d("Could not call AdListener.onAdClosed().", localRemoteException);
    }
    return false;
  }
  
  protected boolean p()
  {
    b.c("Ad opening.");
    if (c.n == null) {
      return false;
    }
    try
    {
      c.n.d();
      return true;
    }
    catch (RemoteException localRemoteException)
    {
      b.d("Could not call AdListener.onAdOpened().", localRemoteException);
    }
    return false;
  }
  
  protected boolean q()
  {
    b.c("Ad finished loading.");
    a = false;
    if (c.n == null) {
      return false;
    }
    try
    {
      c.n.c();
      return true;
    }
    catch (RemoteException localRemoteException)
    {
      b.d("Could not call AdListener.onAdLoaded().", localRemoteException);
    }
    return false;
  }
  
  protected void r()
  {
    c(c.j);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
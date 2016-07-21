package com.google.android.gms.ads.internal;

import android.content.Context;
import android.os.Handler;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.formats.NativeAdOptionsParcel;
import com.google.android.gms.ads.internal.formats.d;
import com.google.android.gms.ads.internal.formats.e;
import com.google.android.gms.ads.internal.formats.f;
import com.google.android.gms.ads.internal.formats.g;
import com.google.android.gms.ads.internal.formats.o;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.internal.bn;
import com.google.android.gms.internal.dh;
import com.google.android.gms.internal.dn;
import com.google.android.gms.internal.dr;
import com.google.android.gms.internal.em;
import com.google.android.gms.internal.ep;
import com.google.android.gms.internal.es;
import com.google.android.gms.internal.ev;
import com.google.android.gms.internal.if;
import com.google.android.gms.internal.ii;
import com.google.android.gms.internal.io;
import com.google.android.gms.internal.ir;
import com.google.android.gms.internal.kj;
import com.google.android.gms.internal.lk;
import com.google.android.gms.internal.me;
import com.google.android.gms.internal.ng;
import com.google.android.gms.internal.nh;
import com.google.android.gms.internal.oe;
import com.google.android.gms.internal.sz;
import java.util.List;

@me
public class w
  extends b
{
  public w(Context paramContext, AdSizeParcel paramAdSizeParcel, String paramString, if paramif, VersionInfoParcel paramVersionInfoParcel)
  {
    super(paramContext, paramAdSizeParcel, paramString, paramif, paramVersionInfoParcel, null);
  }
  
  private static d a(io paramio)
  {
    String str1 = paramio.a();
    List localList = paramio.b();
    String str2 = paramio.c();
    if (paramio.d() != null) {}
    for (dr localdr = paramio.d();; localdr = null) {
      return new d(str1, localList, str2, localdr, paramio.e(), paramio.f(), paramio.g(), paramio.h(), null, paramio.l());
    }
  }
  
  private static e a(ir paramir)
  {
    String str1 = paramir.a();
    List localList = paramir.b();
    String str2 = paramir.c();
    if (paramir.d() != null) {}
    for (dr localdr = paramir.d();; localdr = null) {
      return new e(str1, localList, str2, localdr, paramir.e(), paramir.f(), null, paramir.j());
    }
  }
  
  private void a(d paramd)
  {
    oe.a.post(new y(this, paramd));
  }
  
  private void a(e parame)
  {
    oe.a.post(new z(this, parame));
  }
  
  private void a(ng paramng, String paramString)
  {
    oe.a.post(new aa(this, paramString, paramng));
  }
  
  public void a(NativeAdOptionsParcel paramNativeAdOptionsParcel)
  {
    bn.b("setNativeAdOptions must be called on the main UI thread.");
    c.w = paramNativeAdOptionsParcel;
  }
  
  public void a(dn paramdn)
  {
    throw new IllegalStateException("CustomRendering is NOT supported by NativeAdManager.");
  }
  
  public void a(em paramem)
  {
    bn.b("setOnAppInstallAdLoadedListener must be called on the main UI thread.");
    c.s = paramem;
  }
  
  public void a(ep paramep)
  {
    bn.b("setOnContentAdLoadedListener must be called on the main UI thread.");
    c.t = paramep;
  }
  
  public void a(kj paramkj)
  {
    throw new IllegalStateException("In App Purchase is NOT supported by NativeAdManager.");
  }
  
  public void a(nh paramnh, dh paramdh)
  {
    if (d != null) {
      c.i = d;
    }
    if (e != -2)
    {
      oe.a.post(new x(this, paramnh));
      return;
    }
    c.C = 0;
    c.h = ae.d().a(c.c, this, paramnh, c.d, null, g, this, paramdh);
    com.google.android.gms.ads.internal.util.client.b.a("AdRenderer: " + c.h.getClass().getName());
  }
  
  public void a(sz<String, ev> paramsz)
  {
    bn.b("setOnCustomTemplateAdLoadedListeners must be called on the main UI thread.");
    c.v = paramsz;
  }
  
  public void a(List<String> paramList)
  {
    bn.b("setNativeTemplates must be called on the main UI thread.");
    c.y = paramList;
  }
  
  protected boolean a(AdRequestParcel paramAdRequestParcel, ng paramng, boolean paramBoolean)
  {
    return b.d();
  }
  
  protected boolean a(ng paramng1, ng paramng2)
  {
    a(null);
    if (!c.e()) {
      throw new IllegalStateException("Native ad DOES NOT have custom rendering mode.");
    }
    if (k) {}
    for (;;)
    {
      try
      {
        localObject1 = m.h();
        localObject2 = m.i();
        if (localObject1 == null) {
          continue;
        }
        localObject2 = a((io)localObject1);
        ((d)localObject2).a(new g(c.c, this, c.d, (io)localObject1));
        a((d)localObject2);
      }
      catch (RemoteException localRemoteException)
      {
        Object localObject1;
        Object localObject2;
        com.google.android.gms.ads.internal.util.client.b.d("Failed to get native ad mapper", localRemoteException);
        continue;
        com.google.android.gms.ads.internal.util.client.b.e("No matching mapper for retrieved native ad template.");
        a(0);
        return false;
      }
      return super.a(paramng1, paramng2);
      if (localObject2 != null)
      {
        localObject1 = a((ir)localObject2);
        ((e)localObject1).a(new g(c.c, this, c.d, (ir)localObject2));
        a((e)localObject1);
      }
      else
      {
        o localo = w;
        if (((localo instanceof e)) && (c.t != null))
        {
          a((e)w);
        }
        else if (((localo instanceof d)) && (c.s != null))
        {
          a((d)w);
        }
        else
        {
          if ((!(localo instanceof f)) || (c.v == null) || (c.v.get(((f)localo).k()) == null)) {
            break;
          }
          a(paramng2, ((f)localo).k());
        }
      }
    }
    com.google.android.gms.ads.internal.util.client.b.e("No matching listener for retrieved native ad template.");
    a(0);
    return false;
  }
  
  public es b(String paramString)
  {
    bn.b("getOnCustomClickListener must be called on the main UI thread.");
    return (es)c.u.get(paramString);
  }
  
  public void b(sz<String, es> paramsz)
  {
    bn.b("setOnCustomClickListener must be called on the main UI thread.");
    c.u = paramsz;
  }
  
  public void e()
  {
    throw new IllegalStateException("Native Ad DOES NOT support pause().");
  }
  
  public void f()
  {
    throw new IllegalStateException("Native Ad DOES NOT support resume().");
  }
  
  public void g()
  {
    throw new IllegalStateException("Interstitial is NOT supported by NativeAdManager.");
  }
  
  public void r()
  {
    a(c.j, false);
  }
  
  public sz<String, ev> y()
  {
    bn.b("getOnCustomTemplateAdLoadedListeners must be called on the main UI thread.");
    return c.v;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.w
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
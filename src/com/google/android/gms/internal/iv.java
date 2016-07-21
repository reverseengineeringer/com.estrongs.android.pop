package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.a.c;
import com.google.android.gms.ads.a.g;
import com.google.android.gms.ads.a.k;
import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.formats.NativeAdOptionsParcel;
import com.google.android.gms.ads.internal.reward.mediation.client.d;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.json.JSONObject;

@me
public final class iv
  extends ij
{
  private final com.google.android.gms.ads.a.b a;
  private iw b;
  
  public iv(com.google.android.gms.ads.a.b paramb)
  {
    a = paramb;
  }
  
  private Bundle a(String paramString1, int paramInt, String paramString2)
  {
    com.google.android.gms.ads.internal.util.client.b.e("Server parameters: " + paramString1);
    Bundle localBundle;
    try
    {
      localBundle = new Bundle();
      if (paramString1 != null)
      {
        paramString1 = new JSONObject(paramString1);
        localBundle = new Bundle();
        Iterator localIterator = paramString1.keys();
        while (localIterator.hasNext())
        {
          String str = (String)localIterator.next();
          localBundle.putString(str, paramString1.getString(str));
        }
      }
      if (!(a instanceof com.google.ads.mediation.a.a)) {
        break label138;
      }
    }
    catch (Throwable paramString1)
    {
      com.google.android.gms.ads.internal.util.client.b.d("Could not get Server Parameters Bundle.", paramString1);
      throw new RemoteException();
    }
    localBundle.putString("adJson", paramString2);
    localBundle.putInt("tagForChildDirectedTreatment", paramInt);
    label138:
    return localBundle;
  }
  
  public com.google.android.gms.dynamic.e a()
  {
    if (!(a instanceof c))
    {
      com.google.android.gms.ads.internal.util.client.b.e("MediationAdapter is not a MediationBannerAdapter: " + a.getClass().getCanonicalName());
      throw new RemoteException();
    }
    try
    {
      com.google.android.gms.dynamic.e locale = com.google.android.gms.dynamic.h.a(((c)a).d());
      return locale;
    }
    catch (Throwable localThrowable)
    {
      com.google.android.gms.ads.internal.util.client.b.d("Could not get banner view from adapter.", localThrowable);
      throw new RemoteException();
    }
  }
  
  public void a(AdRequestParcel paramAdRequestParcel, String paramString)
  {
    if (!(a instanceof com.google.android.gms.ads.b.a.a))
    {
      com.google.android.gms.ads.internal.util.client.b.e("MediationAdapter is not a MediationRewardedVideoAdAdapter: " + a.getClass().getCanonicalName());
      throw new RemoteException();
    }
    com.google.android.gms.ads.internal.util.client.b.a("Requesting rewarded video ad from adapter.");
    for (;;)
    {
      try
      {
        com.google.android.gms.ads.b.a.a locala = (com.google.android.gms.ads.b.a.a)a;
        if (f == null) {
          break label204;
        }
        localObject1 = new HashSet(f);
        Object localObject2;
        if (c == -1L)
        {
          localObject2 = null;
          localObject2 = new iu((Date)localObject2, e, (Set)localObject1, l, g, h);
          if (n != null)
          {
            localObject1 = n.getBundle(locala.getClass().getName());
            locala.a((com.google.android.gms.ads.a.a)localObject2, a(paramString, h, null), (Bundle)localObject1);
          }
        }
        else
        {
          localObject2 = new Date(c);
          continue;
        }
        localObject1 = null;
      }
      catch (Throwable paramAdRequestParcel)
      {
        com.google.android.gms.ads.internal.util.client.b.d("Could not load rewarded video ad from adapter.", paramAdRequestParcel);
        throw new RemoteException();
      }
      continue;
      label204:
      Object localObject1 = null;
    }
  }
  
  public void a(com.google.android.gms.dynamic.e parame, AdRequestParcel paramAdRequestParcel, String paramString1, com.google.android.gms.ads.internal.reward.mediation.client.a parama, String paramString2)
  {
    if (!(a instanceof com.google.android.gms.ads.b.a.a))
    {
      com.google.android.gms.ads.internal.util.client.b.e("MediationAdapter is not a MediationRewardedVideoAdAdapter: " + a.getClass().getCanonicalName());
      throw new RemoteException();
    }
    com.google.android.gms.ads.internal.util.client.b.a("Initialize rewarded video adapter.");
    for (;;)
    {
      try
      {
        com.google.android.gms.ads.b.a.a locala = (com.google.android.gms.ads.b.a.a)a;
        if (f == null) {
          break label227;
        }
        localObject1 = new HashSet(f);
        Object localObject2;
        if (c == -1L)
        {
          localObject2 = null;
          localObject2 = new iu((Date)localObject2, e, (Set)localObject1, l, g, h);
          if (n != null)
          {
            localObject1 = n.getBundle(locala.getClass().getName());
            locala.a((Context)com.google.android.gms.dynamic.h.a(parame), (com.google.android.gms.ads.a.a)localObject2, paramString1, new d(parama), a(paramString2, h, null), (Bundle)localObject1);
          }
        }
        else
        {
          localObject2 = new Date(c);
          continue;
        }
        localObject1 = null;
      }
      catch (Throwable parame)
      {
        com.google.android.gms.ads.internal.util.client.b.d("Could not initialize rewarded video adapter.", parame);
        throw new RemoteException();
      }
      continue;
      label227:
      Object localObject1 = null;
    }
  }
  
  public void a(com.google.android.gms.dynamic.e parame, AdRequestParcel paramAdRequestParcel, String paramString, il paramil)
  {
    a(parame, paramAdRequestParcel, paramString, null, paramil);
  }
  
  public void a(com.google.android.gms.dynamic.e parame, AdRequestParcel paramAdRequestParcel, String paramString1, String paramString2, il paramil)
  {
    if (!(a instanceof com.google.android.gms.ads.a.e))
    {
      com.google.android.gms.ads.internal.util.client.b.e("MediationAdapter is not a MediationInterstitialAdapter: " + a.getClass().getCanonicalName());
      throw new RemoteException();
    }
    com.google.android.gms.ads.internal.util.client.b.a("Requesting interstitial ad from adapter.");
    for (;;)
    {
      try
      {
        com.google.android.gms.ads.a.e locale = (com.google.android.gms.ads.a.e)a;
        if (f == null) {
          break label226;
        }
        localObject1 = new HashSet(f);
        Object localObject2;
        if (c == -1L)
        {
          localObject2 = null;
          localObject2 = new iu((Date)localObject2, e, (Set)localObject1, l, g, h);
          if (n != null)
          {
            localObject1 = n.getBundle(locale.getClass().getName());
            locale.a((Context)com.google.android.gms.dynamic.h.a(parame), new iw(paramil), a(paramString1, h, paramString2), (com.google.android.gms.ads.a.a)localObject2, (Bundle)localObject1);
          }
        }
        else
        {
          localObject2 = new Date(c);
          continue;
        }
        localObject1 = null;
      }
      catch (Throwable parame)
      {
        com.google.android.gms.ads.internal.util.client.b.d("Could not request interstitial ad from adapter.", parame);
        throw new RemoteException();
      }
      continue;
      label226:
      Object localObject1 = null;
    }
  }
  
  public void a(com.google.android.gms.dynamic.e parame, AdRequestParcel paramAdRequestParcel, String paramString1, String paramString2, il paramil, NativeAdOptionsParcel paramNativeAdOptionsParcel, List<String> paramList)
  {
    if (!(a instanceof k))
    {
      com.google.android.gms.ads.internal.util.client.b.e("MediationAdapter is not a MediationNativeAdapter: " + a.getClass().getCanonicalName());
      throw new RemoteException();
    }
    for (;;)
    {
      try
      {
        k localk = (k)a;
        if (f == null) {
          break label233;
        }
        localHashSet = new HashSet(f);
        Date localDate;
        if (c == -1L)
        {
          localDate = null;
          paramList = new iz(localDate, e, localHashSet, l, g, h, paramNativeAdOptionsParcel, paramList);
          if (n != null)
          {
            paramNativeAdOptionsParcel = n.getBundle(localk.getClass().getName());
            b = new iw(paramil);
            localk.a((Context)com.google.android.gms.dynamic.h.a(parame), b, a(paramString1, h, paramString2), paramList, paramNativeAdOptionsParcel);
          }
        }
        else
        {
          localDate = new Date(c);
          continue;
        }
        paramNativeAdOptionsParcel = null;
      }
      catch (Throwable parame)
      {
        com.google.android.gms.ads.internal.util.client.b.d("Could not request interstitial ad from adapter.", parame);
        throw new RemoteException();
      }
      continue;
      label233:
      HashSet localHashSet = null;
    }
  }
  
  public void a(com.google.android.gms.dynamic.e parame, AdSizeParcel paramAdSizeParcel, AdRequestParcel paramAdRequestParcel, String paramString, il paramil)
  {
    a(parame, paramAdSizeParcel, paramAdRequestParcel, paramString, null, paramil);
  }
  
  public void a(com.google.android.gms.dynamic.e parame, AdSizeParcel paramAdSizeParcel, AdRequestParcel paramAdRequestParcel, String paramString1, String paramString2, il paramil)
  {
    if (!(a instanceof c))
    {
      com.google.android.gms.ads.internal.util.client.b.e("MediationAdapter is not a MediationBannerAdapter: " + a.getClass().getCanonicalName());
      throw new RemoteException();
    }
    com.google.android.gms.ads.internal.util.client.b.a("Requesting banner ad from adapter.");
    for (;;)
    {
      try
      {
        c localc = (c)a;
        if (f == null) {
          break label243;
        }
        localObject1 = new HashSet(f);
        Object localObject2;
        if (c == -1L)
        {
          localObject2 = null;
          localObject2 = new iu((Date)localObject2, e, (Set)localObject1, l, g, h);
          if (n != null)
          {
            localObject1 = n.getBundle(localc.getClass().getName());
            localc.a((Context)com.google.android.gms.dynamic.h.a(parame), new iw(paramil), a(paramString1, h, paramString2), com.google.android.gms.ads.i.a(g, d, c), (com.google.android.gms.ads.a.a)localObject2, (Bundle)localObject1);
          }
        }
        else
        {
          localObject2 = new Date(c);
          continue;
        }
        localObject1 = null;
      }
      catch (Throwable parame)
      {
        com.google.android.gms.ads.internal.util.client.b.d("Could not request banner ad from adapter.", parame);
        throw new RemoteException();
      }
      continue;
      label243:
      Object localObject1 = null;
    }
  }
  
  public void b()
  {
    if (!(a instanceof com.google.android.gms.ads.a.e))
    {
      com.google.android.gms.ads.internal.util.client.b.e("MediationAdapter is not a MediationInterstitialAdapter: " + a.getClass().getCanonicalName());
      throw new RemoteException();
    }
    com.google.android.gms.ads.internal.util.client.b.a("Showing interstitial from adapter.");
    try
    {
      ((com.google.android.gms.ads.a.e)a).e();
      return;
    }
    catch (Throwable localThrowable)
    {
      com.google.android.gms.ads.internal.util.client.b.d("Could not show interstitial from adapter.", localThrowable);
      throw new RemoteException();
    }
  }
  
  public void c()
  {
    try
    {
      a.a();
      return;
    }
    catch (Throwable localThrowable)
    {
      com.google.android.gms.ads.internal.util.client.b.d("Could not destroy adapter.", localThrowable);
      throw new RemoteException();
    }
  }
  
  public void d()
  {
    try
    {
      a.b();
      return;
    }
    catch (Throwable localThrowable)
    {
      com.google.android.gms.ads.internal.util.client.b.d("Could not pause adapter.", localThrowable);
      throw new RemoteException();
    }
  }
  
  public void e()
  {
    try
    {
      a.c();
      return;
    }
    catch (Throwable localThrowable)
    {
      com.google.android.gms.ads.internal.util.client.b.d("Could not resume adapter.", localThrowable);
      throw new RemoteException();
    }
  }
  
  public void f()
  {
    if (!(a instanceof com.google.android.gms.ads.b.a.a))
    {
      com.google.android.gms.ads.internal.util.client.b.e("MediationAdapter is not a MediationRewardedVideoAdAdapter: " + a.getClass().getCanonicalName());
      throw new RemoteException();
    }
    com.google.android.gms.ads.internal.util.client.b.a("Show rewarded video ad from adapter.");
    try
    {
      ((com.google.android.gms.ads.b.a.a)a).d();
      return;
    }
    catch (Throwable localThrowable)
    {
      com.google.android.gms.ads.internal.util.client.b.d("Could not show rewarded video ad from adapter.", localThrowable);
      throw new RemoteException();
    }
  }
  
  public boolean g()
  {
    if (!(a instanceof com.google.android.gms.ads.b.a.a))
    {
      com.google.android.gms.ads.internal.util.client.b.e("MediationAdapter is not a MediationRewardedVideoAdAdapter: " + a.getClass().getCanonicalName());
      throw new RemoteException();
    }
    com.google.android.gms.ads.internal.util.client.b.a("Check if adapter is initialized.");
    try
    {
      boolean bool = ((com.google.android.gms.ads.b.a.a)a).e();
      return bool;
    }
    catch (Throwable localThrowable)
    {
      com.google.android.gms.ads.internal.util.client.b.d("Could not check if adapter is initialized.", localThrowable);
      throw new RemoteException();
    }
  }
  
  public io h()
  {
    g localg = b.a();
    if ((localg instanceof com.google.android.gms.ads.a.h)) {
      return new ix((com.google.android.gms.ads.a.h)localg);
    }
    return null;
  }
  
  public ir i()
  {
    g localg = b.a();
    if ((localg instanceof com.google.android.gms.ads.a.i)) {
      return new iy((com.google.android.gms.ads.a.i)localg);
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.iv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
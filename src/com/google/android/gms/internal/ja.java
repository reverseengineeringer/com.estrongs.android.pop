package com.google.android.gms.internal;

import android.app.Activity;
import android.os.RemoteException;
import com.google.ads.mediation.MediationServerParameters;
import com.google.ads.mediation.i;
import com.google.ads.mediation.k;
import com.google.ads.mediation.n;
import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.formats.NativeAdOptionsParcel;
import com.google.android.gms.ads.internal.reward.mediation.client.a;
import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.dynamic.e;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

@me
public final class ja<NETWORK_EXTRAS extends n, SERVER_PARAMETERS extends MediationServerParameters>
  extends ij
{
  private final com.google.ads.mediation.h<NETWORK_EXTRAS, SERVER_PARAMETERS> a;
  private final NETWORK_EXTRAS b;
  
  public ja(com.google.ads.mediation.h<NETWORK_EXTRAS, SERVER_PARAMETERS> paramh, NETWORK_EXTRAS paramNETWORK_EXTRAS)
  {
    a = paramh;
    b = paramNETWORK_EXTRAS;
  }
  
  private SERVER_PARAMETERS a(String paramString1, int paramInt, String paramString2)
  {
    if (paramString1 != null) {
      try
      {
        localObject = new JSONObject(paramString1);
        paramString2 = new HashMap(((JSONObject)localObject).length());
        Iterator localIterator = ((JSONObject)localObject).keys();
        for (;;)
        {
          paramString1 = paramString2;
          if (!localIterator.hasNext()) {
            break;
          }
          paramString1 = (String)localIterator.next();
          paramString2.put(paramString1, ((JSONObject)localObject).getString(paramString1));
        }
        paramString1 = new HashMap(0);
      }
      catch (Throwable paramString1)
      {
        b.d("Could not get MediationServerParameters.", paramString1);
        throw new RemoteException();
      }
    }
    Object localObject = a.c();
    paramString2 = null;
    if (localObject != null)
    {
      paramString2 = (MediationServerParameters)((Class)localObject).newInstance();
      paramString2.a(paramString1);
    }
    return paramString2;
  }
  
  public e a()
  {
    if (!(a instanceof i))
    {
      b.e("MediationAdapter is not a MediationBannerAdapter: " + a.getClass().getCanonicalName());
      throw new RemoteException();
    }
    try
    {
      e locale = com.google.android.gms.dynamic.h.a(((i)a).d());
      return locale;
    }
    catch (Throwable localThrowable)
    {
      b.d("Could not get banner view from adapter.", localThrowable);
      throw new RemoteException();
    }
  }
  
  public void a(AdRequestParcel paramAdRequestParcel, String paramString) {}
  
  public void a(e parame, AdRequestParcel paramAdRequestParcel, String paramString1, a parama, String paramString2) {}
  
  public void a(e parame, AdRequestParcel paramAdRequestParcel, String paramString, il paramil)
  {
    a(parame, paramAdRequestParcel, paramString, null, paramil);
  }
  
  public void a(e parame, AdRequestParcel paramAdRequestParcel, String paramString1, String paramString2, il paramil)
  {
    if (!(a instanceof k))
    {
      b.e("MediationAdapter is not a MediationInterstitialAdapter: " + a.getClass().getCanonicalName());
      throw new RemoteException();
    }
    b.a("Requesting interstitial ad from adapter.");
    try
    {
      ((k)a).a(new jb(paramil), (Activity)com.google.android.gms.dynamic.h.a(parame), a(paramString1, h, paramString2), jc.a(paramAdRequestParcel), b);
      return;
    }
    catch (Throwable parame)
    {
      b.d("Could not request interstitial ad from adapter.", parame);
      throw new RemoteException();
    }
  }
  
  public void a(e parame, AdRequestParcel paramAdRequestParcel, String paramString1, String paramString2, il paramil, NativeAdOptionsParcel paramNativeAdOptionsParcel, List<String> paramList) {}
  
  public void a(e parame, AdSizeParcel paramAdSizeParcel, AdRequestParcel paramAdRequestParcel, String paramString, il paramil)
  {
    a(parame, paramAdSizeParcel, paramAdRequestParcel, paramString, null, paramil);
  }
  
  public void a(e parame, AdSizeParcel paramAdSizeParcel, AdRequestParcel paramAdRequestParcel, String paramString1, String paramString2, il paramil)
  {
    if (!(a instanceof i))
    {
      b.e("MediationAdapter is not a MediationBannerAdapter: " + a.getClass().getCanonicalName());
      throw new RemoteException();
    }
    b.a("Requesting banner ad from adapter.");
    try
    {
      ((i)a).a(new jb(paramil), (Activity)com.google.android.gms.dynamic.h.a(parame), a(paramString1, h, paramString2), jc.a(paramAdSizeParcel), jc.a(paramAdRequestParcel), b);
      return;
    }
    catch (Throwable parame)
    {
      b.d("Could not request banner ad from adapter.", parame);
      throw new RemoteException();
    }
  }
  
  public void b()
  {
    if (!(a instanceof k))
    {
      b.e("MediationAdapter is not a MediationInterstitialAdapter: " + a.getClass().getCanonicalName());
      throw new RemoteException();
    }
    b.a("Showing interstitial from adapter.");
    try
    {
      ((k)a).d();
      return;
    }
    catch (Throwable localThrowable)
    {
      b.d("Could not show interstitial from adapter.", localThrowable);
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
      b.d("Could not destroy adapter.", localThrowable);
      throw new RemoteException();
    }
  }
  
  public void d()
  {
    throw new RemoteException();
  }
  
  public void e()
  {
    throw new RemoteException();
  }
  
  public void f() {}
  
  public boolean g()
  {
    return true;
  }
  
  public io h()
  {
    return null;
  }
  
  public ir i()
  {
    return null;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ja
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
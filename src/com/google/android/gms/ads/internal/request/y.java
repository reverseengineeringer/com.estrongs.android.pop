package com.google.android.gms.ads.internal.request;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.ads.identifier.AdvertisingIdClient.Info;
import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.internal.bh;
import com.google.android.gms.internal.co;
import com.google.android.gms.internal.cr;
import com.google.android.gms.internal.cz;
import com.google.android.gms.internal.fq;
import com.google.android.gms.internal.fr;
import com.google.android.gms.internal.gb;
import com.google.android.gms.internal.gr;
import com.google.android.gms.internal.hf;
import com.google.android.gms.internal.me;
import com.google.android.gms.internal.mp;
import com.google.android.gms.internal.mx;
import com.google.android.gms.internal.nh;
import com.google.android.gms.internal.np;
import com.google.android.gms.internal.oe;
import com.google.android.gms.internal.te;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.UUID;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.json.JSONException;
import org.json.JSONObject;

@me
public class y
  extends np
{
  static final long a = TimeUnit.SECONDS.toMillis(10L);
  private static final Object b = new Object();
  private static boolean c = false;
  private static gr d = null;
  private static fr e = null;
  private static gb f = null;
  private static fq g = null;
  private final d h;
  private final a i;
  private final Object j = new Object();
  private final Context k;
  private hf l;
  
  public y(Context paramContext, a parama, d arg3)
  {
    h = ???;
    k = paramContext;
    i = parama;
    synchronized (b)
    {
      if (!c)
      {
        f = new gb();
        e = new fr(paramContext.getApplicationContext(), j);
        g = new ag();
        d = new gr(k.getApplicationContext(), i.j, (String)cz.b.c(), new af(), new ae());
        c = true;
      }
      return;
    }
  }
  
  private AdResponseParcel a(AdRequestInfoParcel paramAdRequestInfoParcel)
  {
    Object localObject = UUID.randomUUID().toString();
    JSONObject localJSONObject = a(paramAdRequestInfoParcel, (String)localObject);
    if (localJSONObject == null) {
      paramAdRequestInfoParcel = new AdResponseParcel(0);
    }
    for (;;)
    {
      return paramAdRequestInfoParcel;
      long l1 = com.google.android.gms.ads.internal.ae.i().b();
      Future localFuture = f.a((String)localObject);
      com.google.android.gms.ads.internal.util.client.a.a.post(new aa(this, localJSONObject, (String)localObject));
      long l2 = a;
      long l3 = com.google.android.gms.ads.internal.ae.i().b();
      try
      {
        localObject = (JSONObject)localFuture.get(l2 - (l3 - l1), TimeUnit.MILLISECONDS);
        if (localObject == null) {
          return new AdResponseParcel(-1);
        }
      }
      catch (InterruptedException paramAdRequestInfoParcel)
      {
        return new AdResponseParcel(-1);
      }
      catch (TimeoutException paramAdRequestInfoParcel)
      {
        return new AdResponseParcel(2);
      }
      catch (ExecutionException paramAdRequestInfoParcel)
      {
        return new AdResponseParcel(0);
        localObject = mp.a(k, paramAdRequestInfoParcel, ((JSONObject)localObject).toString());
        paramAdRequestInfoParcel = (AdRequestInfoParcel)localObject;
        if (f == -3) {
          continue;
        }
        paramAdRequestInfoParcel = (AdRequestInfoParcel)localObject;
        if (!TextUtils.isEmpty(d)) {
          continue;
        }
        return new AdResponseParcel(3);
      }
      catch (CancellationException paramAdRequestInfoParcel)
      {
        for (;;) {}
      }
    }
  }
  
  private JSONObject a(AdRequestInfoParcel paramAdRequestInfoParcel, String paramString)
  {
    Bundle localBundle = d.d.getBundle("sdk_less_server_data");
    String str = d.d.getString("sdk_less_network_id");
    if (localBundle == null) {}
    JSONObject localJSONObject;
    do
    {
      return null;
      localJSONObject = mp.a(k, paramAdRequestInfoParcel, com.google.android.gms.ads.internal.ae.k().a(k), null, null, new co((String)cz.b.c()), null, null, new ArrayList());
    } while (localJSONObject == null);
    try
    {
      paramAdRequestInfoParcel = AdvertisingIdClient.getAdvertisingIdInfo(k);
      localHashMap = new HashMap();
      localHashMap.put("request_id", paramString);
      localHashMap.put("network_id", str);
      localHashMap.put("request_param", localJSONObject);
      localHashMap.put("data", localBundle);
      if (paramAdRequestInfoParcel != null)
      {
        localHashMap.put("adid", paramAdRequestInfoParcel.getId());
        if (!paramAdRequestInfoParcel.isLimitAdTrackingEnabled()) {
          break label210;
        }
        m = 1;
        localHashMap.put("lat", Integer.valueOf(m));
      }
    }
    catch (GooglePlayServicesRepairableException paramAdRequestInfoParcel)
    {
      for (;;)
      {
        try
        {
          HashMap localHashMap;
          paramAdRequestInfoParcel = com.google.android.gms.ads.internal.ae.e().a(localHashMap);
          return paramAdRequestInfoParcel;
        }
        catch (JSONException paramAdRequestInfoParcel)
        {
          int m;
          return null;
        }
        paramAdRequestInfoParcel = paramAdRequestInfoParcel;
        b.d("Cannot get advertising id info", paramAdRequestInfoParcel);
        paramAdRequestInfoParcel = null;
        continue;
        m = 0;
      }
    }
    catch (IllegalStateException paramAdRequestInfoParcel)
    {
      for (;;) {}
    }
    catch (GooglePlayServicesNotAvailableException paramAdRequestInfoParcel)
    {
      for (;;) {}
    }
    catch (IOException paramAdRequestInfoParcel)
    {
      label210:
      for (;;) {}
    }
  }
  
  protected static void a(bh parambh)
  {
    parambh.a("/loadAd", f);
    parambh.a("/fetchHttpRequest", e);
    parambh.a("/invalidRequest", g);
  }
  
  protected static void b(bh parambh)
  {
    parambh.b("/loadAd", f);
    parambh.b("/fetchHttpRequest", e);
    parambh.b("/invalidRequest", g);
  }
  
  public void a()
  {
    b.a("SdkLessAdLoaderBackgroundTask started.");
    Object localObject = new AdRequestInfoParcel(i, null, null, -1L);
    AdResponseParcel localAdResponseParcel = a((AdRequestInfoParcel)localObject);
    long l1 = com.google.android.gms.ads.internal.ae.i().b();
    localObject = new nh((AdRequestInfoParcel)localObject, localAdResponseParcel, null, null, f, l1, o, null);
    com.google.android.gms.ads.internal.util.client.a.a.post(new z(this, (nh)localObject));
  }
  
  public void b()
  {
    synchronized (j)
    {
      com.google.android.gms.ads.internal.util.client.a.a.post(new ad(this));
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.request.y
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
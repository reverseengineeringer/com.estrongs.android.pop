package com.google.android.gms.ads.internal.request;

import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.ads.internal.v;
import com.google.android.gms.internal.aj;
import com.google.android.gms.internal.bz;
import com.google.android.gms.internal.hw;
import com.google.android.gms.internal.me;
import com.google.android.gms.internal.nh;
import com.google.android.gms.internal.nk;
import com.google.android.gms.internal.np;
import com.google.android.gms.internal.oe;
import com.google.android.gms.internal.te;
import org.json.JSONException;
import org.json.JSONObject;

@me
public class zzb
  extends np
  implements h
{
  np a;
  Object b = new Object();
  AdResponseParcel c;
  hw d;
  private final d e;
  private final a f;
  private final Object g = new Object();
  private final Context h;
  private final aj i;
  
  public zzb(Context paramContext, a parama, aj paramaj, d paramd)
  {
    e = paramd;
    h = paramContext;
    f = parama;
    i = paramaj;
  }
  
  np a(AdRequestInfoParcel paramAdRequestInfoParcel)
  {
    return f.a(h, paramAdRequestInfoParcel, this);
  }
  
  public void a()
  {
    for (;;)
    {
      int j;
      long l2;
      long l1;
      synchronized (b)
      {
        b.a("AdLoaderBackgroundTask started.");
        Object localObject1 = i.a().a(h);
        Object localObject4 = v.a(h).d();
        long l3 = com.google.android.gms.ads.internal.ae.i().b();
        AdRequestInfoParcel localAdRequestInfoParcel = new AdRequestInfoParcel(f, (String)localObject1, (String)localObject4, l3);
        j = -2;
        l2 = -1L;
        l1 = l2;
        try
        {
          localObject4 = a(localAdRequestInfoParcel);
          l1 = l2;
          localObject1 = g;
          l1 = l2;
          try
          {
            a = ((np)localObject4);
            if (a != null) {
              continue;
            }
            throw new zzb.zza("Could not start the ad request service.", 0);
          }
          finally
          {
            l1 = l2;
          }
          j = localzza1.getErrorCode();
        }
        catch (zzb.zza localzza1)
        {
          localObject1 = null;
        }
        if ((j == 3) || (j == -1))
        {
          b.c(localzza1.getMessage());
          if (c != null) {
            break label378;
          }
          c = new AdResponseParcel(j);
          oe.a.post(new e(this));
          boolean bool = TextUtils.isEmpty(c.s);
          if (bool) {
            break label409;
          }
        }
        try
        {
          localJSONObject = new JSONObject(c.s);
          localObject1 = new nh(localAdRequestInfoParcel, c, d, (AdSizeParcel)localObject1, j, l1, c.o, localJSONObject);
          e.a((nh)localObject1);
          return;
        }
        catch (Exception localException)
        {
          JSONObject localJSONObject;
          b.b("Error parsing the JSON for Active View.", localException);
        }
        l1 = l2;
        a(l3);
        l1 = l2;
        l2 = com.google.android.gms.ads.internal.ae.i().b();
        l1 = l2;
        c();
        l1 = l2;
        if (e.i == null) {
          break label423;
        }
        l1 = l2;
        localObject1 = b(localAdRequestInfoParcel);
        try
        {
          a(c.w);
          l1 = l2;
        }
        catch (zzb.zza localzza2)
        {
          Object localObject6;
          l1 = l2;
        }
        b.e(localJSONObject.getMessage());
      }
      label378:
      c = new AdResponseParcel(j, c.l);
      continue;
      label409:
      localObject6 = null;
      continue;
      continue;
      label423:
      Object localObject3 = null;
    }
  }
  
  protected void a(long paramLong)
  {
    do
    {
      if (!b(paramLong)) {
        throw new zzb.zza("Timed out waiting for ad response.", 2);
      }
    } while (c == null);
    synchronized (g)
    {
      a = null;
      if ((c.f != -2) && (c.f != -3)) {
        throw new zzb.zza("There was a problem getting an ad response. ErrorCode: " + c.f, c.f);
      }
    }
  }
  
  public void a(AdResponseParcel paramAdResponseParcel)
  {
    synchronized (b)
    {
      b.a("Received ad response.");
      c = paramAdResponseParcel;
      b.notify();
      return;
    }
  }
  
  protected void a(boolean paramBoolean)
  {
    com.google.android.gms.ads.internal.ae.h().a(paramBoolean);
    bz localbz = com.google.android.gms.ads.internal.ae.h().a(h);
    if ((localbz != null) && (!localbz.isAlive()))
    {
      b.a("start fetching content...");
      localbz.a();
    }
  }
  
  protected AdSizeParcel b(AdRequestInfoParcel paramAdRequestInfoParcel)
  {
    if (c.n == null) {
      throw new zzb.zza("The ad response must specify one of the supported ad sizes.", 0);
    }
    Object localObject = c.n.split("x");
    if (localObject.length != 2) {
      throw new zzb.zza("Invalid ad size format from the ad response: " + c.n, 0);
    }
    for (;;)
    {
      int j;
      AdSizeParcel localAdSizeParcel;
      try
      {
        int n = Integer.parseInt(localObject[0]);
        int i1 = Integer.parseInt(localObject[1]);
        localObject = e.i;
        int i2 = localObject.length;
        j = 0;
        if (j >= i2) {
          break;
        }
        localAdSizeParcel = localObject[j];
        float f1 = h.getResources().getDisplayMetrics().density;
        if (g == -1)
        {
          k = (int)(h / f1);
          if (d != -2) {
            break label257;
          }
          m = (int)(e / f1);
          if ((n != k) || (i1 != m)) {
            break label267;
          }
          return new AdSizeParcel(localAdSizeParcel, e.i);
        }
      }
      catch (NumberFormatException paramAdRequestInfoParcel)
      {
        throw new zzb.zza("Invalid ad size number from the ad response: " + c.n, 0);
      }
      int k = g;
      continue;
      label257:
      int m = d;
      continue;
      label267:
      j += 1;
    }
    throw new zzb.zza("The ad size from the ad response was not one of the requested sizes: " + c.n, 0);
  }
  
  public void b()
  {
    synchronized (g)
    {
      if (a != null) {
        a.i();
      }
      return;
    }
  }
  
  protected boolean b(long paramLong)
  {
    paramLong = 60000L - (com.google.android.gms.ads.internal.ae.i().b() - paramLong);
    if (paramLong <= 0L) {
      return false;
    }
    try
    {
      b.wait(paramLong);
      return true;
    }
    catch (InterruptedException localInterruptedException)
    {
      throw new zzb.zza("Ad request cancelled.", -1);
    }
  }
  
  protected void c()
  {
    if (c.f == -3) {}
    do
    {
      return;
      if (TextUtils.isEmpty(c.d)) {
        throw new zzb.zza("No fill from ad server.", 3);
      }
      com.google.android.gms.ads.internal.ae.h().a(h, c.v);
    } while (!c.i);
    try
    {
      d = new hw(c.d);
      return;
    }
    catch (JSONException localJSONException)
    {
      throw new zzb.zza("Could not parse mediation config: " + c.d, 0);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.request.zzb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
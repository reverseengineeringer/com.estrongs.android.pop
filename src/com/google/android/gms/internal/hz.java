package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.RemoteException;
import android.os.SystemClock;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.formats.NativeAdOptionsParcel;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.dynamic.h;
import java.util.List;

@me
public final class hz
  implements ic
{
  private final String a;
  private final if b;
  private final long c;
  private final hs d;
  private final AdRequestParcel e;
  private final AdSizeParcel f;
  private final Context g;
  private final Object h = new Object();
  private final VersionInfoParcel i;
  private final boolean j;
  private final NativeAdOptionsParcel k;
  private final List<String> l;
  private ii m;
  private int n = -2;
  
  public hz(Context paramContext, String paramString, if paramif, hw paramhw, hs paramhs, AdRequestParcel paramAdRequestParcel, AdSizeParcel paramAdSizeParcel, VersionInfoParcel paramVersionInfoParcel, boolean paramBoolean, NativeAdOptionsParcel paramNativeAdOptionsParcel, List<String> paramList)
  {
    g = paramContext;
    b = paramif;
    d = paramhs;
    if ("com.google.ads.mediation.customevent.CustomEventAdapter".equals(paramString))
    {
      a = b();
      if (b == -1L) {
        break label124;
      }
    }
    label124:
    for (long l1 = b;; l1 = 10000L)
    {
      c = l1;
      e = paramAdRequestParcel;
      f = paramAdSizeParcel;
      i = paramVersionInfoParcel;
      j = paramBoolean;
      k = paramNativeAdOptionsParcel;
      l = paramList;
      return;
      a = paramString;
      break;
    }
  }
  
  private void a(long paramLong1, long paramLong2, long paramLong3, long paramLong4)
  {
    for (;;)
    {
      if (n != -2) {
        return;
      }
      b(paramLong1, paramLong2, paramLong3, paramLong4);
    }
  }
  
  private void a(hy paramhy)
  {
    if ("com.google.ads.mediation.AdUrlAdapter".equals(a))
    {
      Bundle localBundle2 = e.n.getBundle(a);
      Bundle localBundle1 = localBundle2;
      if (localBundle2 == null) {
        localBundle1 = new Bundle();
      }
      localBundle1.putString("sdk_less_network_id", d.b);
      e.n.putBundle(a, localBundle1);
    }
    try
    {
      if (i.e < 4100000)
      {
        if (f.f)
        {
          m.a(h.a(g), e, d.h, paramhy);
          return;
        }
        m.a(h.a(g), f, e, d.h, paramhy);
        return;
      }
    }
    catch (RemoteException paramhy)
    {
      b.d("Could not request ad from mediation adapter.", paramhy);
      a(5);
      return;
    }
    if (j)
    {
      m.a(h.a(g), e, d.h, d.a, paramhy, k, l);
      return;
    }
    if (f.f)
    {
      m.a(h.a(g), e, d.h, d.a, paramhy);
      return;
    }
    m.a(h.a(g), f, e, d.h, d.a, paramhy);
  }
  
  private String b()
  {
    try
    {
      if (!TextUtils.isEmpty(d.e))
      {
        if (b.b(d.e)) {
          return "com.google.android.gms.ads.mediation.customevent.CustomEventAdapter";
        }
        return "com.google.ads.mediation.customevent.CustomEventAdapter";
      }
    }
    catch (RemoteException localRemoteException)
    {
      b.e("Fail to determine the custom event's version, assuming the old one.");
    }
    return "com.google.ads.mediation.customevent.CustomEventAdapter";
  }
  
  private void b(long paramLong1, long paramLong2, long paramLong3, long paramLong4)
  {
    long l1 = SystemClock.elapsedRealtime();
    paramLong1 = paramLong2 - (l1 - paramLong1);
    paramLong2 = paramLong4 - (l1 - paramLong3);
    if ((paramLong1 <= 0L) || (paramLong2 <= 0L))
    {
      b.c("Timed out waiting for adapter.");
      n = 3;
      return;
    }
    try
    {
      h.wait(Math.min(paramLong1, paramLong2));
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      n = -1;
    }
  }
  
  private ii c()
  {
    b.c("Instantiating mediation adapter: " + a);
    try
    {
      ii localii = b.a(a);
      return localii;
    }
    catch (RemoteException localRemoteException)
    {
      b.a("Could not instantiate mediation adapter: " + a, localRemoteException);
    }
    return null;
  }
  
  public ib a(long paramLong1, long paramLong2)
  {
    synchronized (h)
    {
      long l1 = SystemClock.elapsedRealtime();
      Object localObject2 = new hy();
      oe.a.post(new ia(this, (hy)localObject2));
      a(l1, c, paramLong1, paramLong2);
      localObject2 = new ib(d, m, a, (hy)localObject2, n);
      return (ib)localObject2;
    }
  }
  
  public void a()
  {
    synchronized (h)
    {
      try
      {
        if (m != null) {
          m.c();
        }
        n = -1;
        h.notify();
        return;
      }
      catch (RemoteException localRemoteException)
      {
        for (;;)
        {
          b.d("Could not destroy mediation adapter.", localRemoteException);
        }
      }
    }
  }
  
  public void a(int paramInt)
  {
    synchronized (h)
    {
      n = paramInt;
      h.notify();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.hz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
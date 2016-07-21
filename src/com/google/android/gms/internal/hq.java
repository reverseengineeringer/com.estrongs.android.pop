package com.google.android.gms.internal;

import android.content.Context;
import android.os.Handler;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.request.AdRequestInfoParcel;
import com.google.android.gms.ads.internal.util.client.b;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@me
public final class hq
{
  private final AdRequestInfoParcel a;
  private final if b;
  private final Context c;
  private final Object d = new Object();
  private final hw e;
  private final boolean f;
  private boolean g = false;
  private hz h;
  
  public hq(Context paramContext, AdRequestInfoParcel paramAdRequestInfoParcel, if paramif, hw paramhw, boolean paramBoolean)
  {
    c = paramContext;
    a = paramAdRequestInfoParcel;
    b = paramif;
    e = paramhw;
    f = paramBoolean;
  }
  
  public ib a(long paramLong1, long paramLong2, dh paramdh)
  {
    b.a("Starting mediation.");
    ArrayList localArrayList = new ArrayList();
    dg localdg1 = paramdh.a();
    Iterator localIterator1 = e.a.iterator();
    while (localIterator1.hasNext())
    {
      hs localhs = (hs)localIterator1.next();
      b.c("Trying mediation network: " + b);
      Iterator localIterator2 = c.iterator();
      while (localIterator2.hasNext())
      {
        String str = (String)localIterator2.next();
        dg localdg2 = paramdh.a();
        synchronized (d)
        {
          if (g)
          {
            paramdh = new ib(-1);
            return paramdh;
          }
          h = new hz(c, str, b, e, localhs, a.d, a.e, a.l, f, a.D, a.o);
          ??? = h.a(paramLong1, paramLong2);
          if (a == 0)
          {
            b.a("Adapter succeeded.");
            paramdh.a("mediation_network_succeed", str);
            if (!localArrayList.isEmpty()) {
              paramdh.a("mediation_networks_fail", TextUtils.join(",", localArrayList));
            }
            paramdh.a(localdg2, new String[] { "mls" });
            paramdh.a(localdg1, new String[] { "ttm" });
            return (ib)???;
          }
        }
        localArrayList.add(str);
        paramdh.a(localdg2, new String[] { "mlf" });
        if (c != null) {
          oe.a.post(new hr(this, (ib)???));
        }
      }
    }
    if (!localArrayList.isEmpty()) {
      paramdh.a("mediation_networks_fail", TextUtils.join(",", localArrayList));
    }
    return new ib(1);
  }
  
  public void a()
  {
    synchronized (d)
    {
      g = true;
      if (h != null) {
        h.a();
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.hq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
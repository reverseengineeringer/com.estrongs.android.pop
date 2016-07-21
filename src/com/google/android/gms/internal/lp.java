package com.google.android.gms.internal;

import android.content.Context;
import com.google.ads.mediation.a.a;
import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.ads.internal.request.AdRequestInfoParcel;
import com.google.android.gms.ads.internal.request.AdResponseParcel;
import java.util.List;

@me
public class lp
  extends zzfz
{
  protected ib a;
  private if i;
  private hq j;
  private hw k;
  private final dh l;
  
  lp(Context paramContext, nh paramnh, qa paramqa, if paramif, ll paramll, dh paramdh)
  {
    super(paramContext, paramnh, paramqa, paramll);
    i = paramif;
    k = c;
    l = paramdh;
  }
  
  protected ng a(int paramInt)
  {
    AdRequestInfoParcel localAdRequestInfoParcel = g.a;
    AdRequestParcel localAdRequestParcel = d;
    qa localqa = d;
    List localList1 = h.e;
    List localList2 = h.g;
    List localList3 = h.k;
    int m = h.m;
    long l1 = h.l;
    String str2 = j;
    boolean bool = h.i;
    hs localhs;
    ii localii;
    label113:
    String str1;
    label129:
    hw localhw;
    if (a != null)
    {
      localhs = a.b;
      if (a == null) {
        break label247;
      }
      localii = a.c;
      if (a == null) {
        break label253;
      }
      str1 = a.d;
      localhw = k;
      if (a == null) {
        break label263;
      }
    }
    label247:
    label253:
    label263:
    for (hy localhy = a.e;; localhy = null)
    {
      return new ng(localAdRequestParcel, localqa, localList1, paramInt, localList2, localList3, m, l1, str2, bool, localhs, localii, str1, localhw, localhy, h.j, g.d, h.h, g.f, h.o, h.p, g.h, null, y);
      localhs = null;
      break;
      localii = null;
      break label113;
      str1 = a.class.getName();
      break label129;
    }
  }
  
  public void b()
  {
    synchronized (f)
    {
      super.b();
      if (j != null) {
        j.a();
      }
      return;
    }
  }
  
  protected void b(long paramLong)
  {
    synchronized (f)
    {
      j = new hq(c, g.a, i, k, h.u);
      a = j.a(paramLong, 60000L, l);
      switch (a.a)
      {
      default: 
        throw new zzfz.zza("Unexpected mediation result: " + a.a, 0);
      }
    }
    throw new zzfz.zza("No fill from any mediation ad networks.", 3);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.lp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
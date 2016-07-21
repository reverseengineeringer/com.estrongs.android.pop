package com.google.android.gms.internal;

import android.content.Context;
import android.os.Handler;
import android.os.SystemClock;
import com.google.android.gms.ads.internal.request.AdRequestInfoParcel;
import com.google.android.gms.ads.internal.request.AdResponseParcel;
import com.google.android.gms.ads.internal.util.client.b;

@me
public abstract class zzfz
  extends np
{
  protected final ll b;
  protected final Context c;
  protected final qa d;
  protected final Object e = new Object();
  protected final Object f = new Object();
  protected final nh g;
  protected AdResponseParcel h;
  
  protected zzfz(Context paramContext, nh paramnh, qa paramqa, ll paramll)
  {
    c = paramContext;
    g = paramnh;
    h = b;
    d = paramqa;
    b = paramll;
  }
  
  protected ng a(int paramInt)
  {
    AdRequestInfoParcel localAdRequestInfoParcel = g.a;
    return new ng(d, d, h.e, paramInt, h.g, h.k, h.m, h.l, j, h.i, null, null, null, null, null, h.j, g.d, h.h, g.f, h.o, h.p, g.h, null, y);
  }
  
  public void a()
  {
    for (;;)
    {
      int i;
      synchronized (e)
      {
        b.a("AdRendererBackgroundTask started.");
        i = g.e;
        try
        {
          b(SystemClock.elapsedRealtime());
          ng localng = a(i);
          oe.a.post(new li(this, localng));
          return;
        }
        catch (zzfz.zza localzza)
        {
          i = localzza.getErrorCode();
          if (i == 3) {
            continue;
          }
        }
        if (i == -1)
        {
          b.c(localzza.getMessage());
          if (h == null)
          {
            h = new AdResponseParcel(i);
            oe.a.post(new lh(this));
          }
        }
        else
        {
          b.e(localzza.getMessage());
        }
      }
      h = new AdResponseParcel(i, h.l);
    }
  }
  
  protected void a(ng paramng)
  {
    b.b(paramng);
  }
  
  public void b() {}
  
  protected abstract void b(long paramLong);
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzfz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
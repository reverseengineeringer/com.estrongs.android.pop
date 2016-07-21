package com.google.android.gms.ads.internal.request;

import android.os.RemoteException;
import com.google.android.gms.ads.internal.ae;
import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.internal.me;
import com.google.android.gms.internal.nk;
import com.google.android.gms.internal.np;
import com.google.android.gms.internal.te;

@me
public abstract class j
  extends np
  implements h
{
  private final AdRequestInfoParcel a;
  private final h b;
  private final Object c = new Object();
  private AdResponseParcel d;
  
  public j(AdRequestInfoParcel paramAdRequestInfoParcel, h paramh)
  {
    a = paramAdRequestInfoParcel;
    b = paramh;
  }
  
  /* Error */
  public void a()
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 33	com/google/android/gms/ads/internal/request/j:d	()Lcom/google/android/gms/ads/internal/request/r;
    //   4: astore_1
    //   5: aload_1
    //   6: ifnonnull +27 -> 33
    //   9: new 35	com/google/android/gms/ads/internal/request/AdResponseParcel
    //   12: dup
    //   13: iconst_0
    //   14: invokespecial 38	com/google/android/gms/ads/internal/request/AdResponseParcel:<init>	(I)V
    //   17: astore_1
    //   18: aload_0
    //   19: getfield 29	com/google/android/gms/ads/internal/request/j:b	Lcom/google/android/gms/ads/internal/request/h;
    //   22: aload_1
    //   23: invokeinterface 41 2 0
    //   28: aload_0
    //   29: invokevirtual 43	com/google/android/gms/ads/internal/request/j:c	()V
    //   32: return
    //   33: aload_0
    //   34: aload_1
    //   35: aload_0
    //   36: getfield 27	com/google/android/gms/ads/internal/request/j:a	Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;
    //   39: invokevirtual 46	com/google/android/gms/ads/internal/request/j:a	(Lcom/google/android/gms/ads/internal/request/r;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)Z
    //   42: ifeq -14 -> 28
    //   45: aload_0
    //   46: invokestatic 52	com/google/android/gms/ads/internal/ae:i	()Lcom/google/android/gms/internal/te;
    //   49: invokeinterface 57 1 0
    //   54: invokevirtual 60	com/google/android/gms/ads/internal/request/j:a	(J)V
    //   57: goto -29 -> 28
    //   60: astore_1
    //   61: aload_0
    //   62: invokevirtual 43	com/google/android/gms/ads/internal/request/j:c	()V
    //   65: aload_1
    //   66: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	67	0	this	j
    //   4	31	1	localObject1	Object
    //   60	6	1	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   0	5	60	finally
    //   9	28	60	finally
    //   33	57	60	finally
  }
  
  protected void a(long paramLong)
  {
    for (;;)
    {
      synchronized (c)
      {
        if (d != null)
        {
          b.a(d);
          return;
        }
        if (b(paramLong)) {
          continue;
        }
        if (d != null)
        {
          b.a(d);
          return;
        }
      }
      b.a(new AdResponseParcel(0));
    }
  }
  
  public void a(AdResponseParcel paramAdResponseParcel)
  {
    synchronized (c)
    {
      d = paramAdResponseParcel;
      c.notify();
      return;
    }
  }
  
  boolean a(r paramr, AdRequestInfoParcel paramAdRequestInfoParcel)
  {
    try
    {
      paramr.a(paramAdRequestInfoParcel, new o(this));
      return true;
    }
    catch (RemoteException paramr)
    {
      b.d("Could not fetch ad response from ad request service.", paramr);
      ae.h().a(paramr, true);
      b.a(new AdResponseParcel(0));
      return false;
    }
    catch (NullPointerException paramr)
    {
      for (;;)
      {
        b.d("Could not fetch ad response from ad request service due to an Exception.", paramr);
        ae.h().a(paramr, true);
      }
    }
    catch (SecurityException paramr)
    {
      for (;;)
      {
        b.d("Could not fetch ad response from ad request service due to an Exception.", paramr);
        ae.h().a(paramr, true);
      }
    }
    catch (Throwable paramr)
    {
      for (;;)
      {
        b.d("Could not fetch ad response from ad request service due to an Exception.", paramr);
        ae.h().a(paramr, true);
      }
    }
  }
  
  public final void b()
  {
    c();
  }
  
  protected boolean b(long paramLong)
  {
    paramLong = 60000L - (ae.i().b() - paramLong);
    if (paramLong <= 0L) {
      return false;
    }
    try
    {
      c.wait(paramLong);
      return true;
    }
    catch (InterruptedException localInterruptedException) {}
    return false;
  }
  
  public abstract void c();
  
  public abstract r d();
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.request.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
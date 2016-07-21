package com.google.android.gms.ads.internal.request;

import android.content.Context;
import android.os.Binder;
import android.os.Bundle;
import com.google.android.gms.ads.internal.ae;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.q;
import com.google.android.gms.common.api.r;
import com.google.android.gms.internal.cr;
import com.google.android.gms.internal.cz;
import com.google.android.gms.internal.me;
import com.google.android.gms.internal.np;
import com.google.android.gms.internal.oe;
import com.google.android.gms.internal.pd;

@me
public class l
  extends j
  implements q, r
{
  protected m a;
  private Context b;
  private AdRequestInfoParcel c;
  private final h d;
  private final Object e = new Object();
  private boolean f;
  
  public l(Context paramContext, AdRequestInfoParcel paramAdRequestInfoParcel, h paramh)
  {
    super(paramAdRequestInfoParcel, paramh);
    b = paramContext;
    c = paramAdRequestInfoParcel;
    d = paramh;
    if (((Boolean)cz.A.c()).booleanValue()) {
      f = true;
    }
    for (paramh = ae.p().a();; paramh = paramContext.getMainLooper())
    {
      a = new m(paramContext, paramh, this, this, l.e);
      e();
      return;
    }
  }
  
  public void c()
  {
    synchronized (e)
    {
      if ((a.j()) || (a.o())) {
        a.c();
      }
      Binder.flushPendingCommands();
      if (f)
      {
        ae.p().b();
        f = false;
      }
      return;
    }
  }
  
  /* Error */
  public r d()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 33	com/google/android/gms/ads/internal/request/l:e	Ljava/lang/Object;
    //   4: astore_1
    //   5: aload_1
    //   6: monitorenter
    //   7: aload_0
    //   8: getfield 87	com/google/android/gms/ads/internal/request/l:a	Lcom/google/android/gms/ads/internal/request/m;
    //   11: invokevirtual 118	com/google/android/gms/ads/internal/request/m:p_	()Lcom/google/android/gms/ads/internal/request/r;
    //   14: astore_2
    //   15: aload_1
    //   16: monitorexit
    //   17: aload_2
    //   18: areturn
    //   19: aload_1
    //   20: monitorexit
    //   21: aconst_null
    //   22: areturn
    //   23: astore_2
    //   24: aload_1
    //   25: monitorexit
    //   26: aload_2
    //   27: athrow
    //   28: astore_2
    //   29: goto -10 -> 19
    //   32: astore_2
    //   33: goto -14 -> 19
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	36	0	this	l
    //   14	4	2	localr	r
    //   23	4	2	localObject2	Object
    //   28	1	2	localDeadObjectException	android.os.DeadObjectException
    //   32	1	2	localIllegalStateException	IllegalStateException
    // Exception table:
    //   from	to	target	type
    //   7	15	23	finally
    //   15	17	23	finally
    //   19	21	23	finally
    //   24	26	23	finally
    //   7	15	28	android/os/DeadObjectException
    //   7	15	32	java/lang/IllegalStateException
  }
  
  protected void e()
  {
    a.n();
  }
  
  np f()
  {
    return new k(b, c, d);
  }
  
  public void onConnected(Bundle paramBundle)
  {
    g();
  }
  
  public void onConnectionFailed(ConnectionResult paramConnectionResult)
  {
    b.a("Cannot connect to remote service, fallback to local instance.");
    f().g();
    paramConnectionResult = new Bundle();
    paramConnectionResult.putString("action", "gms_connection_failed_fallback_to_local");
    ae.e().b(b, c.l.c, "gmob-apps", paramConnectionResult, true);
  }
  
  public void onConnectionSuspended(int paramInt)
  {
    b.a("Disconnected from remote ad request service.");
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.request.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
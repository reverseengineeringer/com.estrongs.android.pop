package com.google.android.gms.internal;

import android.content.Context;
import android.os.SystemClock;
import com.google.android.gms.ads.internal.ae;
import com.google.android.gms.ads.internal.util.client.b;

@me
public abstract class lc
  extends zzfz
  implements qd
{
  protected boolean a = false;
  private final qb i;
  private boolean j = false;
  
  protected lc(Context paramContext, nh paramnh, qa paramqa, ll paramll)
  {
    super(paramContext, paramnh, paramqa, paramll);
    i = paramqa.i();
  }
  
  private boolean c(long paramLong)
  {
    paramLong = 60000L - (SystemClock.elapsedRealtime() - paramLong);
    if (paramLong <= 1L) {
      return false;
    }
    try
    {
      e.wait(paramLong);
      return true;
    }
    catch (InterruptedException localInterruptedException)
    {
      throw new zzfz.zza("Ad request cancelled.", -1);
    }
  }
  
  protected void a(long paramLong)
  {
    do
    {
      if (!c(paramLong)) {
        throw new zzfz.zza("Timed out waiting for WebView to finish loading.", 2);
      }
      if (j) {
        throw new zzfz.zza("Received cancellation request from creative.", 0);
      }
    } while (!a);
  }
  
  public void a(qa arg1, boolean paramBoolean)
  {
    boolean bool = true;
    for (;;)
    {
      synchronized (e)
      {
        b.a("WebView finished loading.");
        a = true;
        if (!paramBoolean)
        {
          paramBoolean = bool;
          j = paramBoolean;
          e.notify();
          return;
        }
      }
      paramBoolean = false;
    }
  }
  
  public void b()
  {
    synchronized (f)
    {
      d.stopLoading();
      ae.g().a(d.getWebView());
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.lc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
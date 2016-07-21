package com.google.android.gms.ads.internal;

import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.internal.me;
import com.google.android.gms.internal.oe;
import java.lang.ref.WeakReference;

@me
public class ab
{
  private final ad a;
  private final Runnable b;
  private AdRequestParcel c;
  private boolean d = false;
  private boolean e = false;
  private long f = 0L;
  
  public ab(a parama)
  {
    this(parama, new ad(oe.a));
  }
  
  ab(a parama, ad paramad)
  {
    a = paramad;
    b = new ac(this, new WeakReference(parama));
  }
  
  public void a()
  {
    d = false;
    a.a(b);
  }
  
  public void a(AdRequestParcel paramAdRequestParcel)
  {
    a(paramAdRequestParcel, 60000L);
  }
  
  public void a(AdRequestParcel paramAdRequestParcel, long paramLong)
  {
    if (d) {
      b.e("An ad refresh is already scheduled.");
    }
    do
    {
      return;
      c = paramAdRequestParcel;
      d = true;
      f = paramLong;
    } while (e);
    b.c("Scheduling ad refresh " + paramLong + " milliseconds from now.");
    a.a(b, paramLong);
  }
  
  public void b()
  {
    e = true;
    if (d) {
      a.a(b);
    }
  }
  
  public void c()
  {
    e = false;
    if (d)
    {
      d = false;
      a(c, f);
    }
  }
  
  public boolean d()
  {
    return d;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.ab
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
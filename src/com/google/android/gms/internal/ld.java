package com.google.android.gms.internal;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.ae;
import com.google.android.gms.ads.internal.request.AdResponseParcel;

@me
public class ld
  implements Runnable
{
  protected final qa a;
  protected boolean b;
  protected boolean c;
  private final Handler d;
  private final long e;
  private long f;
  private qd g;
  private final int h;
  private final int i;
  
  public ld(qd paramqd, qa paramqa, int paramInt1, int paramInt2)
  {
    this(paramqd, paramqa, paramInt1, paramInt2, 200L, 50L);
  }
  
  public ld(qd paramqd, qa paramqa, int paramInt1, int paramInt2, long paramLong1, long paramLong2)
  {
    e = paramLong1;
    f = paramLong2;
    d = new Handler(Looper.getMainLooper());
    a = paramqa;
    g = paramqd;
    b = false;
    c = false;
    h = paramInt2;
    i = paramInt1;
  }
  
  public void a()
  {
    d.postDelayed(this, e);
  }
  
  public void a(AdResponseParcel paramAdResponseParcel)
  {
    a(paramAdResponseParcel, new qw(this, a, r));
  }
  
  public void a(AdResponseParcel paramAdResponseParcel, qw paramqw)
  {
    a.setWebViewClient(paramqw);
    qa localqa = a;
    if (TextUtils.isEmpty(c)) {}
    for (paramqw = null;; paramqw = ae.e().a(c))
    {
      localqa.loadDataWithBaseURL(paramqw, d, "text/html", "UTF-8", null);
      return;
    }
  }
  
  public void b()
  {
    try
    {
      b = true;
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public boolean c()
  {
    try
    {
      boolean bool = b;
      return bool;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public boolean d()
  {
    return c;
  }
  
  public void run()
  {
    if ((a == null) || (c()))
    {
      g.a(a, true);
      return;
    }
    new le(this, a.getWebView()).execute(new Void[0]);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ld
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
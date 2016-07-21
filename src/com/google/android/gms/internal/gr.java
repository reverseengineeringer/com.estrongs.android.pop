package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;

@me
public class gr
{
  private final Object a = new Object();
  private final Context b;
  private final String c;
  private final VersionInfoParcel d;
  private hd<bh> e;
  private hd<bh> f;
  private hj g;
  private int h = 1;
  
  public gr(Context paramContext, VersionInfoParcel paramVersionInfoParcel, String paramString)
  {
    c = paramString;
    b = paramContext.getApplicationContext();
    d = paramVersionInfoParcel;
    e = new he();
    f = new he();
  }
  
  public gr(Context paramContext, VersionInfoParcel paramVersionInfoParcel, String paramString, hd<bh> paramhd1, hd<bh> paramhd2)
  {
    this(paramContext, paramVersionInfoParcel, paramString);
    e = paramhd1;
    f = paramhd2;
  }
  
  private hj c()
  {
    hj localhj = new hj(f);
    oe.a(new gs(this, localhj));
    return localhj;
  }
  
  protected bh a(Context paramContext, VersionInfoParcel paramVersionInfoParcel)
  {
    return new bm(paramContext, paramVersionInfoParcel, null);
  }
  
  protected hj a()
  {
    hj localhj = c();
    localhj.a(new ha(this, localhj), new hb(this, localhj));
    return localhj;
  }
  
  public hf b()
  {
    synchronized (a)
    {
      hf localhf1;
      if ((g == null) || (g.f() == -1))
      {
        h = 2;
        g = a();
        localhf1 = g.a();
        return localhf1;
      }
      if (h == 0)
      {
        localhf1 = g.a();
        return localhf1;
      }
    }
    if (h == 1)
    {
      h = 2;
      a();
      localhf2 = g.a();
      return localhf2;
    }
    if (h == 2)
    {
      localhf2 = g.a();
      return localhf2;
    }
    hf localhf2 = g.a();
    return localhf2;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.gr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
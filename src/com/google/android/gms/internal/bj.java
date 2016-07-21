package com.google.android.gms.internal;

import android.content.Context;
import android.os.Handler;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import java.util.concurrent.Future;

@me
public class bj
{
  private bh a(Context paramContext, VersionInfoParcel paramVersionInfoParcel, pj<bh> parampj, aj paramaj)
  {
    paramContext = new bm(paramContext, paramVersionInfoParcel, paramaj);
    paramContext.a(new bl(this, parampj, paramContext));
    return paramContext;
  }
  
  public Future<bh> a(Context paramContext, VersionInfoParcel paramVersionInfoParcel, String paramString, aj paramaj)
  {
    pj localpj = new pj();
    oe.a.post(new bk(this, paramContext, paramVersionInfoParcel, localpj, paramaj, paramString));
    return localpj;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.bj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.google.android.gms.ads.internal.request;

import android.content.Context;
import com.google.android.gms.internal.co;
import com.google.android.gms.internal.cr;
import com.google.android.gms.internal.cz;
import com.google.android.gms.internal.me;
import com.google.android.gms.internal.mf;
import com.google.android.gms.internal.mg;

@me
public final class k
  extends j
{
  private final Context a;
  
  public k(Context paramContext, AdRequestInfoParcel paramAdRequestInfoParcel, h paramh)
  {
    super(paramAdRequestInfoParcel, paramh);
    a = paramContext;
  }
  
  public void c() {}
  
  public r d()
  {
    co localco = new co((String)cz.b.c());
    return mg.a(a, localco, mf.a());
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.request.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
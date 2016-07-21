package com.google.android.gms.ads.internal.request;

import android.content.Context;
import android.os.IBinder;
import android.os.Looper;
import com.google.android.gms.common.api.q;
import com.google.android.gms.common.internal.ab;
import com.google.android.gms.common.internal.w;
import com.google.android.gms.internal.me;

@me
public class m
  extends ab<r>
{
  final int a;
  
  public m(Context paramContext, Looper paramLooper, q paramq, com.google.android.gms.common.api.r paramr, int paramInt)
  {
    super(paramContext, paramLooper, 8, w.a(paramContext), paramq, paramr);
    a = paramInt;
  }
  
  protected r a(IBinder paramIBinder)
  {
    return s.a(paramIBinder);
  }
  
  protected String a()
  {
    return "com.google.android.gms.ads.service.START";
  }
  
  protected String b()
  {
    return "com.google.android.gms.ads.internal.request.IAdRequestService";
  }
  
  public r p_()
  {
    return (r)super.t();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.request.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
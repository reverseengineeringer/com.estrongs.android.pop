package com.google.android.gms.cast;

import android.os.RemoteException;
import com.google.android.gms.cast.internal.v;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.n;
import com.google.android.gms.common.api.w;
import java.io.IOException;

public final class e
  implements d
{
  public w<Status> a(n paramn)
  {
    return paramn.b(new h(this, paramn));
  }
  
  public w<c> a(n paramn, String paramString, LaunchOptions paramLaunchOptions)
  {
    return paramn.b(new g(this, paramn, paramString, paramLaunchOptions));
  }
  
  public w<Status> a(n paramn, String paramString1, String paramString2)
  {
    return paramn.b(new f(this, paramn, paramString1, paramString2));
  }
  
  @Deprecated
  public w<c> a(n paramn, String paramString, boolean paramBoolean)
  {
    return a(paramn, paramString, new z().a(paramBoolean).a());
  }
  
  public void a(n paramn, double paramDouble)
  {
    try
    {
      ((com.google.android.gms.cast.internal.g)paramn.a(v.a)).a(paramDouble);
      return;
    }
    catch (RemoteException paramn)
    {
      throw new IOException("service error");
    }
  }
  
  public void a(n paramn, String paramString)
  {
    try
    {
      ((com.google.android.gms.cast.internal.g)paramn.a(v.a)).a(paramString);
      return;
    }
    catch (RemoteException paramn)
    {
      throw new IOException("service error");
    }
  }
  
  public void a(n paramn, String paramString, l paraml)
  {
    try
    {
      ((com.google.android.gms.cast.internal.g)paramn.a(v.a)).a(paramString, paraml);
      return;
    }
    catch (RemoteException paramn)
    {
      throw new IOException("service error");
    }
  }
  
  public double b(n paramn)
  {
    return ((com.google.android.gms.cast.internal.g)paramn.a(v.a)).f();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.cast.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
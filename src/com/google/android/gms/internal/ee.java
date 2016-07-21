package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.ads.formats.f;
import com.google.android.gms.dynamic.e;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@me
public class ee
  extends f
{
  private final eb a;
  private final List<com.google.android.gms.ads.formats.b> b = new ArrayList();
  private final du c;
  
  public ee(eb parameb)
  {
    a = parameb;
    try
    {
      parameb = a.b().iterator();
      while (parameb.hasNext())
      {
        dr localdr = a(parameb.next());
        if (localdr != null) {
          b.add(new du(localdr));
        }
      }
      try
      {
        parameb = a.d();
        if (parameb == null) {
          break label123;
        }
        parameb = new du(parameb);
      }
      catch (RemoteException parameb)
      {
        for (;;)
        {
          com.google.android.gms.ads.internal.util.client.b.b("Failed to get icon.", parameb);
          parameb = null;
        }
      }
    }
    catch (RemoteException parameb)
    {
      com.google.android.gms.ads.internal.util.client.b.b("Failed to get image.", parameb);
    }
    c = parameb;
  }
  
  dr a(Object paramObject)
  {
    if ((paramObject instanceof IBinder)) {
      return ds.a((IBinder)paramObject);
    }
    return null;
  }
  
  public CharSequence b()
  {
    try
    {
      String str = a.a();
      return str;
    }
    catch (RemoteException localRemoteException)
    {
      com.google.android.gms.ads.internal.util.client.b.b("Failed to get headline.", localRemoteException);
    }
    return null;
  }
  
  public List<com.google.android.gms.ads.formats.b> c()
  {
    return b;
  }
  
  public CharSequence d()
  {
    try
    {
      String str = a.c();
      return str;
    }
    catch (RemoteException localRemoteException)
    {
      com.google.android.gms.ads.internal.util.client.b.b("Failed to get body.", localRemoteException);
    }
    return null;
  }
  
  public com.google.android.gms.ads.formats.b e()
  {
    return c;
  }
  
  public CharSequence f()
  {
    try
    {
      String str = a.e();
      return str;
    }
    catch (RemoteException localRemoteException)
    {
      com.google.android.gms.ads.internal.util.client.b.b("Failed to get call to action.", localRemoteException);
    }
    return null;
  }
  
  public Double g()
  {
    try
    {
      double d = a.f();
      if (d == -1.0D) {
        return null;
      }
      return Double.valueOf(d);
    }
    catch (RemoteException localRemoteException)
    {
      com.google.android.gms.ads.internal.util.client.b.b("Failed to get star rating.", localRemoteException);
    }
    return null;
  }
  
  public CharSequence h()
  {
    try
    {
      String str = a.g();
      return str;
    }
    catch (RemoteException localRemoteException)
    {
      com.google.android.gms.ads.internal.util.client.b.b("Failed to get store", localRemoteException);
    }
    return null;
  }
  
  public CharSequence i()
  {
    try
    {
      String str = a.h();
      return str;
    }
    catch (RemoteException localRemoteException)
    {
      com.google.android.gms.ads.internal.util.client.b.b("Failed to get price.", localRemoteException);
    }
    return null;
  }
  
  protected e j()
  {
    try
    {
      e locale = a.i();
      return locale;
    }
    catch (RemoteException localRemoteException)
    {
      com.google.android.gms.ads.internal.util.client.b.b("Failed to retrieve native ad engine.", localRemoteException);
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ee
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
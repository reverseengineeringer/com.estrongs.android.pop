package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.ads.formats.h;
import com.google.android.gms.dynamic.e;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@me
public class ei
  extends h
{
  private final ef a;
  private final List<com.google.android.gms.ads.formats.b> b = new ArrayList();
  private final du c;
  
  public ei(ef paramef)
  {
    a = paramef;
    try
    {
      paramef = a.b().iterator();
      while (paramef.hasNext())
      {
        dr localdr = a(paramef.next());
        if (localdr != null) {
          b.add(new du(localdr));
        }
      }
      try
      {
        paramef = a.d();
        if (paramef == null) {
          break label123;
        }
        paramef = new du(paramef);
      }
      catch (RemoteException paramef)
      {
        for (;;)
        {
          com.google.android.gms.ads.internal.util.client.b.b("Failed to get icon.", paramef);
          paramef = null;
        }
      }
    }
    catch (RemoteException paramef)
    {
      com.google.android.gms.ads.internal.util.client.b.b("Failed to get image.", paramef);
    }
    c = paramef;
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
  
  public CharSequence g()
  {
    try
    {
      String str = a.f();
      return str;
    }
    catch (RemoteException localRemoteException)
    {
      com.google.android.gms.ads.internal.util.client.b.b("Failed to get attribution.", localRemoteException);
    }
    return null;
  }
  
  protected e h()
  {
    try
    {
      e locale = a.g();
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
 * Qualified Name:     com.google.android.gms.internal.ei
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
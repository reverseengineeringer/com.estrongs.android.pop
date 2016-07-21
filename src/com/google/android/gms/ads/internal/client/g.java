package com.google.android.gms.ads.internal.client;

import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.s;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.a;
import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.dynamic.e;
import com.google.android.gms.dynamic.h;
import com.google.android.gms.dynamic.zzg;
import com.google.android.gms.dynamic.zzg.zza;
import com.google.android.gms.internal.ie;
import com.google.android.gms.internal.me;

@me
public final class g
  extends zzg<aa>
{
  private static final g a = new g();
  
  private g()
  {
    super("com.google.android.gms.ads.AdLoaderBuilderCreatorImpl");
  }
  
  public static x a(Context paramContext, String paramString, ie paramie)
  {
    Object localObject;
    if (m.a().b(paramContext))
    {
      x localx = a.b(paramContext, paramString, paramie);
      localObject = localx;
      if (localx != null) {}
    }
    else
    {
      b.a("Using AdLoader from the client jar.");
      localObject = new s(paramContext, paramString, paramie, new VersionInfoParcel(7895000, 7895000, true));
    }
    return (x)localObject;
  }
  
  private x b(Context paramContext, String paramString, ie paramie)
  {
    try
    {
      e locale = h.a(paramContext);
      paramContext = y.a(((aa)a(paramContext)).a(locale, paramString, paramie, 7895000));
      return paramContext;
    }
    catch (RemoteException paramContext)
    {
      b.d("Could not create remote builder for AdLoader.", paramContext);
      return null;
    }
    catch (zzg.zza paramContext)
    {
      for (;;)
      {
        b.d("Could not create remote builder for AdLoader.", paramContext);
      }
    }
  }
  
  protected aa a(IBinder paramIBinder)
  {
    return ab.a(paramIBinder);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.client.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.google.android.gms.ads.internal.client;

import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.i;
import com.google.android.gms.ads.internal.t;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.a;
import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.dynamic.e;
import com.google.android.gms.dynamic.zzg;
import com.google.android.gms.dynamic.zzg.zza;
import com.google.android.gms.internal.ie;
import com.google.android.gms.internal.me;

@me
public class h
  extends zzg<ag>
{
  public h()
  {
    super("com.google.android.gms.ads.AdManagerCreatorImpl");
  }
  
  private ad a(Context paramContext, AdSizeParcel paramAdSizeParcel, String paramString, ie paramie, int paramInt)
  {
    try
    {
      e locale = com.google.android.gms.dynamic.h.a(paramContext);
      paramContext = ae.a(((ag)a(paramContext)).a(locale, paramAdSizeParcel, paramString, paramie, 7895000, paramInt));
      return paramContext;
    }
    catch (RemoteException paramContext)
    {
      b.a("Could not create remote AdManager.", paramContext);
      return null;
    }
    catch (zzg.zza paramContext)
    {
      for (;;) {}
    }
  }
  
  public ad a(Context paramContext, AdSizeParcel paramAdSizeParcel, String paramString, ie paramie)
  {
    Object localObject;
    if (m.a().b(paramContext))
    {
      ad localad = a(paramContext, paramAdSizeParcel, paramString, paramie, 1);
      localObject = localad;
      if (localad != null) {}
    }
    else
    {
      b.a("Using BannerAdManager from the client jar.");
      localObject = new com.google.android.gms.ads.internal.m(paramContext, paramAdSizeParcel, paramString, paramie, new VersionInfoParcel(7895000, 7895000, true));
    }
    return (ad)localObject;
  }
  
  protected ag a(IBinder paramIBinder)
  {
    return ah.a(paramIBinder);
  }
  
  public ad b(Context paramContext, AdSizeParcel paramAdSizeParcel, String paramString, ie paramie)
  {
    Object localObject;
    if (m.a().b(paramContext))
    {
      ad localad = a(paramContext, paramAdSizeParcel, paramString, paramie, 2);
      localObject = localad;
      if (localad != null) {}
    }
    else
    {
      b.e("Using InterstitialAdManager from the client jar.");
      localObject = new t(paramContext, paramAdSizeParcel, paramString, paramie, new VersionInfoParcel(7895000, 7895000, true), i.a());
    }
    return (ad)localObject;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.client.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
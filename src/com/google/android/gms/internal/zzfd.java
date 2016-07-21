package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.overlay.zzd;
import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.dynamic.e;
import com.google.android.gms.dynamic.h;
import com.google.android.gms.dynamic.zzg;
import com.google.android.gms.dynamic.zzg.zza;

@me
public final class zzfd
  extends zzg<jw>
{
  private static final zzfd a = new zzfd();
  
  private zzfd()
  {
    super("com.google.android.gms.ads.AdOverlayCreatorImpl");
  }
  
  public static jt a(Activity paramActivity)
  {
    try
    {
      if (b(paramActivity))
      {
        b.a("Using AdOverlay from the client jar.");
        return new zzd(paramActivity);
      }
      paramActivity = a.c(paramActivity);
      return paramActivity;
    }
    catch (zzfd.zza paramActivity)
    {
      b.e(paramActivity.getMessage());
    }
    return null;
  }
  
  private static boolean b(Activity paramActivity)
  {
    paramActivity = paramActivity.getIntent();
    if (!paramActivity.hasExtra("com.google.android.gms.ads.internal.overlay.useClientJar")) {
      throw new zzfd.zza("Ad overlay requires the useClientJar flag in intent extras.");
    }
    return paramActivity.getBooleanExtra("com.google.android.gms.ads.internal.overlay.useClientJar", false);
  }
  
  private jt c(Activity paramActivity)
  {
    try
    {
      e locale = h.a(paramActivity);
      paramActivity = ju.a(((jw)a(paramActivity)).a(locale));
      return paramActivity;
    }
    catch (RemoteException paramActivity)
    {
      b.d("Could not create remote AdOverlay.", paramActivity);
      return null;
    }
    catch (zzg.zza paramActivity)
    {
      b.d("Could not create remote AdOverlay.", paramActivity);
    }
    return null;
  }
  
  protected jw a(IBinder paramIBinder)
  {
    return jx.a(paramIBinder);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzfd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
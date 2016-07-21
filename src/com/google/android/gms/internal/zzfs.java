package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.purchase.f;
import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.dynamic.e;
import com.google.android.gms.dynamic.h;
import com.google.android.gms.dynamic.zzg;
import com.google.android.gms.dynamic.zzg.zza;

@me
public final class zzfs
  extends zzg<kp>
{
  private static final zzfs a = new zzfs();
  
  private zzfs()
  {
    super("com.google.android.gms.ads.InAppPurchaseManagerCreatorImpl");
  }
  
  public static km a(Activity paramActivity)
  {
    try
    {
      if (b(paramActivity))
      {
        b.a("Using AdOverlay from the client jar.");
        return new f(paramActivity);
      }
      paramActivity = a.c(paramActivity);
      return paramActivity;
    }
    catch (zzfs.zza paramActivity)
    {
      b.e(paramActivity.getMessage());
    }
    return null;
  }
  
  private static boolean b(Activity paramActivity)
  {
    paramActivity = paramActivity.getIntent();
    if (!paramActivity.hasExtra("com.google.android.gms.ads.internal.purchase.useClientJar")) {
      throw new zzfs.zza("InAppPurchaseManager requires the useClientJar flag in intent extras.");
    }
    return paramActivity.getBooleanExtra("com.google.android.gms.ads.internal.purchase.useClientJar", false);
  }
  
  private km c(Activity paramActivity)
  {
    try
    {
      e locale = h.a(paramActivity);
      paramActivity = kn.a(((kp)a(paramActivity)).a(locale));
      return paramActivity;
    }
    catch (RemoteException paramActivity)
    {
      b.d("Could not create remote InAppPurchaseManager.", paramActivity);
      return null;
    }
    catch (zzg.zza paramActivity)
    {
      b.d("Could not create remote InAppPurchaseManager.", paramActivity);
    }
    return null;
  }
  
  protected kp a(IBinder paramIBinder)
  {
    return kq.a(paramIBinder);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzfs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.estrongs.android.pop.app.ad;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import com.estrongs.android.i.a;
import com.estrongs.android.pop.utils.c;
import com.estrongs.android.ui.dialog.cv;

public class DuSpeedBoosterController
{
  public static void a(Context paramContext, DuSpeedBoosterController.LocationType paramLocationType)
  {
    Object localObject2 = paramContext.getPackageManager();
    Object localObject1 = null;
    try
    {
      localObject2 = ((PackageManager)localObject2).getPackageInfo("com.dianxinos.optimizer.duplay", 8192);
      localObject1 = localObject2;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      for (;;) {}
    }
    if (localObject1 != null)
    {
      c.b(paramContext, applicationInfo);
      return;
    }
    b(paramContext, paramLocationType);
  }
  
  public static void a(String paramString)
  {
    if ("com.dianxinos.optimizer.duplay".equals(paramString)) {
      new Thread(new k()).start();
    }
  }
  
  public static boolean a(DuSpeedBoosterController.LocationType paramLocationType)
  {
    boolean bool = true;
    switch (n.a[paramLocationType.ordinal()])
    {
    default: 
      bool = false;
    }
    do
    {
      do
      {
        do
        {
          return bool;
        } while (a.a("ad_dusb_navi_enable", 0) == 1);
        return false;
      } while (a.a("ad_dusb_home_enable", 0) == 1);
      return false;
    } while (a.a("ad_dusb_toolbar_enable", 0) == 1);
    return false;
  }
  
  private static void b(Context paramContext, DuSpeedBoosterController.LocationType paramLocationType)
  {
    String str = paramContext.getString(2131231400);
    new cv(paramContext).a(2131231718).b(str).b(2131231273, new m(paramLocationType, paramContext)).c(2131231269, null).c();
  }
  
  private static void c(DuSpeedBoosterController.LocationType paramLocationType)
  {
    new Thread(new l(paramLocationType)).start();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.ad.DuSpeedBoosterController
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
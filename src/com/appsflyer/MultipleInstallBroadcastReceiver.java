package com.appsflyer;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.util.Log;
import java.util.Iterator;
import java.util.List;

public class MultipleInstallBroadcastReceiver
  extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    Log.i("AppsFlyer_3.2", "MultipleInstallBroadcastReceiver called");
    Iterator localIterator = paramContext.getPackageManager().queryBroadcastReceivers(new Intent("com.android.vending.INSTALL_REFERRER"), 0).iterator();
    while (localIterator.hasNext())
    {
      ResolveInfo localResolveInfo = (ResolveInfo)localIterator.next();
      String str = paramIntent.getAction();
      if ((activityInfo.packageName.equals(paramContext.getPackageName())) && ("com.android.vending.INSTALL_REFERRER".equals(str)) && (!getClass().getName().equals(activityInfo.name)))
      {
        Log.i("AppsFlyer_3.2", "trigger onReceive: class: " + activityInfo.name);
        try
        {
          ((BroadcastReceiver)Class.forName(activityInfo.name).newInstance()).onReceive(paramContext, paramIntent);
        }
        catch (Throwable localThrowable)
        {
          Log.e("AppsFlyer_3.2", "error in BroadcastReceiver " + activityInfo.name, localThrowable);
        }
      }
    }
    new AppsFlyerLib().onReceive(paramContext, paramIntent);
  }
}

/* Location:
 * Qualified Name:     com.appsflyer.MultipleInstallBroadcastReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
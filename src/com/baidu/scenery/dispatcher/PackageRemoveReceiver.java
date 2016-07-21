package com.baidu.scenery.dispatcher;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.baidu.scenery.utils.ReportHelper;
import java.net.URI;

class PackageRemoveReceiver
  extends BroadcastReceiver
{
  public static void onPackageAdded(Context paramContext, Intent paramIntent)
  {
    if (paramIntent.getBooleanExtra("android.intent.extra.REPLACING", false)) {}
    do
    {
      return;
      paramIntent = URI.create(paramIntent.getDataString()).getSchemeSpecificPart();
    } while (TextUtils.isEmpty(paramIntent));
    long l = SceneryPreferences.getClickTimeStamp(paramContext, paramIntent);
    if ((l > 0L) && (System.currentTimeMillis() - l < 86400000L)) {
      ReportHelper.reportInstall(paramContext, paramIntent);
    }
    SceneryDispatcher.getInstance().post(new PackageRemoveReceiver.2(paramContext, paramIntent));
  }
  
  public static void onPackageRemoved(Context paramContext, Intent paramIntent)
  {
    if (paramIntent.getBooleanExtra("android.intent.extra.REPLACING", false)) {}
    do
    {
      return;
      paramIntent = paramIntent.getData().getSchemeSpecificPart();
    } while (TextUtils.isEmpty(paramIntent));
    SceneryDispatcher.getInstance().postDelayed(new PackageRemoveReceiver.1(paramContext, paramIntent), 2000L);
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (paramIntent == null) {}
    String str;
    do
    {
      return;
      str = paramIntent.getAction();
      if (TextUtils.equals(str, "android.intent.action.PACKAGE_REMOVED"))
      {
        onPackageRemoved(paramContext, paramIntent);
        return;
      }
    } while (!TextUtils.equals(str, "android.intent.action.PACKAGE_ADDED"));
    onPackageAdded(paramContext, paramIntent);
  }
}

/* Location:
 * Qualified Name:     com.baidu.scenery.dispatcher.PackageRemoveReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
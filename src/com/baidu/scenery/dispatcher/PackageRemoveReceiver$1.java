package com.baidu.scenery.dispatcher;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.baidu.scenery.dispatcher.appinfo.AppInfo;
import com.baidu.scenery.dispatcher.appinfo.AppInfoManager;

final class PackageRemoveReceiver$1
  implements Runnable
{
  PackageRemoveReceiver$1(Context paramContext, String paramString) {}
  
  public void run()
  {
    Object localObject = AppInfoManager.getDbAppName(val$context, val$pkgName);
    if (localObject == null) {
      return;
    }
    localObject = ((AppInfo)localObject).getAppName();
    if (TextUtils.isEmpty((CharSequence)localObject))
    {
      AppInfoManager.onPackageRemoved(val$context, val$pkgName);
      return;
    }
    Bundle localBundle = new Bundle();
    localBundle.putString("scenery_extra_uninstall_appname", (String)localObject);
    localBundle.putString("scenery_extra_uninstall_pkgname", val$pkgName);
    SceneryDispatcher.getInstance().onSceneryOccur("scenery_uninstall", localBundle);
    AppInfoManager.onPackageRemoved(val$context, val$pkgName);
  }
}

/* Location:
 * Qualified Name:     com.baidu.scenery.dispatcher.PackageRemoveReceiver.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
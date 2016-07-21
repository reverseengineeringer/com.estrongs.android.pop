package com.baidu.scenery.dispatcher;

import android.content.Context;
import com.baidu.scenery.dispatcher.appinfo.AppInfoManager;

final class PackageRemoveReceiver$2
  implements Runnable
{
  PackageRemoveReceiver$2(Context paramContext, String paramString) {}
  
  public void run()
  {
    AppInfoManager.onPackageInstalled(val$context, val$pkgName);
  }
}

/* Location:
 * Qualified Name:     com.baidu.scenery.dispatcher.PackageRemoveReceiver.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
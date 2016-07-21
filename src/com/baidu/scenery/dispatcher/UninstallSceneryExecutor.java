package com.baidu.scenery.dispatcher;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import com.baidu.scenery.SceneryLibrary;
import com.baidu.scenery.dispatcher.commondialog.DialogActivity;
import com.baidu.scenery.utils.LogHelper;

class UninstallSceneryExecutor
  extends AbstractSceneryExecutor
{
  private static final boolean DEBUG = ;
  private static final String TAG = "scenery";
  
  public UninstallSceneryExecutor()
  {
    mCloudRecommendPkg = "com.dianxinos.optimizer.duplay";
  }
  
  private boolean checkUninstallPkgName(Bundle paramBundle)
  {
    paramBundle = paramBundle.getString("scenery_extra_uninstall_pkgname");
    if (TextUtils.isEmpty(paramBundle)) {
      if (DEBUG) {
        LogHelper.i("scenery", getName() + ": uninstall pkgName is empty");
      }
    }
    String str;
    do
    {
      return false;
      str = getRecommendPkgName();
      if (!TextUtils.equals(str, paramBundle)) {
        break;
      }
    } while (!DEBUG);
    LogHelper.i("scenery", getName() + ": uninstall pkgName = recommendPkgName = " + str);
    return false;
    return true;
  }
  
  protected boolean childHandleScenery(Bundle paramBundle)
  {
    if (!checkUninstallPkgName(paramBundle)) {
      if (DEBUG) {
        LogHelper.i("scenery", getName() + ": checkUninstallPkgName failed");
      }
    }
    do
    {
      return false;
      Context localContext = SceneryLibrary.getAppContext();
      paramBundle = paramBundle.getString("scenery_extra_uninstall_appname");
      Intent localIntent = new Intent(localContext, DialogActivity.class);
      localIntent.addFlags(268435456);
      localIntent.putExtra("scenery_extra_name", getName());
      localIntent.putExtra("scenery_extra_recommend_package", getRecommendPkgName());
      localIntent.putExtra("scenery_extra_uninstall_appname", paramBundle);
      localIntent.setPackage(localContext.getPackageName());
      try
      {
        SceneryLibrary.getAppContext().startActivity(localIntent);
        return true;
      }
      catch (Throwable paramBundle) {}
    } while (!DEBUG);
    LogHelper.d("scenery", getName() + ": childHandleScenery:Exception=" + paramBundle.getMessage());
    return false;
  }
  
  public String getName()
  {
    return "scenery_uninstall";
  }
  
  protected String getRecommendPkgName()
  {
    if (!TextUtils.isEmpty(mCloudRecommendPkg)) {
      return mCloudRecommendPkg;
    }
    return "com.dianxinos.optimizer.duplay";
  }
}

/* Location:
 * Qualified Name:     com.baidu.scenery.dispatcher.UninstallSceneryExecutor
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
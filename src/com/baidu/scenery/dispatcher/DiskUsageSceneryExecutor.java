package com.baidu.scenery.dispatcher;

import android.content.Context;
import android.content.Intent;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.PowerManager;
import android.text.TextUtils;
import com.baidu.scenery.SceneryLibrary;
import com.baidu.scenery.dispatcher.commondialog.DialogActivity;
import com.baidu.scenery.utils.DevicesUtils;
import com.baidu.scenery.utils.LogHelper;
import com.baidu.scenery.utils.ReportHelper;
import com.baidu.scenery.utils.TrashUtils;
import org.json.JSONException;
import org.json.JSONObject;

class DiskUsageSceneryExecutor
  extends AbstractSceneryExecutor
{
  private static final boolean DEBUG = ;
  public static final int DEF_NEW_FILES_MB = 500;
  public static final long DEF_NEW_FILES_TIME_INTERVAL_MIN = 4320L;
  public static final boolean DEF_NOT_SUPPORT_CHECK_DESKTOP_FUN_ON = false;
  private static final String TAG = "scenery";
  int mNewFilesMB = 500;
  long mNewFilesTimeInterval = 259200000L;
  boolean mSwitch4Android51 = false;
  
  public DiskUsageSceneryExecutor()
  {
    mCloudRecommendPkg = "com.estrongs.android.pop";
  }
  
  private boolean checkDiskUsageRuler(Bundle paramBundle)
  {
    paramBundle = SceneryLibrary.getAppContext();
    long l3 = SceneryPreferences.getDiskUsageTime(paramBundle);
    long l1 = System.currentTimeMillis();
    long l2;
    if (0L == l3)
    {
      l2 = TrashUtils.getAllSDInfoUsedSize(paramBundle);
      saveDiskTimeAndSize(paramBundle, l1, l2);
      if (DEBUG) {
        LogHelper.i("scenery", getName() + ": first time caculate disk size: " + l2 + ", record time " + l1);
      }
    }
    for (;;)
    {
      return false;
      l2 = l1 - l3;
      if (l2 >= mNewFilesTimeInterval)
      {
        l3 = TrashUtils.getAllSDInfoUsedSize(paramBundle);
        long l4 = SceneryPreferences.getDiskUsageSize(paramBundle);
        long l5 = l3 - l4;
        saveDiskTimeAndSize(paramBundle, l1, l3);
        Object localObject;
        if (l5 >= mNewFilesMB * 1024 * 1024)
        {
          localObject = new Intent(SceneryLibrary.getAppContext(), DialogActivity.class);
          ((Intent)localObject).addFlags(268435456);
          ((Intent)localObject).putExtra("scenery_extra_name", getName());
          ((Intent)localObject).putExtra("scenery_extra_recommend_package", getRecommendPkgName());
          ((Intent)localObject).putExtra("scenery_extra_disk_usage_day", l2);
          ((Intent)localObject).putExtra("scenery_extra_disk_usage_size", l5);
          ((Intent)localObject).setPackage(paramBundle.getPackageName());
          try
          {
            SceneryLibrary.getAppContext().startActivity((Intent)localObject);
            return true;
          }
          catch (Throwable paramBundle)
          {
            if (DEBUG) {
              LogHelper.d("scenery", getName() + ": childHandleScenery:Exception=" + paramBundle.getMessage());
            }
            return false;
          }
        }
        if (DEBUG) {
          LogHelper.i("scenery", getName() + ": record size: " + l4 + ", current size: " + l3 + ", increment size: " + l5 + ", need increment size: " + mNewFilesMB * 1024 * 1024);
        }
        if (l5 > 0L)
        {
          try
          {
            localObject = new JSONObject();
            ((JSONObject)localObject).put("sizemb", l5);
            ((JSONObject)localObject).put("timecost", l2);
            ReportHelper.reportEvent(paramBundle, "duscenery_sdk_jsonpk", (JSONObject)localObject);
          }
          catch (JSONException paramBundle) {}
          if (LogHelper.isLogEnabled()) {
            LogHelper.d("scenery", getName() + ": create report content failed.", paramBundle);
          }
        }
      }
      else if (DEBUG)
      {
        LogHelper.i("scenery", getName() + ": check disk usage too frequently, record time: " + l3 + ", now: " + l1 + ", now -record time: " + l2 + ", check gap: " + mNewFilesTimeInterval);
      }
    }
  }
  
  private void saveDiskTimeAndSize(Context paramContext, long paramLong1, long paramLong2)
  {
    SceneryPreferences.saveDiskUsageTime(paramContext, paramLong1);
    SceneryPreferences.saveDiskUsageSize(paramContext, paramLong2);
  }
  
  public boolean checkConfigRules(Bundle paramBundle)
  {
    if (!super.checkConfigRules(paramBundle)) {
      return false;
    }
    paramBundle = SceneryLibrary.getAppContext();
    if (!((PowerManager)paramBundle.getSystemService("power")).isScreenOn())
    {
      if (DEBUG) {
        LogHelper.i("scenery", getName() + ": screen power off " + getName());
      }
      return false;
    }
    if ((Build.VERSION.SDK_INT >= 22) || (DevicesUtils.isGalaxyNoteEdge()))
    {
      if (!mSwitch4Android51)
      {
        if (DEBUG) {
          LogHelper.i("scenery", getName() + ": switch for android5.1 off");
        }
        return false;
      }
    }
    else if (!RuleUtils.isHomeFirst(paramBundle))
    {
      if (DEBUG) {
        LogHelper.i("scenery", getName() + ": home is not at the top of screen");
      }
      return false;
    }
    return true;
  }
  
  protected boolean childHandleScenery(Bundle paramBundle)
  {
    return checkDiskUsageRuler(paramBundle);
  }
  
  public String getName()
  {
    return "scenery_disk_usage";
  }
  
  protected String getRecommendPkgName()
  {
    if (!TextUtils.isEmpty(mCloudRecommendPkg)) {
      return mCloudRecommendPkg;
    }
    return "com.estrongs.android.pop";
  }
}

/* Location:
 * Qualified Name:     com.baidu.scenery.dispatcher.DiskUsageSceneryExecutor
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
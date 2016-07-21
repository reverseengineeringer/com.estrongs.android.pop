package com.baidu.scenery.dispatcher;

import android.content.Context;
import android.os.Bundle;
import com.baidu.scenery.SceneryLibrary;
import com.baidu.scenery.utils.LogHelper;

abstract class AbstractSceneryExecutor
  implements SceneryExecutor
{
  private static final boolean DEBUG = ;
  public static final boolean DEF_INTERVAL_SIGN = false;
  public static final boolean DEF_SWITCH = false;
  public static final long DEF_TIME_INTERVAL_MIN = 2880L;
  public static final int DEF_TOTAL_SHOW_NUM = 3;
  private static final String TAG = "scenery";
  String mCloudRecommendPkg;
  boolean mSwitch = false;
  long mTimeInterval = 172800000L;
  boolean mTimeIntervalSign = false;
  int mTotalShowNum = 3;
  
  private boolean checkSameSceneShowCount(Context paramContext, String paramString)
  {
    int i = SceneryPreferences.getSameSceneryShowCount(paramContext, paramString);
    return mTotalShowNum > i;
  }
  
  private boolean checkSameSceneTimeInterval(Context paramContext, String paramString)
  {
    long l1 = SceneryPreferences.getSameSceneryShowTime(paramContext, paramString);
    long l2 = System.currentTimeMillis();
    return (l2 > l1) && (l2 - l1 >= mTimeInterval);
  }
  
  public boolean checkConfigRules(Bundle paramBundle)
  {
    if (!mSwitch) {
      if (DEBUG) {
        LogHelper.i("scenery", getName() + ": switch off");
      }
    }
    do
    {
      do
      {
        do
        {
          return false;
          paramBundle = SceneryLibrary.getAppContext();
          if (checkSameSceneShowCount(paramBundle, getName())) {
            break;
          }
        } while (!DEBUG);
        LogHelper.i("scenery", getName() + ": show too much");
        return false;
        if (checkSameSceneTimeInterval(paramBundle, getName())) {
          break;
        }
      } while (!DEBUG);
      LogHelper.i("scenery", getName() + ": show too frequently");
      return false;
      if (!RuleUtils.isPkgInstalled(paramBundle, getRecommendPkgName())) {
        break;
      }
    } while (!DEBUG);
    LogHelper.i("scenery", getName() + ": recommend package " + getRecommendPkgName() + " is installed");
    return false;
    return true;
  }
  
  protected abstract boolean childHandleScenery(Bundle paramBundle);
  
  protected abstract String getRecommendPkgName();
  
  public int getShowNum()
  {
    return mTotalShowNum;
  }
  
  public boolean getSwitch()
  {
    return mSwitch;
  }
  
  public final boolean handleScenery(Bundle paramBundle)
  {
    boolean bool = childHandleScenery(paramBundle);
    if (!bool) {
      return bool;
    }
    if (DEBUG) {
      LogHelper.i("scenery", getName() + ": handle scene ,show dialog success");
    }
    paramBundle = SceneryLibrary.getAppContext();
    int i = SceneryPreferences.getSameSceneryShowCount(paramBundle, getName());
    SceneryPreferences.saveSameSceneryShowCount(paramBundle, getName(), i + 1);
    long l = System.currentTimeMillis();
    SceneryPreferences.saveSameSceneryShowTime(paramBundle, getName(), l);
    return bool;
  }
  
  public boolean isHigherPriority()
  {
    return mTimeIntervalSign;
  }
}

/* Location:
 * Qualified Name:     com.baidu.scenery.dispatcher.AbstractSceneryExecutor
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
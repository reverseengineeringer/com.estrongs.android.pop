package com.baidu.scenery.dispatcher;

import android.content.Context;
import android.content.Intent;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.text.TextUtils;
import com.baidu.scenery.SceneryLibrary;
import com.baidu.scenery.dispatcher.commondialog.DialogActivity;
import com.baidu.scenery.utils.DevicesUtils;
import com.baidu.scenery.utils.LogHelper;

class ChargeSceneryExecutor
  extends AbstractSceneryExecutor
{
  private static final int BATTERY_PLUGGED_ANY;
  private static final boolean DEBUG = ;
  public static final long DEF_CHARGE_TIME_MIN = 60L;
  public static final boolean DEF_NOT_SUPPORT_CHECK_DESKTOP_FUN_ON = false;
  private static final String TAG = "scenery";
  long mChargeTime = 3600000L;
  boolean mSwitch4Android51 = false;
  
  static
  {
    if (Build.VERSION.SDK_INT >= 17) {}
    for (int i = 4;; i = 0)
    {
      BATTERY_PLUGGED_ANY = i | 0x3;
      return;
    }
  }
  
  public ChargeSceneryExecutor()
  {
    mCloudRecommendPkg = "com.dianxinos.dxbs";
  }
  
  private boolean checkChargeTime(Bundle paramBundle)
  {
    Context localContext = SceneryLibrary.getAppContext();
    int i = paramBundle.getInt("battery_info_plug_type", 0);
    if ((BATTERY_PLUGGED_ANY & i) == 0)
    {
      SceneryPreferences.saveChargeHundredTime(localContext, 0L);
      if (DEBUG) {
        LogHelper.i("scenery", getName() + ": plug type=" + i);
      }
    }
    do
    {
      do
      {
        do
        {
          do
          {
            return false;
            i = paramBundle.getInt("battery_info_percent_key", 0);
            if (i >= 100) {
              break;
            }
            SceneryPreferences.saveChargeHundredTime(localContext, 0L);
          } while (!DEBUG);
          LogHelper.i("scenery", getName() + ": current battery percent " + i);
          return false;
          l = SceneryPreferences.getChargeHundredTime(localContext);
          if (l > 0L) {
            break;
          }
          SceneryPreferences.saveChargeHundredTime(localContext, System.currentTimeMillis());
        } while (!DEBUG);
        LogHelper.i("scenery", getName() + ": charge hundred record time " + l);
        return false;
        long l = System.currentTimeMillis() - l;
        if (l < mChargeTime) {
          break;
        }
        paramBundle = new Intent(SceneryLibrary.getAppContext(), DialogActivity.class);
        paramBundle.addFlags(268435456);
        paramBundle.putExtra("scenery_extra_name", getName());
        paramBundle.putExtra("scenery_extra_recommend_package", getRecommendPkgName());
        paramBundle.putExtra("scenery_charge_extra_minutes", l);
        paramBundle.setPackage(localContext.getPackageName());
        try
        {
          SceneryLibrary.getAppContext().startActivity(paramBundle);
          return true;
        }
        catch (Throwable paramBundle) {}
      } while (!DEBUG);
      LogHelper.d("scenery", getName() + ": childHandleScenery:Exception=" + paramBundle.getMessage());
      return false;
    } while (!DEBUG);
    LogHelper.i("scenery", getName() + ": schedule charge scenery too frequently");
    return false;
  }
  
  public boolean checkConfigRules(Bundle paramBundle)
  {
    if (!super.checkConfigRules(paramBundle)) {}
    do
    {
      do
      {
        return false;
        paramBundle = SceneryLibrary.getAppContext();
        if ((Build.VERSION.SDK_INT < 22) && (!DevicesUtils.isGalaxyNoteEdge())) {
          break;
        }
        if (mSwitch4Android51) {
          break label112;
        }
      } while (!DEBUG);
      LogHelper.i("scenery", getName() + ": switch for android5.1 off");
      return false;
      if (RuleUtils.isHomeFirst(paramBundle)) {
        break;
      }
    } while (!DEBUG);
    LogHelper.i("scenery", getName() + ": home is not at the top of screen");
    return false;
    label112:
    return true;
  }
  
  protected boolean childHandleScenery(Bundle paramBundle)
  {
    return checkChargeTime(paramBundle);
  }
  
  public String getName()
  {
    return "scenery_charge";
  }
  
  protected String getRecommendPkgName()
  {
    if (!TextUtils.isEmpty(mCloudRecommendPkg)) {
      return mCloudRecommendPkg;
    }
    return "com.dianxinos.dxbs";
  }
}

/* Location:
 * Qualified Name:     com.baidu.scenery.dispatcher.ChargeSceneryExecutor
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
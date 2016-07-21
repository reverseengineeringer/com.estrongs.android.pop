package com.baidu.scenery.dispatcher;

import android.content.Context;
import com.baidu.scenery.SceneryConstants;
import com.baidu.scenery.SceneryLibrary;
import com.baidu.scenery.utils.LogHelper;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

class GeneralRules
{
  private static final boolean DEBUG = ;
  public static final long DEF_NEW_USER_PRO_TIME_MIN = 720L;
  public static final long DEF_SHOW_GAP_MIN = 2880L;
  public static final int DEF_SHOW_TIMES = 10;
  public static final long DEF_TIME_STAMP = -1L;
  public static final int PRIORITY_INVALID = -1;
  private static final String TAG = "scenery";
  private static GeneralRules sChecker;
  long newUserProTime = 43200000L;
  int priority = getDefPriority();
  long showGap = 172800000L;
  int showTimes = 10;
  long timeStamp = -1L;
  
  private boolean checkNewUserProtect(Context paramContext)
  {
    long l1 = SceneryPreferences.getSceneryInstallTime(paramContext);
    long l2 = System.currentTimeMillis();
    return (l1 > l2) || (l2 - l1 > newUserProTime);
  }
  
  private boolean checkPriority(Context paramContext)
  {
    if (priority == -1)
    {
      if (DEBUG) {
        LogHelper.i("scenery", "self priority invalid");
      }
      return false;
    }
    List localList = RuleUtils.getMultiConfigList(paramContext);
    RuleUtils.syncMultiConfig(paramContext, localList);
    return isTopPriority(localList);
  }
  
  private boolean checkShowTimes(Context paramContext)
  {
    long l = SceneryPreferences.getSceneryShowTimes(paramContext);
    return showTimes > l;
  }
  
  public static int getDefPriority()
  {
    Object localObject = SceneryLibrary.getAppContext().getPackageName();
    localObject = (Integer)SceneryConstants.PKG_PRIORITY_MAP.get(localObject);
    if (localObject == null) {
      return -1;
    }
    return ((Integer)localObject).intValue();
  }
  
  public static GeneralRules getRules()
  {
    try
    {
      if (sChecker == null) {
        sChecker = new GeneralRules();
      }
      GeneralRules localGeneralRules = sChecker;
      return localGeneralRules;
    }
    finally {}
  }
  
  private boolean isTopPriority(List<MultiConfig> paramList)
  {
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      MultiConfig localMultiConfig = (MultiConfig)paramList.next();
      if (priority != -1)
      {
        if (priority < priority) {
          return false;
        }
        if ((priority == priority) && (timeStamp > timeStamp)) {
          return false;
        }
      }
    }
    return true;
  }
  
  public static void replaceGeneralRules(GeneralRules paramGeneralRules)
  {
    try
    {
      sChecker = paramGeneralRules;
      return;
    }
    finally
    {
      paramGeneralRules = finally;
      throw paramGeneralRules;
    }
  }
  
  public boolean checkShowGap(Context paramContext)
  {
    long l1 = SceneryPreferences.getSceneryShowTime(paramContext);
    long l2 = System.currentTimeMillis();
    return (l2 > l1) && (l2 - l1 >= showGap);
  }
  
  public boolean doCheck(Context paramContext)
  {
    if (!RuleUtils.isNetworkAvailable(paramContext)) {
      if (DEBUG) {
        LogHelper.i("scenery", "general rules: network unavailable");
      }
    }
    do
    {
      do
      {
        do
        {
          return false;
          if (checkShowTimes(paramContext)) {
            break;
          }
        } while (!DEBUG);
        LogHelper.i("scenery", "general rules: show scenery too much");
        return false;
        if (checkNewUserProtect(paramContext)) {
          break;
        }
      } while (!DEBUG);
      LogHelper.i("scenery", "general rules: in new user protect time");
      return false;
      if (checkPriority(paramContext)) {
        break;
      }
    } while (!DEBUG);
    LogHelper.i("scenery", "general rules: check priority failed");
    return false;
    return true;
  }
  
  public void updateShowCount()
  {
    Context localContext = SceneryLibrary.getAppContext();
    SceneryPreferences.saveSceneryShowTimes(localContext, SceneryPreferences.getSceneryShowTimes(localContext) + 1);
  }
  
  public void updateShowTime()
  {
    SceneryPreferences.saveSceneryShowTime(SceneryLibrary.getAppContext(), System.currentTimeMillis());
  }
}

/* Location:
 * Qualified Name:     com.baidu.scenery.dispatcher.GeneralRules
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
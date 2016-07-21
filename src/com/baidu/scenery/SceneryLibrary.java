package com.baidu.scenery;

import android.content.Context;
import com.baidu.mobula.reportsdk.MobulaCore;
import com.baidu.scenery.dispatcher.RuleUtils;
import com.baidu.scenery.dispatcher.SceneryConfigHandler;
import com.baidu.scenery.dispatcher.SceneryDispatcher;
import com.baidu.scenery.utils.LogHelper;

public class SceneryLibrary
{
  private static final boolean DEBUG = ;
  private static final String TAG = "scenery";
  private static Context sAppContext;
  private static String sBdct;
  private static String sDataPipeID;
  private static boolean sDebug;
  private static int sSid;
  
  public static Context getAppContext()
  {
    return sAppContext;
  }
  
  public static String getBdct()
  {
    if (sBdct != null) {
      return sBdct;
    }
    return "a";
  }
  
  public static String getDataPipeID()
  {
    return sDataPipeID;
  }
  
  public static int getSid()
  {
    return sSid;
  }
  
  public static boolean init(SceneryLibrary.SceneryParameter paramSceneryParameter)
  {
    if ((paramSceneryParameter == null) || (!paramSceneryParameter.checkParameters())) {
      return false;
    }
    sAppContext = context.getApplicationContext();
    sBdct = bdct;
    sDataPipeID = dataPipeID;
    sDebug = debug;
    sSid = sid;
    LogHelper.setLogEnabled(sDebug);
    MobulaCore.setEnvironment(mobuleEnv);
    if (DEBUG) {
      LogHelper.d("scenery", "SceneryLibrary:init,sDataPipeID" + sDataPipeID + ";sDebug=" + sDebug + ";sSid=" + sSid);
    }
    SceneryDispatcher.getInstance().onInitialize();
    return true;
  }
  
  public static boolean isDebug()
  {
    return sDebug;
  }
  
  public static boolean isSceneryRunOut(Context paramContext, String paramString)
  {
    return RuleUtils.isSceneryRunOut(paramContext, paramString);
  }
  
  public static void refreshConfigs(Context paramContext, String paramString)
  {
    sAppContext = paramContext.getApplicationContext();
    SceneryConfigHandler.loadConfigs(paramContext, paramString);
  }
}

/* Location:
 * Qualified Name:     com.baidu.scenery.SceneryLibrary
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
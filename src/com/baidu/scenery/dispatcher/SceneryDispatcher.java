package com.baidu.scenery.dispatcher;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.IntentFilter.MalformedMimeTypeException;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.baidu.scenery.SceneryLibrary;
import com.baidu.scenery.dispatcher.appinfo.AppInfoManager;
import com.baidu.scenery.utils.DevicesUtils;
import com.baidu.scenery.utils.LogHelper;
import com.dianxinos.library.dxbase.o;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class SceneryDispatcher
  extends Handler
{
  private static final boolean DEBUG = ;
  private static SceneryDispatcher INSTANCE;
  private static final int MSG_ON_CLOUD_UPDATE = 2;
  private static final int MSG_ON_INITIALIZE = 1;
  private static final int MSG_ON_SCENERY_CHARGE = 5;
  private static final int MSG_ON_SCENERY_DISK_CHECK = 4;
  private static final int MSG_ON_SCENERY_TAKEN_PHOTO = 3;
  private static final int MSG_ON_SCENERY_UNINSTALL = 6;
  private static final HashMap<String, Integer> SCENERYS_MAP = new HashMap();
  private static final String TAG = "scenery";
  
  private SceneryDispatcher(Looper paramLooper)
  {
    super(paramLooper);
    SCENERYS_MAP.put("scenery_take_photo", Integer.valueOf(3));
    SCENERYS_MAP.put("scenery_disk_usage", Integer.valueOf(4));
    SCENERYS_MAP.put("scenery_charge", Integer.valueOf(5));
    SCENERYS_MAP.put("scenery_uninstall", Integer.valueOf(6));
  }
  
  public static SceneryDispatcher getInstance()
  {
    try
    {
      if (INSTANCE == null) {
        INSTANCE = new SceneryDispatcher(o.c());
      }
      SceneryDispatcher localSceneryDispatcher = INSTANCE;
      return localSceneryDispatcher;
    }
    finally {}
  }
  
  private void handleInitialize()
  {
    if (DEBUG) {
      LogHelper.i("scenery", "handleInitialize " + DevicesUtils.getDeviceDescription());
    }
    SceneryConfigHandler.loadConfigsAndListen();
    if (SceneryPreferences.getSceneryInstallTime(SceneryLibrary.getAppContext()) <= 0L)
    {
      long l3 = RuleUtils.getProductMatrixInstallTime(SceneryLibrary.getAppContext());
      long l2 = System.currentTimeMillis();
      long l1 = l3;
      if (l3 <= 0L) {
        l1 = l2;
      }
      SceneryPreferences.saveSceneryInstallTime(SceneryLibrary.getAppContext(), l1);
      SceneryPreferences.saveScenerySelfInstallTime(SceneryLibrary.getAppContext(), l2);
    }
    Context localContext = SceneryLibrary.getAppContext();
    Object localObject = new IntentFilter("android.intent.action.BATTERY_CHANGED");
    localObject = localContext.registerReceiver(new BatteryInfoReceiver(), (IntentFilter)localObject);
    if (localObject != null) {
      BatteryInfoReceiver.onBatteryInfoChanged((Intent)localObject);
    }
    localObject = new IntentFilter("android.intent.action.PACKAGE_REMOVED");
    ((IntentFilter)localObject).addAction("android.intent.action.PACKAGE_ADDED");
    ((IntentFilter)localObject).addDataScheme("package");
    localContext.registerReceiver(new PackageRemoveReceiver(), (IntentFilter)localObject);
    localObject = new IntentFilter();
    ((IntentFilter)localObject).addAction("com.android.camera.NEW_PICTURE");
    ((IntentFilter)localObject).addAction("android.hardware.action.NEW_PICTURE");
    try
    {
      ((IntentFilter)localObject).addDataType("image/*");
      localContext.registerReceiver(new TakenPhotoReceiver(), (IntentFilter)localObject);
      localObject = new IntentFilter("android.intent.action.SCREEN_ON");
      localContext.registerReceiver(new ScreenOnReceiver(), (IntentFilter)localObject);
      postDelayed(new SceneryDispatcher.1(this), 60000L);
      AppInfoManager.initAppInfo(localContext);
      RuleUtils.syncMultiConfig(localContext, RuleUtils.getMultiConfigList(localContext));
      return;
    }
    catch (IntentFilter.MalformedMimeTypeException localMalformedMimeTypeException)
    {
      for (;;) {}
    }
  }
  
  private void handleOnCloudUpdate(Message paramMessage)
  {
    if ((paramMessage == null) || (!(obj instanceof SceneryConfigHandler.SceneryConfig))) {
      return;
    }
    updateConfig((SceneryConfigHandler.SceneryConfig)obj);
  }
  
  private void handleOnScenery(Message paramMessage)
  {
    if ((paramMessage == null) || (!(obj instanceof String))) {
      return;
    }
    handleOnScenery((String)obj, paramMessage.peekData());
  }
  
  private void handleOnScenery(String paramString, Bundle paramBundle)
  {
    Context localContext = SceneryLibrary.getAppContext();
    SceneryExecutor localSceneryExecutor = ExecutorManager.getInstance().getExecutor(paramString);
    if ((localSceneryExecutor == null) || (!TextUtils.equals(paramString, localSceneryExecutor.getName()))) {
      if (DEBUG) {
        LogHelper.i("scenery", "without scenery executor for " + paramString);
      }
    }
    label246:
    do
    {
      do
      {
        do
        {
          do
          {
            do
            {
              return;
              if (localSceneryExecutor.checkConfigRules(paramBundle)) {
                break;
              }
            } while (!DEBUG);
            LogHelper.i("scenery", paramString + ": check scene config rules failed");
            return;
            if (GeneralRules.getRules().doCheck(localContext)) {
              break;
            }
          } while (!DEBUG);
          LogHelper.i("scenery", paramString + ": check general rules failed");
          return;
          if (!localSceneryExecutor.isHigherPriority()) {
            break label246;
          }
          if (DEBUG) {
            LogHelper.i("scenery", paramString + ": has higher priority");
          }
          if (localSceneryExecutor.handleScenery(paramBundle)) {
            break;
          }
        } while (!DEBUG);
        LogHelper.i("scenery", paramString + ": handle scenery abort");
        return;
        GeneralRules.getRules().updateShowCount();
        GeneralRules.getRules().updateShowTime();
        return;
        if (GeneralRules.getRules().checkShowGap(localContext)) {
          break;
        }
      } while (!DEBUG);
      LogHelper.i("scenery", paramString + ": check general show gap failed");
      return;
      if (localSceneryExecutor.handleScenery(paramBundle)) {
        break;
      }
    } while (!DEBUG);
    LogHelper.i("scenery", paramString + ": handle scenery abort");
    return;
    GeneralRules.getRules().updateShowCount();
    GeneralRules.getRules().updateShowTime();
  }
  
  private void updateConfig(SceneryConfigHandler.SceneryConfig paramSceneryConfig)
  {
    Context localContext = SceneryLibrary.getAppContext();
    SceneryPreferences.saveSceneryPriority(localContext, generalRules.priority);
    SceneryPreferences.saveSceneryConfigTimeStamp(localContext, generalRules.timeStamp);
    SceneryPreferences.saveSceneryConfigCount(localContext, generalRules.showTimes);
    if ((sceneryExecutors != null) && (!sceneryExecutors.isEmpty()))
    {
      Iterator localIterator = sceneryExecutors.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        if (localEntry.getValue() != null)
        {
          SceneryPreferences.saveSameSceneryConfigCount(localContext, (String)localEntry.getKey(), ((SceneryExecutor)localEntry.getValue()).getShowNum());
          SceneryPreferences.saveSameSceneryConfigSwitch(localContext, (String)localEntry.getKey(), ((SceneryExecutor)localEntry.getValue()).getSwitch());
        }
      }
    }
    GeneralRules.replaceGeneralRules(generalRules);
    ExecutorManager.getInstance().clearExecutors();
    ExecutorManager.getInstance().replaceExecutors(sceneryExecutors);
  }
  
  public void handleMessage(Message paramMessage)
  {
    switch (what)
    {
    default: 
      return;
    case 1: 
      handleInitialize();
      return;
    case 2: 
      handleOnCloudUpdate(paramMessage);
      return;
    }
    handleOnScenery(paramMessage);
  }
  
  public void onCloudUpdate(SceneryConfigHandler.SceneryConfig paramSceneryConfig)
  {
    if (DEBUG) {
      LogHelper.i("scenery", "on DataPipe update");
    }
    sendMessage(obtainMessage(2, paramSceneryConfig));
  }
  
  public void onInitialize()
  {
    if (DEBUG) {
      LogHelper.i("scenery", "onInitialize");
    }
    sendMessage(obtainMessage(1));
  }
  
  public void onSceneryOccur(String paramString, Bundle paramBundle)
  {
    if (DEBUG) {
      LogHelper.i("scenery", "on scenery occur: " + paramString);
    }
    if (!SCENERYS_MAP.containsKey(paramString)) {
      return;
    }
    int i = ((Integer)SCENERYS_MAP.get(paramString)).intValue();
    removeMessages(i);
    Message localMessage = obtainMessage(i);
    obj = paramString;
    if ((paramBundle != null) || (!paramBundle.isEmpty())) {
      localMessage.getData().putAll(paramBundle);
    }
    sendMessage(localMessage);
  }
  
  public void onSceneryOccurDelay(String paramString, Bundle paramBundle, long paramLong)
  {
    if (DEBUG) {
      LogHelper.i("scenery", "on scenery occur delay! " + paramString + ", time: " + paramLong);
    }
    if (!SCENERYS_MAP.containsKey(paramString)) {}
    int i;
    do
    {
      return;
      i = ((Integer)SCENERYS_MAP.get(paramString)).intValue();
    } while (hasMessages(i));
    Message localMessage = obtainMessage(i);
    obj = paramString;
    if ((paramBundle != null) || (!paramBundle.isEmpty())) {
      localMessage.getData().putAll(paramBundle);
    }
    sendMessageDelayed(localMessage, paramLong);
  }
}

/* Location:
 * Qualified Name:     com.baidu.scenery.dispatcher.SceneryDispatcher
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
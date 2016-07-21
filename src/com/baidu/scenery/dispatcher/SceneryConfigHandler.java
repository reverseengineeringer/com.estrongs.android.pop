package com.baidu.scenery.dispatcher;

import android.content.Context;
import android.content.IntentFilter;
import android.os.Handler;
import android.text.TextUtils;
import com.baidu.scenery.SceneryLibrary;
import com.baidu.scenery.utils.LogHelper;
import com.dianxinos.library.dxbase.o;
import com.dianxinos.library.notify.c;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public class SceneryConfigHandler
{
  private static final String ACTION_SYNC_SCENERY_CONFIG = "com.baidu.scenery.dispatch.ACTION_SYNC_SCENERY_CONFIG";
  private static final boolean DEBUG = ;
  private static final String JSON_CHARGE_CHARGE_TIME = "charge_time";
  private static final String JSON_CHARGE_SECTION = "ChargingScene";
  private static final String JSON_DISKUSAGE_NEW_FILES_MB = "new_files_mb";
  private static final String JSON_DISKUSAGE_NEW_FILES_TIME_INTERVAL = "new_files_time_interval";
  private static final String JSON_DISKUSAGE_SECTION = "DiskUsageScene";
  private static final String JSON_GENERAL_SECTION = "GeneralConfig";
  private static final String JSON_GENERAL_TIME_INTERVAL = "general_time_interval";
  private static final String JSON_GENERAL_TOTAL_SHOW_NUM = "general_total_show_num";
  private static final String JSON_NEW_USER_PRO_TIME = "new_user_pro_time";
  private static final String JSON_PRIORITY = "priority";
  private static final String JSON_SCENERY_RECOMMEND_PKG = "recommend_pkg";
  private static final String JSON_SCENERY_SWITCH = "switch";
  private static final String JSON_SCENERY_SWITCH_FOR_ANDROID51 = "switch_for_android51";
  private static final String JSON_SCENERY_TIME_INTERVAL = "time_interval";
  private static final String JSON_SCENERY_TIME_INTERVAL_SIGN = "time_interval_sign";
  private static final String JSON_SCENERY_TOTAL_SHOW_NUM = "total_show_num";
  private static final String JSON_TAKEPHOTO_CHECK_FACE = "check_face";
  private static final String JSON_TAKEPHOTO_SECTION = "TakePhotoScene";
  private static final String JSON_TIME_STAMP = "time_stamp";
  private static final String JSON_UNINSTALL_SECTION = "UninstallResidueScene";
  private static final String TAG = "scenery";
  
  private static void buildAbstractSceneryExecutor(AbstractSceneryExecutor paramAbstractSceneryExecutor, JSONObject paramJSONObject)
  {
    mSwitch = paramJSONObject.optBoolean("switch", false);
    mCloudRecommendPkg = paramJSONObject.optString("recommend_pkg", null);
    mTotalShowNum = paramJSONObject.optInt("total_show_num", 3);
    mTimeInterval = (paramJSONObject.optLong("time_interval", 2880L) * 60000L);
    mTimeIntervalSign = paramJSONObject.optBoolean("time_interval_sign", false);
  }
  
  private static SceneryExecutor buildChargingScene(JSONObject paramJSONObject)
  {
    ChargeSceneryExecutor localChargeSceneryExecutor = new ChargeSceneryExecutor();
    paramJSONObject = paramJSONObject.getJSONObject("ChargingScene");
    if (paramJSONObject != null)
    {
      buildAbstractSceneryExecutor(localChargeSceneryExecutor, paramJSONObject);
      mSwitch4Android51 = paramJSONObject.optBoolean("switch_for_android51", false);
      mChargeTime = (paramJSONObject.optLong("charge_time", 60L) * 60000L);
    }
    return localChargeSceneryExecutor;
  }
  
  private static SceneryExecutor buildDiskUsageScene(JSONObject paramJSONObject)
  {
    DiskUsageSceneryExecutor localDiskUsageSceneryExecutor = new DiskUsageSceneryExecutor();
    paramJSONObject = paramJSONObject.getJSONObject("DiskUsageScene");
    if (paramJSONObject != null)
    {
      buildAbstractSceneryExecutor(localDiskUsageSceneryExecutor, paramJSONObject);
      mSwitch4Android51 = paramJSONObject.optBoolean("switch_for_android51", false);
      mNewFilesTimeInterval = (paramJSONObject.optLong("new_files_time_interval", 4320L) * 60000L);
      mNewFilesMB = paramJSONObject.optInt("new_files_mb", 500);
    }
    return localDiskUsageSceneryExecutor;
  }
  
  private static GeneralRules buildGeneralRules(JSONObject paramJSONObject)
  {
    GeneralRules localGeneralRules = new GeneralRules();
    paramJSONObject = paramJSONObject.getJSONObject("GeneralConfig");
    if (paramJSONObject != null)
    {
      if ((paramJSONObject.has("priority")) && (paramJSONObject.has("time_stamp")))
      {
        priority = paramJSONObject.optInt("priority", GeneralRules.getDefPriority());
        timeStamp = paramJSONObject.optLong("time_stamp", -1L);
      }
      newUserProTime = (paramJSONObject.optLong("new_user_pro_time", 720L) * 60000L);
      showTimes = paramJSONObject.optInt("general_total_show_num", 10);
      showGap = (paramJSONObject.optLong("general_time_interval", 2880L) * 60000L);
    }
    return localGeneralRules;
  }
  
  private static SceneryExecutor buildTakePhotoScene(JSONObject paramJSONObject)
  {
    TakePhotoSceneryExecutor localTakePhotoSceneryExecutor = new TakePhotoSceneryExecutor();
    paramJSONObject = paramJSONObject.getJSONObject("TakePhotoScene");
    if (paramJSONObject != null)
    {
      buildAbstractSceneryExecutor(localTakePhotoSceneryExecutor, paramJSONObject);
      mSwitch4Android51 = paramJSONObject.optBoolean("switch_for_android51", false);
      mCheckFace = paramJSONObject.optBoolean("check_face", true);
    }
    return localTakePhotoSceneryExecutor;
  }
  
  private static SceneryExecutor buildUninstallResidueScene(JSONObject paramJSONObject)
  {
    UninstallSceneryExecutor localUninstallSceneryExecutor = new UninstallSceneryExecutor();
    paramJSONObject = paramJSONObject.getJSONObject("UninstallResidueScene");
    if (paramJSONObject != null) {
      buildAbstractSceneryExecutor(localUninstallSceneryExecutor, paramJSONObject);
    }
    return localUninstallSceneryExecutor;
  }
  
  private static SceneryConfigHandler.SceneryConfig fromDefault()
  {
    SceneryConfigHandler.SceneryConfig localSceneryConfig = new SceneryConfigHandler.SceneryConfig();
    generalRules = new GeneralRules();
    sceneryExecutors.put("scenery_charge", new ChargeSceneryExecutor());
    sceneryExecutors.put("scenery_uninstall", new UninstallSceneryExecutor());
    sceneryExecutors.put("scenery_disk_usage", new DiskUsageSceneryExecutor());
    sceneryExecutors.put("scenery_take_photo", new TakePhotoSceneryExecutor());
    return localSceneryConfig;
  }
  
  private static SceneryConfigHandler.SceneryConfig fromJson(String paramString)
  {
    try
    {
      SceneryConfigHandler.SceneryConfig localSceneryConfig = new SceneryConfigHandler.SceneryConfig();
      paramString = new JSONObject(paramString);
      generalRules = buildGeneralRules(paramString);
      sceneryExecutors.put("scenery_charge", buildChargingScene(paramString));
      sceneryExecutors.put("scenery_uninstall", buildUninstallResidueScene(paramString));
      sceneryExecutors.put("scenery_disk_usage", buildDiskUsageScene(paramString));
      sceneryExecutors.put("scenery_take_photo", buildTakePhotoScene(paramString));
      return localSceneryConfig;
    }
    catch (JSONException paramString)
    {
      if (DEBUG)
      {
        LogHelper.d("scenery", "fromJson: JSONException:" + paramString.getMessage());
        paramString.printStackTrace();
      }
    }
    return null;
  }
  
  public static void loadConfigs(Context paramContext, String paramString)
  {
    if (DEBUG) {
      LogHelper.i("scenery", "start loadConfigs");
    }
    c.a(paramString, new SceneryConfigHandler.1(paramString, paramContext));
    new Handler(o.c()).post(new SceneryConfigHandler.2(paramContext, paramString));
  }
  
  static void loadConfigsAndListen()
  {
    Context localContext = SceneryLibrary.getAppContext();
    SceneryConfigHandler.3 local3 = new SceneryConfigHandler.3(localContext);
    IntentFilter localIntentFilter = new IntentFilter("com.baidu.scenery.dispatch.ACTION_SYNC_SCENERY_CONFIG");
    try
    {
      localContext.registerReceiver(local3, localIntentFilter);
      loadSceneryConfig(SceneryPreferences.getSceneryConfig(localContext));
      return;
    }
    catch (Throwable localThrowable)
    {
      for (;;)
      {
        if (DEBUG) {
          LogHelper.i("scenery", "register config receiver error!");
        }
      }
    }
  }
  
  private static void loadSceneryConfig(String paramString)
  {
    Object localObject;
    if (DEBUG)
    {
      StringBuilder localStringBuilder = new StringBuilder().append("loadSceneryConfig: body");
      if (paramString == null)
      {
        localObject = "";
        LogHelper.d("scenery", (String)localObject);
      }
    }
    else
    {
      localObject = null;
      if (!TextUtils.isEmpty(paramString)) {
        localObject = fromJson(paramString);
      }
      if (localObject != null) {
        break label94;
      }
      localObject = fromDefault();
      paramString = (String)localObject;
      if (DEBUG)
      {
        LogHelper.d("scenery", "loadSceneryConfig: fromDefault");
        paramString = (String)localObject;
      }
    }
    for (;;)
    {
      SceneryDispatcher.getInstance().onCloudUpdate(paramString);
      return;
      localObject = paramString;
      break;
      label94:
      paramString = (String)localObject;
      if (DEBUG)
      {
        LogHelper.d("scenery", "loadSceneryConfig: fromJson");
        paramString = (String)localObject;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.baidu.scenery.dispatcher.SceneryConfigHandler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.baidu.scenery.dispatcher;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.text.TextUtils;
import com.baidu.scenery.SceneryConstants;
import com.baidu.scenery.utils.LogHelper;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class SceneryPreferences
{
  public static final boolean DEBUG = ;
  private static final String SP_FILE_SCENERY_GLOBAL = "_sp_file_scenery_global";
  private static final String SP_FILE_SCENERY_PRIVATE = "_sp_file_scenery_private";
  private static final String SP_GLOBAL_KEY_CONFIG_COUNT = "sp_global_key_config_count";
  private static final String SP_GLOBAL_KEY_SAME_SCENERY_SHOW_COUNT = "sp_global_key_same_scenery_show_count_";
  private static final String SP_GLOBAL_KEY_SAME_SCENERY_SHOW_TIME = "sp_global_key_same_scenery_show_time_";
  private static final String SP_GLOBAL_KEY_SCENERY_CONFIG_COUNT = "sp_global_key_scenery_config_count_";
  private static final String SP_GLOBAL_KEY_SCENERY_CONFIG_SWITCH = "sp_global_key_scenery_config_switch_";
  private static final String SP_GLOBAL_KEY_SCENERY_INSTALL_TIME = "sp_global_key_scenery_install_time";
  private static final String SP_GLOBAL_KEY_SCENERY_PRIORITY = "sp_global_key_scenery_priority";
  private static final String SP_GLOBAL_KEY_SCENERY_SHOWTIME = "sp_global_key_scenery_showtime";
  private static final String SP_GLOBAL_KEY_SCENERY_SHOWTIMES = "sp_global_key_scenery_showtimes";
  private static final String SP_GLOBAL_KEY_SCENERY_TIMESTAMP = "sp_global_key_scenery_timestamp";
  private static final String SP_PRIVATE_KEY_APP_INFO_LANG = "sp_private_key_app_info_lang";
  private static final String SP_PRIVATE_KEY_CHARGE_HUNDRED_TIME = "sp_private_key_charge_hundred_time";
  private static final String SP_PRIVATE_KEY_DISK_USAGE_SIZE = "sp_private_key_disk_usage_size";
  private static final String SP_PRIVATE_KEY_DISK_USAGE_TIME = "sp_private_key_disk_usage_time";
  private static final String SP_PRIVATE_KEY_IS_INIT_APP_INFO = "sp_private_key_is_init_app_info";
  private static final String SP_PRIVATE_KEY_SCENERY_CONFIG = "sp_private_key_scenery_config";
  private static final String SP_PRIVATE_KEY_SCENERY_SLEF_INSTALL_TIME = "sp_private_key_scenery_self_install_time";
  private static final String TAG = "scenery";
  
  public static String getAppInfoLang(Context paramContext)
  {
    return getPrivateSharedPreferences(paramContext, "_sp_file_scenery_private").getString("sp_private_key_app_info_lang", "");
  }
  
  public static long getChargeHundredTime(Context paramContext)
  {
    return getPrivateSharedPreferences(paramContext, "_sp_file_scenery_private").getLong("sp_private_key_charge_hundred_time", 0L);
  }
  
  public static long getClickTimeStamp(Context paramContext, String paramString)
  {
    return getPrivateSharedPreferences(paramContext, "_sp_file_scenery_private").getLong(paramString, 0L);
  }
  
  public static long getDiskUsageSize(Context paramContext)
  {
    return getPrivateSharedPreferences(paramContext, "_sp_file_scenery_private").getLong("sp_private_key_disk_usage_size", 0L);
  }
  
  public static long getDiskUsageTime(Context paramContext)
  {
    return getPrivateSharedPreferences(paramContext, "_sp_file_scenery_private").getLong("sp_private_key_disk_usage_time", 0L);
  }
  
  private static SharedPreferences getGlobalPreferencesForPackage(Context paramContext, String paramString1, String paramString2)
  {
    if (TextUtils.equals(paramContext.getPackageName(), paramString1)) {
      return paramContext.getSharedPreferences(paramString1 + paramString2, 5);
    }
    try
    {
      paramContext = paramContext.createPackageContext(paramString1, 3);
      return paramContext.getSharedPreferences(paramString1 + paramString2, 5);
    }
    catch (Throwable paramContext) {}
    return null;
  }
  
  private static SharedPreferences getGlobalSharedPreferences(Context paramContext, String paramString)
  {
    String str = paramContext.getPackageName();
    return paramContext.getSharedPreferences(str + paramString, 5);
  }
  
  public static boolean getIsInitAppInfo(Context paramContext)
  {
    return getPrivateSharedPreferences(paramContext, "_sp_file_scenery_private").getBoolean("sp_private_key_is_init_app_info", false);
  }
  
  public static MultiConfig getMyMultiConfig(Context paramContext)
  {
    if (DEBUG) {
      LogHelper.d("scenery", "global config name is pkg + filename");
    }
    SharedPreferences localSharedPreferences = getGlobalSharedPreferences(paramContext, "_sp_file_scenery_global");
    if (localSharedPreferences == null) {
      return null;
    }
    MultiConfig localMultiConfig = new MultiConfig();
    pkgName = paramContext.getPackageName();
    priority = localSharedPreferences.getInt("sp_global_key_scenery_priority", GeneralRules.getDefPriority());
    timeStamp = localSharedPreferences.getLong("sp_global_key_scenery_timestamp", -1L);
    generalHaveShowCount = localSharedPreferences.getInt("sp_global_key_scenery_showtimes", 0);
    generalLastShowTime = localSharedPreferences.getLong("sp_global_key_scenery_showtime", 0L);
    paramContext = SceneryConstants.SCENERY_LIST.iterator();
    while (paramContext.hasNext())
    {
      String str = (String)paramContext.next();
      int i = localSharedPreferences.getInt("sp_global_key_same_scenery_show_count_" + str, 0);
      long l = localSharedPreferences.getLong("sp_global_key_same_scenery_show_time_" + str, 0L);
      mSceneHaveShowCount.put(str, Integer.valueOf(i));
      mSceneLastShowTime.put(str, Long.valueOf(l));
    }
    return localMultiConfig;
  }
  
  private static SharedPreferences getPrivateSharedPreferences(Context paramContext, String paramString)
  {
    String str = paramContext.getPackageName();
    return paramContext.getSharedPreferences(str + paramString, 4);
  }
  
  public static int getSameSceneryConfigCount(Context paramContext, String paramString)
  {
    return getGlobalSharedPreferences(paramContext, "_sp_file_scenery_global").getInt("sp_global_key_scenery_config_count_" + paramString, 0);
  }
  
  public static boolean getSameSceneryConfigSwitch(Context paramContext, String paramString)
  {
    return getGlobalSharedPreferences(paramContext, "_sp_file_scenery_global").getBoolean("sp_global_key_scenery_config_switch_" + paramString, false);
  }
  
  public static int getSameSceneryShowCount(Context paramContext, String paramString)
  {
    return getGlobalSharedPreferences(paramContext, "_sp_file_scenery_global").getInt("sp_global_key_same_scenery_show_count_" + paramString, 0);
  }
  
  public static long getSameSceneryShowTime(Context paramContext, String paramString)
  {
    return getGlobalSharedPreferences(paramContext, "_sp_file_scenery_global").getLong("sp_global_key_same_scenery_show_time_" + paramString, 0L);
  }
  
  public static String getSceneryConfig(Context paramContext)
  {
    return getPrivateSharedPreferences(paramContext, "_sp_file_scenery_private").getString("sp_private_key_scenery_config", "");
  }
  
  public static int getSceneryConfigCount(Context paramContext)
  {
    return getGlobalSharedPreferences(paramContext, "_sp_file_scenery_global").getInt("sp_global_key_config_count", 0);
  }
  
  public static long getSceneryConfigTimeStamp(Context paramContext)
  {
    return getGlobalSharedPreferences(paramContext, "_sp_file_scenery_global").getLong("sp_global_key_scenery_timestamp", -1L);
  }
  
  public static long getSceneryInstallTime(Context paramContext)
  {
    return getGlobalSharedPreferences(paramContext, "_sp_file_scenery_global").getLong("sp_global_key_scenery_install_time", 0L);
  }
  
  public static long getSceneryInstallTimeForPackage(Context paramContext, String paramString)
  {
    paramContext = getGlobalPreferencesForPackage(paramContext, paramString, "_sp_file_scenery_global");
    if (paramContext == null) {
      return -1L;
    }
    return paramContext.getLong("sp_global_key_scenery_install_time", -1L);
  }
  
  public static MultiConfig getSceneryMultiConfigForPackage(Context paramContext, String paramString)
  {
    paramContext = getGlobalPreferencesForPackage(paramContext, paramString, "_sp_file_scenery_global");
    if (paramContext == null) {
      return null;
    }
    MultiConfig localMultiConfig = new MultiConfig();
    pkgName = paramString;
    priority = paramContext.getInt("sp_global_key_scenery_priority", -1);
    timeStamp = paramContext.getLong("sp_global_key_scenery_timestamp", -1L);
    generalShowCount = paramContext.getInt("sp_global_key_config_count", 0);
    generalHaveShowCount = paramContext.getInt("sp_global_key_scenery_showtimes", 0);
    generalLastShowTime = paramContext.getLong("sp_global_key_scenery_showtime", 0L);
    paramString = SceneryConstants.SCENERY_LIST.iterator();
    while (paramString.hasNext())
    {
      String str = (String)paramString.next();
      int i = paramContext.getInt("sp_global_key_same_scenery_show_count_" + str, 0);
      long l = paramContext.getLong("sp_global_key_same_scenery_show_time_" + str, 0L);
      int j = paramContext.getInt("sp_global_key_scenery_config_count_" + str, 0);
      boolean bool = paramContext.getBoolean("sp_global_key_scenery_config_switch_" + str, false);
      mSceneShowCount.put(str, Integer.valueOf(j));
      mSceneHaveShowCount.put(str, Integer.valueOf(i));
      mSceneLastShowTime.put(str, Long.valueOf(l));
      mSceneSwitch.put(str, Boolean.valueOf(bool));
    }
    return localMultiConfig;
  }
  
  public static int getSceneryPriority(Context paramContext)
  {
    return getGlobalSharedPreferences(paramContext, "_sp_file_scenery_global").getInt("sp_global_key_scenery_priority", -1);
  }
  
  public static int getSceneryPriorityForPackage(Context paramContext, String paramString)
  {
    paramContext = getGlobalPreferencesForPackage(paramContext, paramString, "_sp_file_scenery_global");
    if (paramContext == null) {
      return -1;
    }
    return paramContext.getInt("sp_global_key_scenery_priority", -1);
  }
  
  public static long getScenerySelfInstallTime(Context paramContext)
  {
    return getPrivateSharedPreferences(paramContext, "_sp_file_scenery_private").getLong("sp_private_key_scenery_self_install_time", -1L);
  }
  
  public static long getSceneryShowTime(Context paramContext)
  {
    return getGlobalSharedPreferences(paramContext, "_sp_file_scenery_global").getLong("sp_global_key_scenery_showtime", 0L);
  }
  
  public static int getSceneryShowTimes(Context paramContext)
  {
    return getGlobalSharedPreferences(paramContext, "_sp_file_scenery_global").getInt("sp_global_key_scenery_showtimes", 0);
  }
  
  public static long getSceneryTimestampForPackage(Context paramContext, String paramString)
  {
    paramContext = getGlobalPreferencesForPackage(paramContext, paramString, "_sp_file_scenery_global");
    if (paramContext == null) {
      return -1L;
    }
    return paramContext.getLong("sp_global_key_scenery_timestamp", -1L);
  }
  
  public static void saveChargeHundredTime(Context paramContext, long paramLong)
  {
    getPrivateSharedPreferences(paramContext, "_sp_file_scenery_private").edit().putLong("sp_private_key_charge_hundred_time", paramLong).apply();
  }
  
  public static void saveDiskUsageSize(Context paramContext, long paramLong)
  {
    getPrivateSharedPreferences(paramContext, "_sp_file_scenery_private").edit().putLong("sp_private_key_disk_usage_size", paramLong).apply();
  }
  
  public static void saveDiskUsageTime(Context paramContext, long paramLong)
  {
    getPrivateSharedPreferences(paramContext, "_sp_file_scenery_private").edit().putLong("sp_private_key_disk_usage_time", paramLong).apply();
  }
  
  public static void saveSameSceneryConfigCount(Context paramContext, String paramString, int paramInt)
  {
    getGlobalSharedPreferences(paramContext, "_sp_file_scenery_global").edit().putInt("sp_global_key_scenery_config_count_" + paramString, paramInt).apply();
  }
  
  public static void saveSameSceneryConfigSwitch(Context paramContext, String paramString, boolean paramBoolean)
  {
    getGlobalSharedPreferences(paramContext, "_sp_file_scenery_global").edit().putBoolean("sp_global_key_scenery_config_switch_" + paramString, paramBoolean).apply();
  }
  
  public static void saveSameSceneryShowCount(Context paramContext, String paramString, int paramInt)
  {
    getGlobalSharedPreferences(paramContext, "_sp_file_scenery_global").edit().putInt("sp_global_key_same_scenery_show_count_" + paramString, paramInt).apply();
  }
  
  public static void saveSameSceneryShowTime(Context paramContext, String paramString, long paramLong)
  {
    getGlobalSharedPreferences(paramContext, "_sp_file_scenery_global").edit().putLong("sp_global_key_same_scenery_show_time_" + paramString, paramLong).apply();
  }
  
  public static void saveSceneryConfig(Context paramContext, String paramString)
  {
    getPrivateSharedPreferences(paramContext, "_sp_file_scenery_private").edit().putString("sp_private_key_scenery_config", paramString).commit();
  }
  
  public static void saveSceneryConfigCount(Context paramContext, int paramInt)
  {
    getGlobalSharedPreferences(paramContext, "_sp_file_scenery_global").edit().putInt("sp_global_key_config_count", paramInt).apply();
  }
  
  public static void saveSceneryConfigTimeStamp(Context paramContext, long paramLong)
  {
    getGlobalSharedPreferences(paramContext, "_sp_file_scenery_global").edit().putLong("sp_global_key_scenery_timestamp", paramLong).apply();
  }
  
  public static void saveSceneryInstallTime(Context paramContext, long paramLong)
  {
    getGlobalSharedPreferences(paramContext, "_sp_file_scenery_global").edit().putLong("sp_global_key_scenery_install_time", paramLong).apply();
  }
  
  public static void saveSceneryPriority(Context paramContext, int paramInt)
  {
    getGlobalSharedPreferences(paramContext, "_sp_file_scenery_global").edit().putInt("sp_global_key_scenery_priority", paramInt).apply();
  }
  
  public static void saveScenerySelfInstallTime(Context paramContext, long paramLong)
  {
    getPrivateSharedPreferences(paramContext, "_sp_file_scenery_private").edit().putLong("sp_private_key_scenery_self_install_time", paramLong).apply();
  }
  
  public static void saveSceneryShowTime(Context paramContext, long paramLong)
  {
    getGlobalSharedPreferences(paramContext, "_sp_file_scenery_global").edit().putLong("sp_global_key_scenery_showtime", paramLong).apply();
  }
  
  public static void saveSceneryShowTimes(Context paramContext, int paramInt)
  {
    getGlobalSharedPreferences(paramContext, "_sp_file_scenery_global").edit().putInt("sp_global_key_scenery_showtimes", paramInt).apply();
  }
  
  public static void setAppInfoLang(Context paramContext, String paramString)
  {
    getPrivateSharedPreferences(paramContext, "_sp_file_scenery_private").edit().putString("sp_private_key_app_info_lang", paramString).apply();
  }
  
  public static void setClickTimeStamp(Context paramContext, String paramString, long paramLong)
  {
    getPrivateSharedPreferences(paramContext, "_sp_file_scenery_private").edit().putLong(paramString, paramLong).apply();
  }
  
  public static void setIsInitAppInfo(Context paramContext, boolean paramBoolean)
  {
    getPrivateSharedPreferences(paramContext, "_sp_file_scenery_private").edit().putBoolean("sp_private_key_is_init_app_info", paramBoolean).apply();
  }
  
  public static void setSceneryMultiConfigForPackage(Context paramContext, String paramString, MultiConfig paramMultiConfig)
  {
    paramContext = getGlobalPreferencesForPackage(paramContext, paramString, "_sp_file_scenery_global");
    if (paramContext == null) {
      return;
    }
    paramContext = paramContext.edit();
    paramContext.putInt("sp_global_key_scenery_priority", priority);
    paramContext.putLong("sp_global_key_scenery_timestamp", timeStamp);
    paramContext.putInt("sp_global_key_scenery_showtimes", generalHaveShowCount);
    paramContext.putLong("sp_global_key_scenery_showtime", generalLastShowTime);
    paramString = SceneryConstants.SCENERY_LIST.iterator();
    while (paramString.hasNext())
    {
      Object localObject = (String)paramString.next();
      String str2 = "sp_global_key_same_scenery_show_count_" + (String)localObject;
      String str1 = "sp_global_key_same_scenery_show_time_" + (String)localObject;
      Integer localInteger = (Integer)mSceneHaveShowCount.get(localObject);
      if (localInteger != null) {
        paramContext.putInt(str2, localInteger.intValue());
      }
      localObject = (Long)mSceneLastShowTime.get(localObject);
      if (localObject != null) {
        paramContext.putLong(str1, ((Long)localObject).longValue());
      }
    }
    paramContext.apply();
  }
}

/* Location:
 * Qualified Name:     com.baidu.scenery.dispatcher.SceneryPreferences
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.baidu.scenery;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

public class SceneryConstants
{
  public static final long DAY_MS = 86400000L;
  public static final String EXTRA_SOURCE_GALLERY = "extra_source_gallery";
  public static final String EXTRA_SOURCE_HOME = "extra_source_home";
  public static final String GOOGLE_PLAY_PKG_NAME = "com.android.vending";
  public static final String GOOGLE_PLAY_REFERRER_DEFAULT_BDCT = "a";
  public static final String GOOGLE_PLAY_REFERRER_FORMAT = "utm_source=%s&utm_medium=%s&pid=%s&bdct=%s";
  public static final String GOOGLE_PLAY_SOURCE_MEDIUM = "scenesdk";
  public static final String GOOGLE_PLAY_SOURCE_MEDIUM_RESULTCARD = "resultsdk";
  public static final String GOOGLE_PLAY_URL_FORMAT = "https://play.google.com/store/apps/details?id=%s&referrer=%s";
  public static final long HALF_HOUR_MS = 1800000L;
  public static final long HOUR_MS = 3600000L;
  public static final long MINUTE_MS = 60000L;
  public static final String PKG_DU_ANTIVIRUS = "com.duapps.antivirus";
  public static final String PKG_DU_BATTERY = "com.dianxinos.dxbs";
  public static final String PKG_DU_BOOSTER = "com.dianxinos.optimizer.duplay";
  public static final String PKG_DU_CLEANER = "com.duapps.cleaner";
  public static final String PKG_DU_ES = "com.estrongs.android.pop";
  public static final String PKG_DU_MOTU = "cn.jingling.motu.photowonder";
  public static final HashMap<String, Integer> PKG_PRIORITY_MAP;
  public static final String PKG_SCENERY_SAMPLE = "com.baidu.sample";
  public static final String SCENERY_CHARGE = "scenery_charge";
  public static final String SCENERY_CHARGE_PKG = "com.dianxinos.dxbs";
  public static final String SCENERY_DISK_USAGE = "scenery_disk_usage";
  public static final String SCENERY_DISK_USAGE_PKG = "com.estrongs.android.pop";
  public static final int SCENERY_DISPATCHER_VERSION = 1;
  public static final String SCENERY_EXTRA_CHARGE_TIME = "scenery_charge_extra_minutes";
  public static final String SCENERY_EXTRA_DISK_USAGE_SIZE = "scenery_extra_disk_usage_size";
  public static final String SCENERY_EXTRA_DISK_USAGE_TIME = "scenery_extra_disk_usage_day";
  public static final String SCENERY_EXTRA_NAME = "scenery_extra_name";
  public static final String SCENERY_EXTRA_RECOMMEND_PACKAGE = "scenery_extra_recommend_package";
  public static final String SCENERY_EXTRA_SOURCE = "scenery_extra_source";
  public static final String SCENERY_EXTRA_START_TIME = "scenery_extra_start_time";
  public static final String SCENERY_EXTRA_UNINSTALL_APPNAME = "scenery_extra_uninstall_appname";
  public static final String SCENERY_EXTRA_UNINSTALL_PKGNAME = "scenery_extra_uninstall_pkgname";
  public static final String SCENERY_EXTRA_URI = "scenery_extra_uri";
  public static final List<String> SCENERY_LIST = Arrays.asList(new String[] { "scenery_charge", "scenery_uninstall", "scenery_disk_usage", "scenery_take_photo" });
  public static final String SCENERY_TAKE_PHOTO = "scenery_take_photo";
  public static final String SCENERY_TAKE_PHOTO_PKG = "cn.jingling.motu.photowonder";
  public static final String SCENERY_UNINSTALL = "scenery_uninstall";
  public static final String SCENERY_UNINSTALL_PKG = "com.dianxinos.optimizer.duplay";
  public static final String SCENERY_VERSION_META_DATA_KEY = "scenery_dispatcher_version";
  public static final long SECOND_MS = 1000L;
  public static final String TAG = "scenery";
  public static final long TEN_MINUTES_MS = 600000L;
  public static final long WEEK_MS = 604800000L;
  
  static
  {
    PKG_PRIORITY_MAP = new HashMap();
    PKG_PRIORITY_MAP.put("com.estrongs.android.pop", Integer.valueOf(1));
    PKG_PRIORITY_MAP.put("cn.jingling.motu.photowonder", Integer.valueOf(2));
    PKG_PRIORITY_MAP.put("com.dianxinos.optimizer.duplay", Integer.valueOf(3));
    PKG_PRIORITY_MAP.put("com.dianxinos.dxbs", Integer.valueOf(4));
    PKG_PRIORITY_MAP.put("com.duapps.cleaner", Integer.valueOf(5));
  }
}

/* Location:
 * Qualified Name:     com.baidu.scenery.SceneryConstants
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
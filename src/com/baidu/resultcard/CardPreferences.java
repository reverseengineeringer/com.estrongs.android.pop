package com.baidu.resultcard;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.text.TextUtils;
import java.util.Arrays;
import java.util.List;

public class CardPreferences
{
  private static final String SP_FILE_SCENERY_PRIVATE = "sp_file_card_private";
  private static final String SP_PRIVATE_KEY_CARD_APP_INSTALL_TIME = "sp_private_key_card_app_install_time_";
  private static final String SP_PRIVATE_KEY_CARD_APP_UNINSTALL_TIME = "sp_private_key_card_app_uninstall_time_";
  private static final String SP_PRIVATE_KEY_CLOUD_COMMON_PKGS = "sp_private_key_cloud_common_pkgs";
  private static final String SP_PRIVATE_KEY_COMMON_CARD_INDEX = "sp_private_key_common_card_index";
  private static final String SP_PRIVATE_KEY_ES_CARD_DAYS = "sp_private_key_es_card_days";
  private static final String SP_PRIVATE_KEY_ES_CARD_RECORD_INDEX = "sp_private_key_es_card_record_index";
  private static final String SP_PRIVATE_KEY_ES_CARD_RECORD_INDEX_SIZE = "sp_private_key_es_card_record_index_size_";
  private static final String SP_PRIVATE_KEY_ES_CARD_RECORD_INDEX_TIME = "sp_private_key_es_card_record_index_time_";
  private static final String SP_PRIVATE_KEY_ES_CARD_SIZE_MB = "sp_private_key_es_card_size_mb";
  private static final String SP_PRIVATE_KEY_MOTU_CARD_DAYS = "sp_private_key_motu_card_days";
  
  public static long getCardAppInstallTime(Context paramContext, String paramString)
  {
    return getPrivateSharedPreferences(paramContext, "sp_file_card_private").getLong("sp_private_key_card_app_install_time_" + paramString, 0L);
  }
  
  public static long getCardAppUnInstallTime(Context paramContext, String paramString)
  {
    return getPrivateSharedPreferences(paramContext, "sp_file_card_private").getLong("sp_private_key_card_app_uninstall_time_" + paramString, 0L);
  }
  
  public static long getCardClickTime(Context paramContext, String paramString, long paramLong)
  {
    return getPrivateSharedPreferences(paramContext, "sp_file_card_private").getLong(paramString, paramLong);
  }
  
  public static List<String> getCloudCommonCardPkgs(Context paramContext, List<String> paramList)
  {
    paramContext = getPrivateSharedPreferences(paramContext, "sp_file_card_private").getString("sp_private_key_cloud_common_pkgs", "");
    if (TextUtils.isEmpty(paramContext)) {}
    do
    {
      return paramList;
      paramContext = paramContext.split(",");
    } while (paramContext == null);
    return Arrays.asList(paramContext);
  }
  
  public static int getCommonCardIndex(Context paramContext, int paramInt)
  {
    return getPrivateSharedPreferences(paramContext, "sp_file_card_private").getInt("sp_private_key_common_card_index", paramInt);
  }
  
  public static int getEsCardDays(Context paramContext, int paramInt)
  {
    return getPrivateSharedPreferences(paramContext, "sp_file_card_private").getInt("sp_private_key_es_card_days", paramInt);
  }
  
  public static int getEsCardRecordIndex(Context paramContext)
  {
    return getPrivateSharedPreferences(paramContext, "sp_file_card_private").getInt("sp_private_key_es_card_record_index", 0);
  }
  
  public static long getEsCardRecordIndexSize(Context paramContext, int paramInt)
  {
    return getPrivateSharedPreferences(paramContext, "sp_file_card_private").getLong("sp_private_key_es_card_record_index_size_" + paramInt, 0L);
  }
  
  public static long getEsCardRecordIndexTime(Context paramContext, int paramInt)
  {
    return getPrivateSharedPreferences(paramContext, "sp_file_card_private").getLong("sp_private_key_es_card_record_index_time_" + paramInt, 0L);
  }
  
  public static int getEsCardSizeMB(Context paramContext, int paramInt)
  {
    return getPrivateSharedPreferences(paramContext, "sp_file_card_private").getInt("sp_private_key_es_card_size_mb", paramInt);
  }
  
  public static int getMotuCardDays(Context paramContext, int paramInt)
  {
    return getPrivateSharedPreferences(paramContext, "sp_file_card_private").getInt("sp_private_key_motu_card_days", paramInt);
  }
  
  private static SharedPreferences getPrivateSharedPreferences(Context paramContext, String paramString)
  {
    return paramContext.getSharedPreferences(paramString, 4);
  }
  
  public static void setCardAppInstallTime(Context paramContext, String paramString, long paramLong)
  {
    getPrivateSharedPreferences(paramContext, "sp_file_card_private").edit().putLong("sp_private_key_card_app_install_time_" + paramString, paramLong).apply();
  }
  
  public static void setCardAppUnInstallTime(Context paramContext, String paramString, long paramLong)
  {
    getPrivateSharedPreferences(paramContext, "sp_file_card_private").edit().putLong("sp_private_key_card_app_uninstall_time_" + paramString, paramLong).apply();
  }
  
  public static void setCardClickTime(Context paramContext, String paramString, long paramLong)
  {
    getPrivateSharedPreferences(paramContext, "sp_file_card_private").edit().putLong(paramString, paramLong).apply();
  }
  
  public static void setCloudCommonCardPkgs(Context paramContext, List<String> paramList)
  {
    if (paramList == null) {
      return;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    int j = paramList.size();
    int i = 0;
    while (i < j)
    {
      localStringBuilder.append((String)paramList.get(i));
      if (i != j - 1) {
        localStringBuilder.append(",");
      }
      i += 1;
    }
    getPrivateSharedPreferences(paramContext, "sp_file_card_private").edit().putString("sp_private_key_cloud_common_pkgs", localStringBuilder.toString()).apply();
  }
  
  public static void setCommonCardIndex(Context paramContext, int paramInt)
  {
    getPrivateSharedPreferences(paramContext, "sp_file_card_private").edit().putInt("sp_private_key_common_card_index", paramInt).apply();
  }
  
  public static void setEsCardDays(Context paramContext, int paramInt)
  {
    getPrivateSharedPreferences(paramContext, "sp_file_card_private").edit().putInt("sp_private_key_es_card_days", paramInt).apply();
  }
  
  public static void setEsCardRecordIndex(Context paramContext, int paramInt)
  {
    getPrivateSharedPreferences(paramContext, "sp_file_card_private").edit().putInt("sp_private_key_es_card_record_index", paramInt).apply();
  }
  
  public static void setEsCardRecordIndexSize(Context paramContext, int paramInt, long paramLong)
  {
    getPrivateSharedPreferences(paramContext, "sp_file_card_private").edit().putLong("sp_private_key_es_card_record_index_size_" + paramInt, paramLong).apply();
  }
  
  public static void setEsCardRecordIndexTime(Context paramContext, int paramInt, long paramLong)
  {
    getPrivateSharedPreferences(paramContext, "sp_file_card_private").edit().putLong("sp_private_key_es_card_record_index_time_" + paramInt, paramLong).apply();
  }
  
  public static void setEsCardSizeMB(Context paramContext, int paramInt)
  {
    getPrivateSharedPreferences(paramContext, "sp_file_card_private").edit().putInt("sp_private_key_es_card_size_mb", paramInt).apply();
  }
  
  public static void setMotuCardDays(Context paramContext, int paramInt)
  {
    getPrivateSharedPreferences(paramContext, "sp_file_card_private").edit().putInt("sp_private_key_motu_card_days", paramInt).apply();
  }
}

/* Location:
 * Qualified Name:     com.baidu.resultcard.CardPreferences
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
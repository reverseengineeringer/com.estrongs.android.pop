package com.baidu.resultcard;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;

public class MainCardManager$Preference
{
  private static final String SP_MAINLINECARD_PREFS_FILE = "mainline_resultcard";
  private static final String SP_MAINLINE_APKCODE = "sp_mainline_apkcode";
  private static final String SP_MAINLINE_TAKETURNFLAG = "sp_mainline_taketurnflag";
  
  public static int getApkCode(Context paramContext)
  {
    return getPrivateSharedPreferences(paramContext).getInt("sp_mainline_apkcode", 0);
  }
  
  private static SharedPreferences getPrivateSharedPreferences(Context paramContext)
  {
    return paramContext.getSharedPreferences("mainline_resultcard", 0);
  }
  
  public static boolean getTakeTurnFlag(Context paramContext)
  {
    return getPrivateSharedPreferences(paramContext).getBoolean("sp_mainline_taketurnflag", false);
  }
  
  public static void setApkCode(Context paramContext, int paramInt)
  {
    getPrivateSharedPreferences(paramContext).edit().putInt("sp_mainline_apkcode", paramInt).apply();
  }
  
  public static void setTakeTurnFlag(Context paramContext, boolean paramBoolean)
  {
    getPrivateSharedPreferences(paramContext).edit().putBoolean("sp_mainline_taketurnflag", paramBoolean).apply();
  }
}

/* Location:
 * Qualified Name:     com.baidu.resultcard.MainCardManager.Preference
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.baidu.mobula.reportsdk;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Build.VERSION;

public class MobulaConfig
{
  private static final String KEY_LAST_MODIFIED = "last_modified_seq";
  private static final String PREFS_FILE = "_duscene_module_prefs";
  
  private static void apply(SharedPreferences.Editor paramEditor)
  {
    if (Build.VERSION.SDK_INT <= 8)
    {
      paramEditor.commit();
      return;
    }
    paramEditor.apply();
  }
  
  public static long getLastModified(Context paramContext)
  {
    return paramContext.getSharedPreferences("_duscene_module_prefs", 0).getLong("last_modified_seq", 0L);
  }
  
  public static void setLastModified(Context paramContext, long paramLong)
  {
    paramContext = paramContext.getSharedPreferences("_duscene_module_prefs", 0).edit();
    paramContext.putLong("last_modified_seq", paramLong);
    apply(paramContext);
  }
}

/* Location:
 * Qualified Name:     com.baidu.mobula.reportsdk.MobulaConfig
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
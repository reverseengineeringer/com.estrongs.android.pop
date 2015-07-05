package com.baidu.android.common.util;

import android.content.Context;
import android.provider.Settings.System;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.baidu.android.common.logging.Log;

final class DeviceId$IMEIInfo
{
  public static final String DEFAULT_TM_DEVICEID = "";
  private static final String KEY_IMEI = "bd_setting_i";
  public final boolean CAN_READ_AND_WRITE_SYSTEM_SETTINGS;
  public final String IMEI;
  
  private DeviceId$IMEIInfo(String paramString, boolean paramBoolean)
  {
    IMEI = paramString;
    CAN_READ_AND_WRITE_SYSTEM_SETTINGS = paramBoolean;
  }
  
  private static String getIMEI(Context paramContext, String paramString)
  {
    try
    {
      paramContext = (TelephonyManager)paramContext.getSystemService("phone");
      if (paramContext == null) {
        break label42;
      }
      paramContext = paramContext.getDeviceId();
    }
    catch (Exception paramContext)
    {
      for (;;)
      {
        Log.e("DeviceId", "Read IMEI failed", paramContext);
        label42:
        paramContext = null;
      }
    }
    paramContext = imeiCheck(paramContext);
    if (TextUtils.isEmpty(paramContext)) {
      return paramString;
    }
    return paramContext;
  }
  
  static IMEIInfo getIMEIInfo(Context paramContext)
  {
    bool = true;
    localObject = "";
    for (;;)
    {
      try
      {
        String str = Settings.System.getString(paramContext.getContentResolver(), "bd_setting_i");
        localObject = str;
        if (!TextUtils.isEmpty(str)) {
          continue;
        }
        localObject = str;
        str = getIMEI(paramContext, "");
        localObject = str;
      }
      catch (Exception localException1)
      {
        int i;
        Log.e("DeviceId", "Settings.System.getString or putString failed", localException1);
        if (TextUtils.isEmpty((CharSequence)localObject))
        {
          localObject = getIMEI(paramContext, "");
          i = 1;
          continue;
          bool = false;
          continue;
        }
        localObject = localException2;
        continue;
      }
      try
      {
        Settings.System.putString(paramContext.getContentResolver(), "bd_setting_i", (String)localObject);
        i = 0;
      }
      catch (Exception localException2)
      {
        continue;
        i = 1;
      }
    }
    if (i == 0) {
      return new IMEIInfo((String)localObject, bool);
    }
  }
  
  private static String imeiCheck(String paramString)
  {
    String str = paramString;
    if (paramString != null)
    {
      str = paramString;
      if (paramString.contains(":")) {
        str = "";
      }
    }
    return str;
  }
}

/* Location:
 * Qualified Name:     com.baidu.android.common.util.DeviceId.IMEIInfo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
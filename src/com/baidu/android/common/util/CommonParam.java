package com.baidu.android.common.util;

import android.content.Context;
import android.text.TextUtils;

public class CommonParam
{
  private static final boolean DEBUG = false;
  private static final String TAG = CommonParam.class.getSimpleName();
  
  public static String getCUID(Context paramContext)
  {
    String str2 = getDeviceId(paramContext);
    String str1 = DeviceId.getIMEI(paramContext);
    paramContext = str1;
    if (TextUtils.isEmpty(str1)) {
      paramContext = "0";
    }
    paramContext = new StringBuffer(paramContext).reverse().toString();
    return str2 + "|" + paramContext;
  }
  
  private static String getDeviceId(Context paramContext)
  {
    return DeviceId.getDeviceID(paramContext);
  }
}

/* Location:
 * Qualified Name:     com.baidu.android.common.util.CommonParam
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
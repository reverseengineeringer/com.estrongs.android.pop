package com.baidu.android.common.util;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningServiceInfo;
import android.content.ComponentName;
import android.content.Context;
import android.os.Process;
import android.text.TextUtils;
import com.baidu.android.common.security.MD5Util;
import java.util.Iterator;
import java.util.List;

public final class Util
{
  public static boolean hasOtherServiceRuninMyPid(Context paramContext, String paramString)
  {
    paramContext = ((ActivityManager)paramContext.getApplicationContext().getSystemService("activity")).getRunningServices(100).iterator();
    while (paramContext.hasNext())
    {
      ActivityManager.RunningServiceInfo localRunningServiceInfo = (ActivityManager.RunningServiceInfo)paramContext.next();
      if ((pid == Process.myPid()) && (!TextUtils.equals(service.getClassName(), paramString))) {
        return true;
      }
    }
    return false;
  }
  
  public static String toHexString(byte[] paramArrayOfByte, String paramString, boolean paramBoolean)
  {
    return MD5Util.toHexString(paramArrayOfByte, paramString, paramBoolean);
  }
  
  public static String toMd5(byte[] paramArrayOfByte, boolean paramBoolean)
  {
    return MD5Util.toMd5(paramArrayOfByte, paramBoolean);
  }
}

/* Location:
 * Qualified Name:     com.baidu.android.common.util.Util
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
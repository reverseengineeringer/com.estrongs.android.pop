package com.baidu.android.common.util;

import android.content.Context;
import android.os.Environment;
import android.provider.Settings.Secure;
import android.provider.Settings.System;
import android.text.TextUtils;
import com.baidu.android.common.security.AESUtil;
import com.baidu.android.common.security.Base64;
import com.baidu.android.common.security.MD5Util;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.UUID;

public final class DeviceId
{
  private static final String AES_KEY = "30212102dicudiab";
  private static final boolean DEBUG = false;
  private static final String EXT_FILE = "baidu/.cuid";
  private static final String KEY_DEVICE_ID = "com.baidu.deviceid";
  private static final String TAG = "DeviceId";
  
  private static void checkPermission(Context paramContext, String paramString)
  {
    if (paramContext.checkCallingOrSelfPermission(paramString) == 0) {}
    for (int i = 1; i == 0; i = 0) {
      throw new SecurityException("Permission Denial: requires permission " + paramString);
    }
  }
  
  public static String getAndroidId(Context paramContext)
  {
    String str = Settings.Secure.getString(paramContext.getContentResolver(), "android_id");
    paramContext = str;
    if (TextUtils.isEmpty(str)) {
      paramContext = "";
    }
    return paramContext;
  }
  
  public static String getDeviceID(Context paramContext)
  {
    checkPermission(paramContext, "android.permission.WRITE_SETTINGS");
    checkPermission(paramContext, "android.permission.READ_PHONE_STATE");
    checkPermission(paramContext, "android.permission.WRITE_EXTERNAL_STORAGE");
    Object localObject1 = DeviceId.IMEIInfo.getIMEIInfo(paramContext);
    String str2 = IMEI;
    int i;
    String str3;
    if (!CAN_READ_AND_WRITE_SYSTEM_SETTINGS)
    {
      i = 1;
      str3 = getAndroidId(paramContext);
      if (i == 0) {
        break label83;
      }
      localObject1 = MD5Util.toMd5(("com.baidu" + str3).getBytes(), true);
    }
    label83:
    Object localObject3;
    Object localObject2;
    do
    {
      return (String)localObject1;
      i = 0;
      break;
      localObject3 = null;
      localObject2 = Settings.System.getString(paramContext.getContentResolver(), "com.baidu.deviceid");
      localObject1 = localObject2;
      if (TextUtils.isEmpty((CharSequence)localObject2))
      {
        localObject2 = MD5Util.toMd5(("com.baidu" + str2 + str3).getBytes(), true);
        String str1 = Settings.System.getString(paramContext.getContentResolver(), (String)localObject2);
        localObject3 = localObject2;
        localObject1 = str1;
        if (!TextUtils.isEmpty(str1))
        {
          Settings.System.putString(paramContext.getContentResolver(), "com.baidu.deviceid", str1);
          setExternalDeviceId(str2, str1);
          localObject1 = str1;
          localObject3 = localObject2;
        }
      }
      localObject2 = localObject1;
      if (TextUtils.isEmpty((CharSequence)localObject1))
      {
        localObject1 = getExternalDeviceId(str2);
        localObject2 = localObject1;
        if (!TextUtils.isEmpty((CharSequence)localObject1))
        {
          Settings.System.putString(paramContext.getContentResolver(), (String)localObject3, (String)localObject1);
          Settings.System.putString(paramContext.getContentResolver(), "com.baidu.deviceid", (String)localObject1);
          localObject2 = localObject1;
        }
      }
      localObject1 = localObject2;
    } while (!TextUtils.isEmpty((CharSequence)localObject2));
    localObject1 = UUID.randomUUID().toString();
    localObject1 = MD5Util.toMd5((str2 + str3 + (String)localObject1).getBytes(), true);
    Settings.System.putString(paramContext.getContentResolver(), (String)localObject3, (String)localObject1);
    Settings.System.putString(paramContext.getContentResolver(), "com.baidu.deviceid", (String)localObject1);
    setExternalDeviceId(str2, (String)localObject1);
    return (String)localObject1;
  }
  
  private static String getExternalDeviceId(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {}
    for (;;)
    {
      return "";
      Object localObject = new File(Environment.getExternalStorageDirectory(), "baidu/.cuid");
      try
      {
        localObject = new BufferedReader(new FileReader((File)localObject));
        StringBuilder localStringBuilder = new StringBuilder();
        for (;;)
        {
          String str = ((BufferedReader)localObject).readLine();
          if (str == null) {
            break;
          }
          localStringBuilder.append(str);
          localStringBuilder.append("\r\n");
        }
        ((BufferedReader)localObject).close();
        localObject = new String(AESUtil.decrypt("30212102dicudiab", "30212102dicudiab", Base64.decode(localStringBuilder.toString().getBytes()))).split("=");
        if ((localObject != null) && (localObject.length == 2) && (paramString.equals(localObject[0])))
        {
          paramString = localObject[1];
          return paramString;
        }
      }
      catch (Exception paramString)
      {
        return "";
      }
      catch (IOException paramString)
      {
        return "";
      }
      catch (FileNotFoundException paramString) {}
    }
    return "";
  }
  
  public static String getIMEI(Context paramContext)
  {
    return getIMEIInfoIMEI;
  }
  
  private static void setExternalDeviceId(String paramString1, String paramString2)
  {
    if (TextUtils.isEmpty(paramString1)) {
      return;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(paramString1);
    localStringBuilder.append("=");
    localStringBuilder.append(paramString2);
    paramString1 = new File(Environment.getExternalStorageDirectory(), "baidu/.cuid");
    try
    {
      new File(paramString1.getParent()).mkdirs();
      paramString1 = new FileWriter(paramString1, false);
      paramString1.write(Base64.encode(AESUtil.encrypt("30212102dicudiab", "30212102dicudiab", localStringBuilder.toString().getBytes()), "utf-8"));
      paramString1.flush();
      paramString1.close();
      return;
    }
    catch (IOException paramString1) {}catch (Exception paramString1) {}
  }
}

/* Location:
 * Qualified Name:     com.baidu.android.common.util.DeviceId
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
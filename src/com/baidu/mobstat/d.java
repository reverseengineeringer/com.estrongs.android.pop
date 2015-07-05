package com.baidu.mobstat;

import android.content.Context;
import android.os.Environment;
import android.provider.Settings.Secure;
import android.provider.Settings.System;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.UUID;

public final class d
{
  public static String a(Context paramContext)
  {
    a(paramContext, "android.permission.WRITE_SETTINGS");
    a(paramContext, "android.permission.READ_PHONE_STATE");
    a(paramContext, "android.permission.WRITE_EXTERNAL_STORAGE");
    int i = 0;
    Object localObject1 = "";
    for (;;)
    {
      try
      {
        String str1 = Settings.System.getString(paramContext.getContentResolver(), "bd_setting_i");
        if (str1 == null)
        {
          localObject1 = str1;
          str1 = b(paramContext);
          localObject1 = str1;
        }
        Object localObject3;
        String str3;
        Object localObject4;
        Object localObject2;
        String str2;
        localObject1 = localException2;
      }
      catch (Exception localException1)
      {
        try
        {
          Settings.System.putString(paramContext.getContentResolver(), "bd_setting_i", (String)localObject1);
          localObject3 = localObject1;
          str3 = c(paramContext);
          if (i == 0) {
            continue;
          }
          localObject1 = e.a(("com.baidu" + str3).getBytes(), true);
          return (String)localObject1;
        }
        catch (Exception localException2)
        {
          continue;
        }
        localException1 = localException1;
        Log.e("DeviceId", "Settings.System.getString or putString failed", localException1);
        i = 1;
        localObject3 = localObject1;
        continue;
        localObject4 = null;
        localObject2 = Settings.System.getString(paramContext.getContentResolver(), "com.baidu.deviceid");
        localObject1 = localObject2;
        if (TextUtils.isEmpty((CharSequence)localObject2))
        {
          localObject2 = e.a(("com.baidu" + (String)localObject3 + str3).getBytes(), true);
          str2 = Settings.System.getString(paramContext.getContentResolver(), (String)localObject2);
          localObject4 = localObject2;
          localObject1 = str2;
          if (!TextUtils.isEmpty(str2))
          {
            Settings.System.putString(paramContext.getContentResolver(), "com.baidu.deviceid", str2);
            a((String)localObject3, str2);
            localObject1 = str2;
            localObject4 = localObject2;
          }
        }
        localObject2 = localObject1;
        if (TextUtils.isEmpty((CharSequence)localObject1))
        {
          localObject1 = a((String)localObject3);
          localObject2 = localObject1;
          if (!TextUtils.isEmpty((CharSequence)localObject1))
          {
            Settings.System.putString(paramContext.getContentResolver(), (String)localObject4, (String)localObject1);
            Settings.System.putString(paramContext.getContentResolver(), "com.baidu.deviceid", (String)localObject1);
            localObject2 = localObject1;
          }
        }
        localObject1 = localObject2;
        if (TextUtils.isEmpty((CharSequence)localObject2))
        {
          localObject1 = UUID.randomUUID().toString();
          localObject1 = e.a(((String)localObject3 + str3 + (String)localObject1).getBytes(), true);
          Settings.System.putString(paramContext.getContentResolver(), (String)localObject4, (String)localObject1);
          Settings.System.putString(paramContext.getContentResolver(), "com.baidu.deviceid", (String)localObject1);
          a((String)localObject3, (String)localObject1);
          return (String)localObject1;
        }
      }
    }
  }
  
  private static String a(String paramString)
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
        localObject = new String(a.b("30212102dicudiab", "30212102dicudiab", b.a(localStringBuilder.toString().getBytes()))).split("=");
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
  
  private static void a(Context paramContext, String paramString)
  {
    if (paramContext.checkCallingOrSelfPermission(paramString) == 0) {}
    for (int i = 1; i == 0; i = 0) {
      throw new SecurityException("Permission Denial: requires permission " + paramString);
    }
  }
  
  private static void a(String paramString1, String paramString2)
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
      paramString1.write(b.a(a.a("30212102dicudiab", "30212102dicudiab", localStringBuilder.toString().getBytes()), "utf-8"));
      paramString1.flush();
      paramString1.close();
      return;
    }
    catch (IOException paramString1) {}catch (Exception paramString1) {}
  }
  
  public static String b(Context paramContext)
  {
    paramContext = (TelephonyManager)paramContext.getSystemService("phone");
    if (paramContext != null)
    {
      String str = paramContext.getDeviceId();
      paramContext = str;
      if (TextUtils.isEmpty(str)) {
        paramContext = "";
      }
      return paramContext;
    }
    return "";
  }
  
  public static String c(Context paramContext)
  {
    String str = Settings.Secure.getString(paramContext.getContentResolver(), "android_id");
    paramContext = str;
    if (TextUtils.isEmpty(str)) {
      paramContext = "";
    }
    return paramContext;
  }
}

/* Location:
 * Qualified Name:     com.baidu.mobstat.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
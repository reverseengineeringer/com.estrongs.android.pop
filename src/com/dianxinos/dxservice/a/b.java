package com.dianxinos.dxservice.a;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.Signature;
import android.util.Log;
import com.dianxinos.dxservice.stat.s;
import java.io.File;
import java.lang.reflect.Field;

public class b
{
  public static Long a(PackageInfo paramPackageInfo, String paramString)
  {
    try
    {
      l = PackageInfo.class.getDeclaredField(paramString).getLong(paramPackageInfo);
      paramString = Long.valueOf(l);
    }
    catch (IllegalArgumentException paramString)
    {
      for (;;)
      {
        long l;
        if (c.e) {
          Log.e("stat.AppInfoUtils", "GetTimeByPackageInfo in reflect has IllegalArgumentException!", paramString);
        }
        paramString = null;
      }
    }
    catch (SecurityException paramString)
    {
      for (;;)
      {
        if (c.e) {
          Log.e("stat.AppInfoUtils", "GetTimeByPackageInfo in reflect has SecurityException!", paramString);
        }
        paramString = null;
      }
    }
    catch (IllegalAccessException paramString)
    {
      for (;;)
      {
        if (c.e) {
          Log.e("stat.AppInfoUtils", "GetTimeByPackageInfo in reflect has IllegalAccessException!", paramString);
        }
        paramString = null;
      }
    }
    catch (NoSuchFieldException paramString)
    {
      for (;;)
      {
        if (c.e) {
          Log.e("stat.AppInfoUtils", "GetTimeByPackageInfo in reflect has NoSuchFieldException!", paramString);
        }
        paramString = null;
      }
    }
    catch (Exception paramString)
    {
      for (;;)
      {
        if (c.e) {
          Log.e("stat.AppInfoUtils", "GetTimeByPackageInfo in reflect has Exception!", paramString);
        }
        paramString = null;
      }
    }
    Object localObject = paramString;
    if (paramString == null) {}
    try
    {
      l = new File(applicationInfo.publicSourceDir).lastModified();
      localObject = Long.valueOf(l);
    }
    catch (NullPointerException paramPackageInfo)
    {
      do
      {
        localObject = paramString;
      } while (!c.e);
      Log.e("stat.AppInfoUtils", "GetTimeByPackageInfo has NullPointerException!", paramPackageInfo);
      return paramString;
    }
    catch (SecurityException paramPackageInfo)
    {
      do
      {
        localObject = paramString;
      } while (!c.e);
      Log.e("stat.AppInfoUtils", "GetTimeByPackageInfo has SecurityException!", paramPackageInfo);
      return paramString;
    }
    catch (Exception paramPackageInfo)
    {
      do
      {
        localObject = paramString;
      } while (!c.e);
      Log.e("stat.AppInfoUtils", "GetTimeByPackageInfo has Exception!", paramPackageInfo);
    }
    return (Long)localObject;
    return paramString;
  }
  
  public static String a(Context paramContext, String paramString)
  {
    String str = "";
    try
    {
      paramString = paramContext.getPackageManager().getPackageInfo(paramString, 0);
      paramContext = str;
      if (paramString != null) {
        paramContext = versionName;
      }
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      do
      {
        paramContext = str;
      } while (!c.e);
      Log.e("stat.AppInfoUtils", "Failed to get VersionName!");
      return "";
    }
    catch (Exception paramContext)
    {
      do
      {
        paramContext = str;
      } while (!c.e);
      Log.e("stat.AppInfoUtils", "Failed to get VersionName!");
    }
    return paramContext;
    return "";
  }
  
  public static int b(Context paramContext, String paramString)
  {
    int j = -1;
    try
    {
      paramContext = paramContext.getPackageManager().getPackageInfo(paramString, 0);
      i = j;
      if (paramContext != null) {
        i = versionCode;
      }
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      do
      {
        i = j;
      } while (!c.e);
      Log.e("stat.AppInfoUtils", "Failed to get VersionCode!");
      return -1;
    }
    catch (Exception paramContext)
    {
      do
      {
        int i = j;
      } while (!c.e);
      Log.e("stat.AppInfoUtils", "Failed to get VersionCode!");
    }
    return i;
    return -1;
  }
  
  public static String c(Context paramContext, String paramString)
  {
    String str = "";
    try
    {
      paramString = getPackageManagergetPackageInfo64signatures;
      paramContext = str;
      if (paramString.length > 0) {
        paramContext = s.a(paramString[0].toByteArray());
      }
    }
    catch (PackageManager.NameNotFoundException paramString)
    {
      do
      {
        paramContext = str;
      } while (!c.e);
      Log.e("stat.AppInfoUtils", "Failed to get signature!", paramString);
      return "";
    }
    catch (Exception paramString)
    {
      do
      {
        paramContext = str;
      } while (!c.e);
      Log.e("stat.AppInfoUtils", "Failed to get signature!", paramString);
    }
    return paramContext;
    return "";
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.dxservice.a.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
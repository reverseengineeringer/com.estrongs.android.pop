package com.dianxinos.library.notify.j;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.text.TextUtils;
import java.io.File;

public class e
{
  public static PackageInfo a(Context paramContext, String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {}
    File localFile;
    do
    {
      return null;
      localFile = new File(paramString);
    } while ((!localFile.exists()) || (!localFile.isFile()) || (!localFile.canRead()));
    return paramContext.getPackageManager().getPackageArchiveInfo(paramString, 0);
  }
  
  public static String b(Context paramContext, String paramString)
  {
    if ((paramContext == null) || (TextUtils.isEmpty(paramString))) {
      return null;
    }
    paramContext = paramContext.getPackageManager();
    try
    {
      paramContext = paramContext.getInstallerPackageName(paramString);
      return paramContext;
    }
    catch (Exception paramContext) {}
    return null;
  }
  
  public static int c(Context paramContext, String paramString)
  {
    if ((paramContext == null) || (TextUtils.isEmpty(paramString))) {}
    for (;;)
    {
      return -1;
      paramContext = paramContext.getPackageManager();
      try
      {
        paramContext = paramContext.getPackageInfo(paramString, 0);
        if (paramContext != null)
        {
          int i = versionCode;
          return i;
        }
      }
      catch (PackageManager.NameNotFoundException paramContext) {}
    }
    return -1;
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.library.notify.j.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.estrongs.android.util;

import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import java.util.Iterator;
import java.util.List;

public class ak
{
  private static List<ResolveInfo> a = null;
  
  public static Intent a(String paramString, PackageManager paramPackageManager)
  {
    Object localObject = a(paramPackageManager, false).iterator();
    while (((Iterator)localObject).hasNext())
    {
      paramPackageManager = (ResolveInfo)((Iterator)localObject).next();
      if (paramString.equals(activityInfo.packageName))
      {
        localObject = new Intent("android.intent.action.MAIN");
        ((Intent)localObject).addCategory("android.intent.category.LAUNCHER");
        ((Intent)localObject).setClassName(paramString, activityInfo.name);
        return (Intent)localObject;
      }
    }
    return null;
  }
  
  public static List<ResolveInfo> a(PackageManager paramPackageManager, boolean paramBoolean)
  {
    try
    {
      if ((a == null) || (paramBoolean == true))
      {
        Intent localIntent = new Intent("android.intent.action.MAIN");
        localIntent.addCategory("android.intent.category.LAUNCHER");
        a = paramPackageManager.queryIntentActivities(localIntent, 0);
      }
      paramPackageManager = a;
      return paramPackageManager;
    }
    finally {}
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.util.ak
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.dianxinos.library.notify.j;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningTaskInfo;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import java.util.List;

public class f
{
  public static boolean a(Context paramContext)
  {
    Object localObject = ((ActivityManager)paramContext.getSystemService("activity")).getRunningTasks(1);
    if ((localObject == null) || (((List)localObject).isEmpty())) {}
    do
    {
      return false;
      localObject = (ActivityManager.RunningTaskInfo)((List)localObject).get(0);
    } while ((localObject == null) || (topActivity == null));
    localObject = topActivity.getPackageName();
    Intent localIntent = new Intent("android.intent.action.MAIN");
    localIntent.addCategory("android.intent.category.HOME");
    localIntent.setPackage((String)localObject);
    paramContext = paramContext.getPackageManager().queryIntentActivities(localIntent, 0);
    if ((paramContext != null) && (!paramContext.isEmpty())) {}
    for (boolean bool = true;; bool = false) {
      return bool;
    }
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.library.notify.j.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
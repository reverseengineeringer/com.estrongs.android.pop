package com.dianxinos.lockscreen.c;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.app.ActivityManager.RunningTaskInfo;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.ResolveInfo;
import android.os.Build.VERSION;
import android.os.SystemClock;
import android.telephony.TelephonyManager;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public class e
{
  private static long a;
  private static ArrayList<String> b = new ArrayList();
  private static Set<String> c = new HashSet();
  
  public static int a(Context paramContext)
  {
    try
    {
      int i = getPackageManagergetPackageInfogetPackageName0versionCode;
      return i;
    }
    catch (PackageManager.NameNotFoundException paramContext) {}
    return 0;
  }
  
  public static boolean a()
  {
    return Build.VERSION.SDK_INT > 21;
  }
  
  public static boolean b(Context paramContext)
  {
    boolean bool3 = false;
    e(paramContext);
    Object localObject = f(paramContext);
    boolean bool2 = bool3;
    if (localObject != null)
    {
      bool2 = bool3;
      if (((ComponentName)localObject).getPackageName() != null)
      {
        localObject = ((ComponentName)localObject).getPackageName() + "/" + ((ComponentName)localObject).getClassName();
        if (Build.VERSION.SDK_INT < 21) {
          break label94;
        }
      }
    }
    label94:
    for (boolean bool1 = d(paramContext);; bool1 = b.contains(localObject))
    {
      bool2 = bool3;
      if (bool1)
      {
        bool2 = bool3;
        if (!c(paramContext)) {
          bool2 = true;
        }
      }
      return bool2;
    }
  }
  
  public static boolean c(Context paramContext)
  {
    int i = ((TelephonyManager)paramContext.getSystemService("phone")).getCallState();
    if (g.a) {
      g.a("CommonUtils", "mTeleStatus : " + i);
    }
    return (i == 2) || (i == 1);
  }
  
  private static boolean d(Context paramContext)
  {
    paramContext = ((ActivityManager)paramContext.getSystemService("activity")).getRunningAppProcesses();
    if ((paramContext == null) || (paramContext.isEmpty())) {
      return false;
    }
    paramContext = (ActivityManager.RunningAppProcessInfo)paramContext.get(0);
    return (paramContext != null) && (importance == 100) && (c.contains(processName));
  }
  
  private static void e(Context paramContext)
  {
    long l = SystemClock.elapsedRealtime();
    if ((a > 0L) && (a + 1800000L <= l)) {
      return;
    }
    a = l;
    Object localObject;
    synchronized (b)
    {
      b.clear();
      if (Build.VERSION.SDK_INT >= 21) {
        c.clear();
      }
      localObject = new Intent("android.intent.action.MAIN");
      ((Intent)localObject).addCategory("android.intent.category.HOME");
    }
    try
    {
      paramContext = paramContext.getPackageManager().queryIntentActivities((Intent)localObject, 0);
      if (paramContext != null) {
        break label111;
      }
      return;
    }
    catch (Exception paramContext)
    {
      g.b("CommonUtils", "queryIntentActivities exception: ", paramContext);
      return;
    }
    paramContext = finally;
    throw paramContext;
    label111:
    paramContext = paramContext.iterator();
    while (paramContext.hasNext())
    {
      localObject = (ResolveInfo)paramContext.next();
      b.add(activityInfo.packageName + "/" + activityInfo.name);
      if (Build.VERSION.SDK_INT >= 21) {
        c.add(activityInfo.processName);
      }
    }
  }
  
  private static ComponentName f(Context paramContext)
  {
    paramContext = ((ActivityManager)paramContext.getSystemService("activity")).getRunningTasks(1);
    if ((paramContext == null) || (paramContext.isEmpty())) {
      return null;
    }
    return get0topActivity;
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.lockscreen.c.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
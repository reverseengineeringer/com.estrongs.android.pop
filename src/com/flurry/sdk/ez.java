package com.flurry.sdk;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.util.SparseArray;
import android.util.SparseIntArray;

public final class ez
{
  private static final String a = ez.class.getSimpleName();
  private static final SparseArray<SparseIntArray> b = c();
  
  public static int a()
  {
    return 7;
  }
  
  public static int a(Activity paramActivity, int paramInt1, int paramInt2)
  {
    if (paramActivity == null) {
      return -1;
    }
    paramActivity = (SparseIntArray)b.get(paramInt2);
    if (paramActivity != null) {}
    for (paramInt1 = paramActivity.get(paramInt1, -1);; paramInt1 = -1) {
      return paramInt1;
    }
  }
  
  public static int a(Activity paramActivity, dc paramdc)
  {
    int i = 0;
    if (dc.a.equals(paramdc)) {
      i = 1;
    }
    for (;;)
    {
      return a(paramActivity, -1, i);
      if (dc.b.equals(paramdc)) {
        i = 2;
      }
    }
  }
  
  @TargetApi(13)
  public static int a(ActivityInfo paramActivityInfo)
  {
    int i;
    if (paramActivityInfo == null) {
      i = 0;
    }
    int j;
    do
    {
      return i;
      j = configChanges;
      i = j;
    } while (applicationInfo.targetSdkVersion >= 13);
    return j | 0xC00;
  }
  
  public static ActivityInfo a(PackageManager paramPackageManager, ComponentName paramComponentName)
  {
    if ((paramPackageManager == null) || (paramComponentName == null)) {
      return null;
    }
    try
    {
      paramPackageManager = paramPackageManager.getActivityInfo(paramComponentName, 0);
      return paramPackageManager;
    }
    catch (PackageManager.NameNotFoundException paramPackageManager)
    {
      kg.a(5, a, "cannot find info for activity: " + paramComponentName);
    }
    return null;
  }
  
  public static void a(Activity paramActivity)
  {
    int i = getResourcesgetConfigurationorientation;
    if (i == 1) {
      paramActivity.setRequestedOrientation(a());
    }
    while (i != 2) {
      return;
    }
    paramActivity.setRequestedOrientation(b());
  }
  
  public static void a(Activity paramActivity, int paramInt)
  {
    if (paramActivity == null)
    {
      kg.b(a, "Context is null. Cannot set requested orientation.");
      return;
    }
    if (a(paramActivity))
    {
      kg.b(a, "setOrientation SCREEN_ORIENTATION_SENSOR");
      paramActivity.setRequestedOrientation(4);
      return;
    }
    kg.b(a, "setOrientation " + paramInt);
    paramActivity.setRequestedOrientation(paramInt);
  }
  
  public static boolean a(Activity paramActivity, int paramInt, boolean paramBoolean)
  {
    boolean bool = true;
    if (paramActivity == null) {
      bool = false;
    }
    do
    {
      return bool;
      int i = paramInt;
      if (!c(paramActivity))
      {
        i = b(paramActivity, paramInt);
        if (-1 == i)
        {
          kg.a(5, a, "cannot set requested orientation without restarting activity, requestedOrientation = " + paramInt);
          kg.b(a, "cannot set requested orientation without restarting activity. It is recommended to add keyboardHidden|orientation|screenSize for android:configChanges attribute for activity: " + paramActivity.getComponentName().getClassName());
          return false;
        }
        paramBoolean = true;
      }
      paramActivity.setRequestedOrientation(i);
    } while (paramBoolean);
    paramActivity.setRequestedOrientation(-1);
    return true;
  }
  
  public static boolean a(Context paramContext)
  {
    if ((getResourcesgetConfigurationscreenLayout & 0xF) >= 3) {}
    for (boolean bool = true;; bool = false)
    {
      kg.b(a, "isTablet " + bool);
      return bool;
    }
  }
  
  public static int b()
  {
    return 6;
  }
  
  public static int b(Activity paramActivity, int paramInt)
  {
    if (paramActivity == null) {
      return -1;
    }
    return a(paramActivity, paramInt, getResourcesgetConfigurationorientation);
  }
  
  public static ActivityInfo b(Activity paramActivity)
  {
    if (paramActivity == null) {
      return null;
    }
    return a(paramActivity.getPackageManager(), paramActivity.getComponentName());
  }
  
  private static SparseArray<SparseIntArray> c()
  {
    SparseArray localSparseArray = new SparseArray();
    localSparseArray.put(1, d());
    localSparseArray.put(2, e());
    return localSparseArray;
  }
  
  public static boolean c(Activity paramActivity)
  {
    int i = a(b(paramActivity));
    if ((i & 0x80) == 0) {}
    while ((i & 0x400) == 0) {
      return false;
    }
    return true;
  }
  
  private static SparseIntArray d()
  {
    int i = a();
    SparseIntArray localSparseIntArray = new SparseIntArray();
    localSparseIntArray.put(-1, i);
    localSparseIntArray.put(2, i);
    localSparseIntArray.put(3, i);
    localSparseIntArray.put(4, i);
    localSparseIntArray.put(1, 1);
    localSparseIntArray.put(5, 5);
    localSparseIntArray.put(7, 7);
    localSparseIntArray.put(9, 9);
    localSparseIntArray.put(10, 7);
    return localSparseIntArray;
  }
  
  private static SparseIntArray e()
  {
    int i = b();
    SparseIntArray localSparseIntArray = new SparseIntArray();
    localSparseIntArray.put(-1, i);
    localSparseIntArray.put(2, i);
    localSparseIntArray.put(3, i);
    localSparseIntArray.put(4, i);
    localSparseIntArray.put(0, 0);
    localSparseIntArray.put(5, 5);
    localSparseIntArray.put(6, 6);
    localSparseIntArray.put(8, 8);
    localSparseIntArray.put(10, 6);
    return localSparseIntArray;
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.ez
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
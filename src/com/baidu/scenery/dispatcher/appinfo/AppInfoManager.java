package com.baidu.scenery.dispatcher.appinfo;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.text.TextUtils;
import com.baidu.scenery.SceneryLibrary;
import com.baidu.scenery.dispatcher.SceneryPreferences;
import com.baidu.scenery.utils.LogHelper;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

public class AppInfoManager
{
  private static final boolean DEBUG = ;
  private static final String TAG = "scenery";
  
  private static AppInfo buildTrashAppInfo(PackageInfo paramPackageInfo, PackageManager paramPackageManager)
  {
    AppInfo localAppInfo = new AppInfo();
    localAppInfo.setPkgName(packageName);
    localAppInfo.setAppName(applicationInfo.loadLabel(paramPackageManager).toString());
    localAppInfo.setInstallTime(firstInstallTime);
    return localAppInfo;
  }
  
  public static AppInfo getDbAppName(Context paramContext, String paramString)
  {
    if ((paramContext == null) || (TextUtils.isEmpty(paramString))) {
      return null;
    }
    paramString = AppInfoDB.getInstance(paramContext).getAppInfo(paramString);
    StringBuilder localStringBuilder;
    if (DEBUG)
    {
      localStringBuilder = new StringBuilder().append("getDbAppInfo AppInfo = ");
      if (paramString == null) {
        break label65;
      }
    }
    label65:
    for (paramContext = paramString.toString();; paramContext = "null")
    {
      LogHelper.d("scenery", paramContext);
      return paramString;
    }
  }
  
  private static AppInfo getInstallAppInfo(String paramString)
  {
    AppInfo localAppInfo = null;
    PackageManager localPackageManager = SceneryLibrary.getAppContext().getPackageManager();
    if (localPackageManager == null) {
      paramString = localAppInfo;
    }
    do
    {
      PackageInfo localPackageInfo;
      do
      {
        return paramString;
        localPackageInfo = getPackageInfo(localPackageManager, paramString);
        paramString = localAppInfo;
      } while (localPackageInfo == null);
      localAppInfo = buildTrashAppInfo(localPackageInfo, localPackageManager);
      paramString = localAppInfo;
    } while (!DEBUG);
    LogHelper.d("scenery", "getInstallAppInfo AppInfo = " + localAppInfo.toString());
    return localAppInfo;
  }
  
  private static List<AppInfo> getInstallAppInfoList()
  {
    PackageManager localPackageManager = SceneryLibrary.getAppContext().getPackageManager();
    if (localPackageManager == null) {
      return Collections.emptyList();
    }
    Object localObject = getInstalledPackages(localPackageManager, 8704);
    if ((localObject == null) || (((List)localObject).isEmpty())) {
      return Collections.emptyList();
    }
    ArrayList localArrayList = new ArrayList();
    localObject = ((List)localObject).iterator();
    while (((Iterator)localObject).hasNext())
    {
      AppInfo localAppInfo = buildTrashAppInfo((PackageInfo)((Iterator)localObject).next(), localPackageManager);
      if (localAppInfo != null) {
        localArrayList.add(localAppInfo);
      }
    }
    return localArrayList;
  }
  
  private static List<PackageInfo> getInstalledPackages(PackageManager paramPackageManager, int paramInt)
  {
    try
    {
      paramPackageManager = paramPackageManager.getInstalledPackages(paramInt);
      return paramPackageManager;
    }
    catch (Throwable paramPackageManager) {}
    return new ArrayList();
  }
  
  private static String getLanguageDisplayName()
  {
    String str = getAppContextgetResourcesgetConfigurationlocale.toString();
    if (DEBUG) {
      LogHelper.d("scenery", "isNeedStoreAppInfo: currentLang = " + str);
    }
    return str;
  }
  
  private static PackageInfo getPackageInfo(PackageManager paramPackageManager, String paramString)
  {
    try
    {
      PackageInfo localPackageInfo = paramPackageManager.getPackageInfo(paramString, 576);
      return localPackageInfo;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      try
      {
        paramPackageManager = paramPackageManager.getPackageInfo(paramString, 8768);
        return paramPackageManager;
      }
      catch (PackageManager.NameNotFoundException paramPackageManager)
      {
        if (DEBUG) {
          paramPackageManager.printStackTrace();
        }
      }
    }
    return null;
  }
  
  public static void initAppInfo(Context paramContext)
  {
    if (paramContext == null) {}
    String str;
    do
    {
      List localList;
      do
      {
        do
        {
          return;
          str = getLanguageDisplayName();
        } while (!isNeedStoreAppInfo(paramContext, str));
        localList = getInstallAppInfoList();
      } while (localList.isEmpty());
      AppInfoDB.getInstance(paramContext).removeAllAppInfo();
      AppInfoDB.getInstance(paramContext).insertAppInfoList(localList);
      SceneryPreferences.setIsInitAppInfo(paramContext, true);
      SceneryPreferences.setAppInfoLang(paramContext, str);
    } while (!DEBUG);
    LogHelper.d("scenery", "initAppInfo: init success lang=" + str);
  }
  
  private static boolean isNeedStoreAppInfo(Context paramContext, String paramString)
  {
    if (!SceneryPreferences.getIsInitAppInfo(paramContext))
    {
      SceneryPreferences.setAppInfoLang(paramContext, paramString);
      if (DEBUG) {
        LogHelper.d("scenery", "isNeedStoreAppInfo: is first run,ret = true");
      }
    }
    do
    {
      return true;
      paramContext = SceneryPreferences.getAppInfoLang(paramContext);
      if (TextUtils.equals(paramContext, paramString)) {
        break;
      }
    } while (!DEBUG);
    paramContext = String.format("appInfoLang = %s;currentLang=%s", new Object[] { paramContext, paramString });
    LogHelper.d("scenery", "isNeedStoreAppInfo: " + paramContext + ",ret = true");
    return true;
    LogHelper.d("scenery", "isNeedStoreAppInfo: ret= false");
    return false;
  }
  
  public static void onPackageInstalled(Context paramContext, String paramString)
  {
    if ((paramContext == null) || (TextUtils.isEmpty(paramString))) {}
    do
    {
      return;
      paramString = getInstallAppInfo(paramString);
    } while (paramString == null);
    AppInfoDB.getInstance(paramContext).insertAppInfo(paramString);
  }
  
  public static void onPackageRemoved(Context paramContext, String paramString)
  {
    if ((paramContext == null) || (TextUtils.isEmpty(paramString))) {
      return;
    }
    AppInfoDB.getInstance(paramContext).removeAppInfo(paramString);
  }
}

/* Location:
 * Qualified Name:     com.baidu.scenery.dispatcher.appinfo.AppInfoManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
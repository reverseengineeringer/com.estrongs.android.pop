package com.baidu.mobula.reportsdk;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Bundle;
import android.text.TextUtils;

public class MobulaLicenseManager
{
  private static MobulaLicenseManager manager;
  private String mAppLisense;
  private Context mContext;
  
  private MobulaLicenseManager(Context paramContext)
  {
    mContext = paramContext;
  }
  
  private String getAppLicense()
  {
    try
    {
      String str = mContext.getPackageManager().getApplicationInfo(mContext.getPackageName(), 128).metaData.getString("app_license");
      return str;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException) {}
    return null;
  }
  
  public static MobulaLicenseManager getInstance(Context paramContext)
  {
    try
    {
      if (manager == null) {
        manager = new MobulaLicenseManager(paramContext.getApplicationContext());
      }
      paramContext = manager;
      return paramContext;
    }
    finally {}
  }
  
  public String getLicense()
  {
    try
    {
      if (mAppLisense == null)
      {
        mAppLisense = getAppLicense();
        if (TextUtils.isEmpty(mAppLisense)) {
          throw new IllegalArgumentException("license should not null");
        }
      }
    }
    finally {}
    String str = mAppLisense;
    return str;
  }
}

/* Location:
 * Qualified Name:     com.baidu.mobula.reportsdk.MobulaLicenseManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
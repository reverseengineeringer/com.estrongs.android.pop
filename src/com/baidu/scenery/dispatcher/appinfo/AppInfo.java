package com.baidu.scenery.dispatcher.appinfo;

import java.text.SimpleDateFormat;
import java.util.Date;

public final class AppInfo
{
  private String mAppName;
  private long mInstallTime;
  private String mPkgName;
  
  public String getAppName()
  {
    return mAppName;
  }
  
  public int getInstallDays()
  {
    return (int)((System.currentTimeMillis() - mInstallTime) / 86400000L);
  }
  
  public long getInstallTime()
  {
    return mInstallTime;
  }
  
  public String getPkgName()
  {
    return mPkgName;
  }
  
  public void setAppName(String paramString)
  {
    mAppName = paramString;
  }
  
  public void setInstallTime(long paramLong)
  {
    mInstallTime = paramLong;
  }
  
  public void setPkgName(String paramString)
  {
    mPkgName = paramString;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("mPkgName=").append(mPkgName);
    localStringBuilder.append("; mAppName=").append(mAppName);
    Object localObject = new Date(mInstallTime);
    localObject = new SimpleDateFormat("yyyy-MM-dd-HH-mm-ss").format((Date)localObject);
    localStringBuilder.append("; mInstallTime=").append((String)localObject);
    localStringBuilder.append("; installDays=").append(getInstallDays());
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     com.baidu.scenery.dispatcher.appinfo.AppInfo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
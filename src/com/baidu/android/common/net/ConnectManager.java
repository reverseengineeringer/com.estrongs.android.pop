package com.baidu.android.common.net;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Proxy;

public class ConnectManager
{
  private static final boolean DEBUG = false;
  private static final String TAG = ConnectManager.class.getSimpleName();
  private String mApn;
  private String mNetType;
  private String mPort;
  private String mProxy;
  private boolean mUseWap;
  
  public ConnectManager(Context paramContext)
  {
    checkNetworkType(paramContext);
  }
  
  private void checkApn(Context paramContext, NetworkInfo paramNetworkInfo)
  {
    if (paramNetworkInfo.getExtraInfo() != null)
    {
      paramContext = paramNetworkInfo.getExtraInfo().toLowerCase();
      if (paramContext != null)
      {
        if ((paramContext.startsWith("cmwap")) || (paramContext.startsWith("uniwap")) || (paramContext.startsWith("3gwap")))
        {
          mUseWap = true;
          mApn = paramContext;
          mProxy = "10.0.0.172";
          mPort = "80";
          return;
        }
        if (paramContext.startsWith("ctwap"))
        {
          mUseWap = true;
          mApn = paramContext;
          mProxy = "10.0.0.200";
          mPort = "80";
          return;
        }
        if ((paramContext.startsWith("cmnet")) || (paramContext.startsWith("uninet")) || (paramContext.startsWith("ctnet")) || (paramContext.startsWith("3gnet")))
        {
          mUseWap = false;
          mApn = paramContext;
          return;
        }
      }
    }
    paramContext = Proxy.getDefaultHost();
    int i = Proxy.getDefaultPort();
    if ((paramContext != null) && (paramContext.length() > 0))
    {
      mProxy = paramContext;
      if ("10.0.0.172".equals(mProxy.trim()))
      {
        mUseWap = true;
        mPort = "80";
        return;
      }
      if ("10.0.0.200".equals(mProxy.trim()))
      {
        mUseWap = true;
        mPort = "80";
        return;
      }
      mUseWap = false;
      mPort = Integer.toString(i);
      return;
    }
    mUseWap = false;
  }
  
  private void checkNetworkType(Context paramContext)
  {
    NetworkInfo localNetworkInfo = ((ConnectivityManager)paramContext.getApplicationContext().getSystemService("connectivity")).getActiveNetworkInfo();
    if (localNetworkInfo != null)
    {
      if ("wifi".equals(localNetworkInfo.getTypeName().toLowerCase()))
      {
        mNetType = "wifi";
        mUseWap = false;
      }
    }
    else {
      return;
    }
    checkApn(paramContext, localNetworkInfo);
    mNetType = mApn;
  }
  
  public static boolean isNetworkConnected(Context paramContext)
  {
    paramContext = ((ConnectivityManager)paramContext.getApplicationContext().getSystemService("connectivity")).getActiveNetworkInfo();
    if (paramContext != null) {
      return paramContext.isConnectedOrConnecting();
    }
    return false;
  }
  
  public String getApn()
  {
    return mApn;
  }
  
  public String getNetType()
  {
    return mNetType;
  }
  
  public String getProxy()
  {
    return mProxy;
  }
  
  public String getProxyPort()
  {
    return mPort;
  }
  
  public boolean isWapNetwork()
  {
    return mUseWap;
  }
}

/* Location:
 * Qualified Name:     com.baidu.android.common.net.ConnectManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
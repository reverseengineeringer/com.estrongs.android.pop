package com.dianxinos.library.dxbase;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Proxy;
import android.text.TextUtils;
import java.util.WeakHashMap;

public class k
{
  static ConnectivityManager a;
  static NetworkInfo b = null;
  static WeakHashMap<n, Object> c = new WeakHashMap();
  static h d = new l();
  private static boolean e;
  
  static
  {
    if (e.c) {}
    e = false;
  }
  
  public static NetworkInfo a()
  {
    try
    {
      NetworkInfo localNetworkInfo = b;
      return localNetworkInfo;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  static void a(Context paramContext)
  {
    try
    {
      a = (ConnectivityManager)paramContext.getSystemService("connectivity");
      b = a.getActiveNetworkInfo();
      if ((e) && (b == null)) {
        j.c("Warning: could not get network info from ConnectivityManager, app might crash");
      }
      DXBEventSource.a(d, "android.net.conn.CONNECTIVITY_CHANGE");
      return;
    }
    finally {}
  }
  
  public static boolean b()
  {
    NetworkInfo localNetworkInfo = a();
    return (localNetworkInfo != null) && (localNetworkInfo.isConnected()) && (localNetworkInfo.isAvailable());
  }
  
  public static boolean c()
  {
    NetworkInfo localNetworkInfo = a();
    return (localNetworkInfo != null) && (localNetworkInfo.isConnected()) && (localNetworkInfo.isAvailable()) && (localNetworkInfo.getType() == 1);
  }
  
  public static boolean d()
  {
    NetworkInfo localNetworkInfo = a();
    if ((localNetworkInfo != null) && (localNetworkInfo.isConnected()) && (localNetworkInfo.isAvailable()) && (localNetworkInfo.getType() == 0)) {}
    switch (localNetworkInfo.getSubtype())
    {
    case 3: 
    default: 
      return false;
    }
    return true;
  }
  
  public static boolean e()
  {
    boolean bool2 = false;
    NetworkInfo localNetworkInfo = a();
    boolean bool1 = bool2;
    if (localNetworkInfo != null)
    {
      bool1 = bool2;
      if (localNetworkInfo.isConnected())
      {
        bool1 = bool2;
        if (localNetworkInfo.isAvailable())
        {
          bool1 = bool2;
          if (localNetworkInfo.getType() == 0)
          {
            bool1 = bool2;
            switch (localNetworkInfo.getSubtype())
            {
            case 3: 
            default: 
              bool1 = true;
            }
          }
        }
      }
    }
    return bool1;
  }
  
  public static boolean f()
  {
    NetworkInfo localNetworkInfo = a();
    return (localNetworkInfo != null) && (localNetworkInfo.getType() == 0) && (Proxy.getDefaultHost() != null) && (Proxy.getDefaultPort() > 0);
  }
  
  public static boolean g()
  {
    Object localObject = a();
    if ((localObject != null) && (((NetworkInfo)localObject).getType() == 0))
    {
      localObject = ((NetworkInfo)localObject).getExtraInfo();
      if (!TextUtils.isEmpty((CharSequence)localObject)) {
        return ((String)localObject).contains("wap");
      }
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.library.dxbase.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
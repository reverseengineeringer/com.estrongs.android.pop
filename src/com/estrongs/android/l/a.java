package com.estrongs.android.l;

import android.content.Context;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiManager;
import java.lang.reflect.Method;

public class a
{
  public WifiConfiguration a = null;
  private Context b;
  private WifiManager c;
  private e d;
  
  public a(Context paramContext, g paramg)
  {
    b = paramContext;
    c = ((WifiManager)paramContext.getSystemService("wifi"));
    try
    {
      a = ((WifiConfiguration)c.getClass().getMethod("getWifiApConfiguration", new Class[0]).invoke(c, new Object[0]));
      d = new e(b, paramg);
      d.a();
      return;
    }
    catch (Exception paramContext)
    {
      for (;;)
      {
        paramContext.printStackTrace();
      }
    }
  }
  
  public void a()
  {
    d.a();
  }
  
  public void a(WifiConfiguration paramWifiConfiguration)
  {
    a = paramWifiConfiguration;
    if (a != null) {
      d.a(true, a);
    }
  }
  
  public void b()
  {
    d.b();
  }
  
  public void c()
  {
    d.a(false, null);
  }
  
  public WifiConfiguration d()
  {
    try
    {
      WifiConfiguration localWifiConfiguration = (WifiConfiguration)c.getClass().getMethod("getWifiApConfiguration", new Class[0]).invoke(c, new Object[0]);
      return localWifiConfiguration;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.l.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
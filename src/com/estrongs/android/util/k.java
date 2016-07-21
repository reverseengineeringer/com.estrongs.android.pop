package com.estrongs.android.util;

import android.net.wifi.WifiManager;
import android.net.wifi.WifiManager.WifiLock;
import android.os.PowerManager;
import android.os.PowerManager.WakeLock;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ac;

public class k
{
  private static PowerManager a = null;
  private static WifiManager b = null;
  private static PowerManager.WakeLock c = null;
  private static WifiManager.WifiLock d = null;
  private static Integer e = Integer.valueOf(0);
  private static Integer f = Integer.valueOf(0);
  private static Object g = new Object();
  
  public static void a()
  {
    a(true, true);
  }
  
  public static void a(boolean paramBoolean1, boolean paramBoolean2)
  {
    Object localObject1 = g;
    if (paramBoolean1) {}
    try
    {
      Integer localInteger = f;
      f = Integer.valueOf(f.intValue() + 1);
      if (f.intValue() == 1) {
        c(true, false);
      }
      if (paramBoolean2)
      {
        localInteger = e;
        e = Integer.valueOf(e.intValue() + 1);
        if (e.intValue() == 1) {
          c(false, true);
        }
      }
      return;
    }
    finally {}
  }
  
  public static void b()
  {
    b(true, true);
  }
  
  public static void b(boolean paramBoolean1, boolean paramBoolean2)
  {
    Object localObject1 = g;
    if (paramBoolean1) {}
    try
    {
      Integer localInteger = f;
      f = Integer.valueOf(f.intValue() - 1);
      if (f.intValue() == 0) {
        d(true, false);
      }
      if (paramBoolean2)
      {
        localInteger = e;
        e = Integer.valueOf(e.intValue() - 1);
        if (e.intValue() == 0) {
          d(false, true);
        }
      }
      return;
    }
    finally {}
  }
  
  private static void c(boolean paramBoolean1, boolean paramBoolean2)
  {
    FexApplication localFexApplication = FexApplication.a();
    if (localFexApplication == null) {
      return;
    }
    if ((a == null) && (paramBoolean1)) {
      a = (PowerManager)localFexApplication.getSystemService("power");
    }
    if ((b == null) && (paramBoolean2)) {
      b = (WifiManager)localFexApplication.getSystemService("wifi");
    }
    if ((!paramBoolean1) || ((c != null) && (c.isHeld()))) {}
    for (int i = 0;; i = 1)
    {
      if ((!paramBoolean2) || ((d != null) && (d.isHeld()))) {}
      for (int j = 0;; j = 1)
      {
        if ((i != 0) && (a != null))
        {
          c = a.newWakeLock(1, "ES Wake Lock");
          c.acquire();
        }
        if ((j == 0) || (b == null)) {
          break;
        }
        i = ac.a();
        if (i >= 10) {}
        for (;;)
        {
          try
          {
            d = b.createWifiLock(3, "ES Wifi Lock");
            if (d == null) {
              d = b.createWifiLock(1, "ES Wifi Lock");
            }
            try
            {
              d.acquire();
              return;
            }
            catch (Exception localException1) {}
            if ((i < 10) || (i >= 12)) {
              break;
            }
            try
            {
              d = b.createWifiLock(1, "ES Wifi Lock");
              d.acquire();
              return;
            }
            catch (Exception localException2)
            {
              d = null;
              return;
            }
          }
          catch (Exception localException3)
          {
            l.e("Error", "change to acquire WIFI_MODE_FULL lock");
            d = b.createWifiLock(1, "ES Wifi Lock");
            continue;
          }
          d = b.createWifiLock(1, "ES Wifi Lock");
        }
      }
    }
  }
  
  private static void d(boolean paramBoolean1, boolean paramBoolean2)
  {
    if (paramBoolean2) {}
    try
    {
      if ((d != null) && (d.isHeld()))
      {
        d.release();
        d = null;
      }
      if ((paramBoolean1) && (c != null) && (c.isHeld()))
      {
        c.release();
        c = null;
      }
      return;
    }
    catch (Exception localException) {}
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.util.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
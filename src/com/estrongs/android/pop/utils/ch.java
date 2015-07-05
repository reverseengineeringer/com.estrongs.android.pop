package com.estrongs.android.pop.utils;

import android.content.Context;
import android.telephony.TelephonyManager;
import com.estrongs.android.pop.FexApplication;

public class ch
{
  public static int a = -1;
  public static int b = 1000;
  private static String c = null;
  
  public static String a(Context paramContext)
  {
    String str = ((TelephonyManager)paramContext.getSystemService("phone")).getLine1Number();
    paramContext = str;
    if (str != null)
    {
      paramContext = str;
      if (str.startsWith("+86")) {
        paramContext = str.substring(3);
      }
    }
    return paramContext;
  }
  
  public static boolean a()
  {
    try
    {
      String str = b();
      if (str != null) {
        if ((!"cn".equalsIgnoreCase(str)) && (!"hk".equalsIgnoreCase(str)) && (!"mo".equalsIgnoreCase(str)))
        {
          boolean bool = "tw".equalsIgnoreCase(str);
          if (!bool) {}
        }
        else
        {
          return true;
        }
      }
    }
    catch (Exception localException) {}
    return false;
  }
  
  private static String b()
  {
    if (c != null) {
      return c;
    }
    try
    {
      TelephonyManager localTelephonyManager = (TelephonyManager)FexApplication.a().getSystemService("phone");
      if (localTelephonyManager != null) {
        c = localTelephonyManager.getSimCountryIso();
      }
    }
    catch (Exception localException)
    {
      for (;;) {}
    }
    return c;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.utils.ch
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
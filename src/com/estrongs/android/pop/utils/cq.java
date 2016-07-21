package com.estrongs.android.pop.utils;

import android.content.Context;
import android.telephony.TelephonyManager;

public class cq
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
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.utils.cq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
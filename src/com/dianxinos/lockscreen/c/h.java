package com.dianxinos.lockscreen.c;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;

public class h
{
  private static final boolean a = g.a;
  private static ConnectivityManager b;
  
  public static int a(Context paramContext)
  {
    paramContext = d(paramContext);
    if (paramContext == null) {}
    int i;
    do
    {
      do
      {
        return -1;
        paramContext = paramContext.getActiveNetworkInfo();
      } while (paramContext == null);
      i = paramContext.getType();
      int j = paramContext.getSubtype();
      if (a) {
        g.a("NetworkUtils", "network type = " + i + " : " + j);
      }
      if ((i == 1) || (i == 6) || (i == 9)) {
        return 1;
      }
      if ((i == 0) || ((i == 7) && (j > 0)))
      {
        if ((j == 3) || (j == 5) || (j == 6) || (j == 8) || (j == 9) || (j == 10) || (j == 12) || (j == 13) || (j == 14) || (j == 15)) {
          return 3;
        }
        return 2;
      }
    } while ((i == 2) || (i == 7));
    return 2;
  }
  
  public static int b(Context paramContext)
  {
    switch (a(paramContext))
    {
    default: 
      return 1;
    case 1: 
      return 2;
    case 2: 
      return 3;
    }
    paramContext = (ConnectivityManager)paramContext.getSystemService("connectivity");
    if (paramContext == null) {
      return 4;
    }
    paramContext = paramContext.getActiveNetworkInfo();
    if (paramContext != null)
    {
      int i = paramContext.getType();
      int j = paramContext.getSubtype();
      if ((i == 0) && (13 == j)) {
        return 5;
      }
    }
    return 4;
  }
  
  public static boolean c(Context paramContext)
  {
    paramContext = d(paramContext);
    if (paramContext == null) {}
    do
    {
      return false;
      paramContext = paramContext.getActiveNetworkInfo();
    } while ((paramContext == null) || (!paramContext.isConnected()) || (!paramContext.isAvailable()));
    return true;
  }
  
  private static ConnectivityManager d(Context paramContext)
  {
    if (b == null) {
      b = (ConnectivityManager)paramContext.getSystemService("connectivity");
    }
    return b;
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.lockscreen.c.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.estrongs.android.l;

import android.content.Context;
import android.content.res.Resources;
import android.net.NetworkInfo.DetailedState;

public class p
{
  public static String a(Context paramContext, NetworkInfo.DetailedState paramDetailedState)
  {
    return a(paramContext, null, paramDetailedState);
  }
  
  static String a(Context paramContext, String paramString, NetworkInfo.DetailedState paramDetailedState)
  {
    paramContext = paramContext.getResources();
    if (paramString == null) {}
    for (int i = 2131492886;; i = 2131492885)
    {
      paramContext = paramContext.getStringArray(i);
      i = paramDetailedState.ordinal();
      if ((i < paramContext.length) && (paramContext[i].length() != 0)) {
        break;
      }
      return null;
    }
    return String.format(paramContext[i], new Object[] { paramString });
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.l.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.estrongs.android.e;

import android.content.Context;
import android.content.res.Resources;
import android.net.NetworkInfo.DetailedState;

public class m
{
  public static String a(Context paramContext, NetworkInfo.DetailedState paramDetailedState)
  {
    return a(paramContext, null, paramDetailedState);
  }
  
  static String a(Context paramContext, String paramString, NetworkInfo.DetailedState paramDetailedState)
  {
    paramContext = paramContext.getResources();
    if (paramString == null) {}
    for (int i = 2131165186;; i = 2131165187)
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
 * Qualified Name:     com.estrongs.android.e.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
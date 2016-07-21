package com.baidu.mobstat;

import android.content.Context;

public class GetReverse
{
  private static ICooperService a;
  
  public static ICooperService getCooperService(Context paramContext)
  {
    if (a == null) {
      a = CooperService.a();
    }
    return a;
  }
}

/* Location:
 * Qualified Name:     com.baidu.mobstat.GetReverse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
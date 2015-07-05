package com.baidu.mobstat;

import android.content.Context;
import android.util.Log;

public class GetReverse
{
  static Context a;
  private static ICooperService b;
  
  public static ICooperService getCooperService(Context paramContext)
  {
    a = paramContext;
    if (b == null) {
      return CooperService.a();
    }
    Log.e("sdkstat", "1");
    if (b != null) {
      return b;
    }
    Log.e("sdkstat", "3");
    try
    {
      b = (ICooperService)ak.a(paramContext, "com.baidu.mobstat.remote.CooperService").newInstance();
      Log.e("sdkstat", "==========ICooperService=" + b);
      Log.e("sdkstat", "5");
      if (b == null)
      {
        Log.e("sdkstat", "==========CooperService.getInstance()");
        Log.e("sdkstat", "9");
        return CooperService.a();
      }
    }
    catch (ClassNotFoundException paramContext)
    {
      for (;;)
      {
        paramContext.printStackTrace();
        b = null;
        Log.e("sdkstat", "6");
      }
    }
    catch (InstantiationException paramContext)
    {
      for (;;)
      {
        paramContext.printStackTrace();
        b = null;
        Log.e("sdkstat", "7");
      }
    }
    catch (IllegalAccessException paramContext)
    {
      for (;;)
      {
        paramContext.printStackTrace();
        b = null;
        Log.e("sdkstat", "8");
      }
      Log.e("sdkstat", "10");
    }
    return b;
  }
}

/* Location:
 * Qualified Name:     com.baidu.mobstat.GetReverse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
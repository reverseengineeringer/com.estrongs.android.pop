package com.baidu.scenery.utils;

import android.content.Context;
import android.util.Log;
import com.baidu.resultcard.CardLibrary;
import com.baidu.scenery.SceneryLibrary;

public class LogHelper
{
  private static boolean mLogEnabled = false;
  
  public static void d(String paramString1, String paramString2)
  {
    if (mLogEnabled) {
      Log.d(paramString1, getLogMsg(paramString1, paramString2));
    }
  }
  
  public static void d(String paramString1, String paramString2, Throwable paramThrowable)
  {
    if (mLogEnabled) {
      Log.d(paramString1, getLogMsg(paramString1, paramString2), paramThrowable);
    }
  }
  
  public static void e(String paramString1, String paramString2)
  {
    Log.e(paramString1, getLogMsg(paramString1, paramString2));
  }
  
  public static void e(String paramString1, String paramString2, Throwable paramThrowable)
  {
    Log.e(paramString1, getLogMsg(paramString1, paramString2), paramThrowable);
  }
  
  private static String getLogMsg(String paramString1, String paramString2)
  {
    Context localContext2 = SceneryLibrary.getAppContext();
    Context localContext1 = localContext2;
    if (localContext2 == null) {
      localContext1 = CardLibrary.getAppContext();
    }
    if (localContext1 == null)
    {
      if (mLogEnabled) {
        throw new RuntimeException("context not init in sdk");
      }
      return "";
    }
    return "{" + localContext1.getPackageName() + "}" + "{" + Thread.currentThread().getName() + "}" + "[" + paramString1 + "] " + paramString2;
  }
  
  public static void i(String paramString1, String paramString2)
  {
    if (mLogEnabled) {
      Log.i(paramString1, getLogMsg(paramString1, paramString2));
    }
  }
  
  public static void i(String paramString1, String paramString2, Throwable paramThrowable)
  {
    if (mLogEnabled) {
      Log.i(paramString1, getLogMsg(paramString1, paramString2), paramThrowable);
    }
  }
  
  public static boolean isLogEnabled()
  {
    return mLogEnabled;
  }
  
  public static void setLogEnabled(boolean paramBoolean)
  {
    mLogEnabled = paramBoolean;
  }
  
  public static void w(String paramString1, String paramString2)
  {
    if (mLogEnabled) {
      Log.w(paramString1, getLogMsg(paramString1, paramString2));
    }
  }
  
  public static void w(String paramString1, String paramString2, Throwable paramThrowable)
  {
    if (mLogEnabled) {
      Log.w(paramString1, getLogMsg(paramString1, paramString2), paramThrowable);
    }
  }
}

/* Location:
 * Qualified Name:     com.baidu.scenery.utils.LogHelper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
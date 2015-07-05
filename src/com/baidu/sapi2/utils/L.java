package com.baidu.sapi2.utils;

import android.util.Log;

public final class L
{
  private static final String a = "SAPI";
  private static final String b = "%1$s\n%2$s";
  private static boolean c = false;
  
  private static void a(int paramInt, Throwable paramThrowable, String paramString, Object... paramVarArgs)
  {
    if (!c) {
      return;
    }
    if (paramVarArgs.length > 0) {
      paramString = String.format(paramString, paramVarArgs);
    }
    for (;;)
    {
      if (paramThrowable == null) {}
      for (;;)
      {
        Log.println(paramInt, "SAPI", paramString);
        return;
        paramVarArgs = paramString;
        if (paramString == null) {
          paramVarArgs = paramThrowable.getMessage();
        }
        paramString = String.format("%1$s\n%2$s", new Object[] { paramVarArgs, Log.getStackTraceString(paramThrowable) });
      }
    }
  }
  
  public static void d(String paramString, Object... paramVarArgs)
  {
    a(3, null, paramString, paramVarArgs);
  }
  
  public static void e(String paramString, Object... paramVarArgs)
  {
    a(6, null, paramString, paramVarArgs);
  }
  
  public static void e(Throwable paramThrowable)
  {
    a(6, paramThrowable, null, new Object[0]);
  }
  
  public static void e(Throwable paramThrowable, String paramString, Object... paramVarArgs)
  {
    a(6, paramThrowable, paramString, paramVarArgs);
  }
  
  public static void enable(boolean paramBoolean)
  {
    c = paramBoolean;
  }
  
  public static void i(String paramString, Object... paramVarArgs)
  {
    a(4, null, paramString, paramVarArgs);
  }
  
  public static void w(String paramString, Object... paramVarArgs)
  {
    a(5, null, paramString, paramVarArgs);
  }
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.utils.L
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
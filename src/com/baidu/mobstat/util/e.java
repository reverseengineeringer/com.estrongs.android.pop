package com.baidu.mobstat.util;

import android.util.Log;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.text.SimpleDateFormat;
import java.util.Locale;

public final class e
{
  private static final SimpleDateFormat a = new SimpleDateFormat("MM-dd HH:mm:ss.SSS", Locale.US);
  
  static
  {
    a();
  }
  
  public static int a(String paramString)
  {
    return a("sdkstat", paramString);
  }
  
  public static int a(String paramString1, String paramString2)
  {
    if (!a(3)) {
      return -1;
    }
    b(paramString1, paramString2);
    return Log.d(paramString1, paramString2);
  }
  
  public static int a(String paramString, Throwable paramThrowable)
  {
    if (!a(3)) {
      return -1;
    }
    a("sdkstat", paramString, paramThrowable);
    return Log.d("sdkstat", paramString, paramThrowable);
  }
  
  public static int a(Throwable paramThrowable)
  {
    return a("", paramThrowable);
  }
  
  public static int a(Object... paramVarArgs)
  {
    if (!a(3)) {
      return -1;
    }
    return a(d(paramVarArgs));
  }
  
  public static void a()
  {
    c.a("_b_sdk.log");
  }
  
  private static void a(String paramString1, String paramString2, Throwable paramThrowable)
  {
    StringWriter localStringWriter = new StringWriter();
    PrintWriter localPrintWriter = new PrintWriter(localStringWriter);
    paramThrowable.printStackTrace(localPrintWriter);
    b(paramString1, paramString2 + "\n" + localStringWriter.toString());
    localPrintWriter.close();
    try
    {
      localStringWriter.close();
      return;
    }
    catch (IOException paramString1)
    {
      Log.w("Log.debug", "", paramString1);
    }
  }
  
  public static boolean a(int paramInt)
  {
    return a("sdkstat", paramInt);
  }
  
  public static boolean a(String paramString, int paramInt)
  {
    return paramInt >= b.a;
  }
  
  public static int b(String paramString)
  {
    if (!a(5)) {
      return -1;
    }
    b("sdkstat", paramString);
    return Log.w("sdkstat", paramString);
  }
  
  public static int b(String paramString, Throwable paramThrowable)
  {
    if (!a(5)) {
      return -1;
    }
    a("sdkstat", paramString, paramThrowable);
    return Log.w("sdkstat", paramString, paramThrowable);
  }
  
  public static int b(Throwable paramThrowable)
  {
    return b("", paramThrowable);
  }
  
  public static int b(Object... paramVarArgs)
  {
    if (!a(5)) {
      return -1;
    }
    return b(d(paramVarArgs));
  }
  
  private static void b(String paramString1, String paramString2) {}
  
  public static int c(String paramString)
  {
    if (!a(6)) {
      return -1;
    }
    b("sdkstat", paramString);
    return Log.e("sdkstat", paramString);
  }
  
  public static int c(String paramString, Throwable paramThrowable)
  {
    if (!a(6)) {
      return -1;
    }
    a("sdkstat", paramString, paramThrowable);
    return Log.e("sdkstat", paramString, paramThrowable);
  }
  
  public static int c(Throwable paramThrowable)
  {
    return c("", paramThrowable);
  }
  
  public static int c(Object... paramVarArgs)
  {
    if (!a(6)) {
      return -1;
    }
    return c(d(paramVarArgs));
  }
  
  private static String d(Object[] paramArrayOfObject)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    int j = paramArrayOfObject.length;
    int i = 0;
    while (i < j)
    {
      localStringBuilder.append(paramArrayOfObject[i]).append(' ');
      i += 1;
    }
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     com.baidu.mobstat.util.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.baidu.mobstat.util;

import android.text.format.DateFormat;
import android.util.Log;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;

public class f
{
  private static DateFormat a = new DateFormat();
  
  static
  {
    a();
  }
  
  public static int a(String paramString, Throwable paramThrowable)
  {
    a("sdkstat", paramString, paramThrowable);
    return Log.w("sdkstat", paramString, paramThrowable);
  }
  
  public static int a(Throwable paramThrowable)
  {
    return a("", paramThrowable);
  }
  
  public static void a()
  {
    c.a("_b_sdk.log");
  }
  
  private static void a(String paramString1, String paramString2) {}
  
  private static void a(String paramString1, String paramString2, Throwable paramThrowable)
  {
    StringWriter localStringWriter = new StringWriter();
    PrintWriter localPrintWriter = new PrintWriter(localStringWriter);
    paramThrowable.printStackTrace(localPrintWriter);
    a(paramString1, paramString2 + "\n" + localStringWriter.toString());
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
}

/* Location:
 * Qualified Name:     com.baidu.mobstat.util.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
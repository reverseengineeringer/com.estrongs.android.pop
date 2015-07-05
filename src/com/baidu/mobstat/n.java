package com.baidu.mobstat;

import android.content.Context;
import android.util.Log;
import com.baidu.kirin.KirinConfig;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class n
{
  public static String a = "KIRINUPDATE";
  public static String b = "kirin_update.log";
  private static Context c;
  
  public static int a(String paramString)
  {
    if (KirinConfig.DEBUG_MODE) {
      a(d(paramString), null);
    }
    if (KirinConfig.LOG_LEVEL <= 1) {
      return Log.d(a, d(paramString));
    }
    return 0;
  }
  
  public static int a(String paramString, Throwable paramThrowable)
  {
    if (c == null) {
      return 0;
    }
    try
    {
      FileOutputStream localFileOutputStream = c.openFileOutput(b, 32768);
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(new SimpleDateFormat("MM-dd hh:mm:ss.S").format(new Date())).append("\t").append(d(paramString)).append("\n").append(Log.getStackTraceString(paramThrowable));
      paramString = localStringBuilder.toString().getBytes("UTF-8");
      int i = paramString.length;
      localFileOutputStream.write(paramString);
      localFileOutputStream.close();
      return i;
    }
    catch (IOException paramString)
    {
      return 0;
    }
    catch (UnsupportedEncodingException paramString)
    {
      return 0;
    }
    catch (FileNotFoundException paramString) {}
    return 0;
  }
  
  private static String a()
  {
    StackTraceElement[] arrayOfStackTraceElement = Thread.currentThread().getStackTrace();
    if (arrayOfStackTraceElement == null) {
      return null;
    }
    int j = arrayOfStackTraceElement.length;
    int i = 0;
    label18:
    StackTraceElement localStackTraceElement;
    if (i < j)
    {
      localStackTraceElement = arrayOfStackTraceElement[i];
      if (!localStackTraceElement.isNativeMethod()) {
        break label41;
      }
    }
    label41:
    while ((localStackTraceElement.getClassName().equals(Thread.class.getName())) || (localStackTraceElement.getClassName().equals("com.baidu.kirin.util.KirinLog")))
    {
      i += 1;
      break label18;
      break;
    }
    return "[" + Thread.currentThread().getName() + "(" + Thread.currentThread().getId() + "): " + localStackTraceElement.getFileName() + ":" + localStackTraceElement.getLineNumber() + "]";
  }
  
  public static int b(String paramString)
  {
    if (KirinConfig.DEBUG_MODE) {
      a(d(paramString), null);
    }
    if (KirinConfig.LOG_LEVEL <= 3) {
      return Log.w(a, d(paramString));
    }
    return 0;
  }
  
  public static int c(String paramString)
  {
    if (KirinConfig.DEBUG_MODE) {
      a(d(paramString), null);
    }
    if (KirinConfig.LOG_LEVEL <= 4) {
      return Log.e(a, d(paramString));
    }
    return 0;
  }
  
  private static String d(String paramString)
  {
    String str = a();
    if (str == null) {
      return paramString;
    }
    return str + " - " + paramString;
  }
}

/* Location:
 * Qualified Name:     com.baidu.mobstat.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
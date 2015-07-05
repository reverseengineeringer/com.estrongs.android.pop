package com.baidu.android.common.logging;

import android.os.Environment;
import android.os.Process;
import android.text.TextUtils;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.logging.FileHandler;
import java.util.logging.Handler;
import java.util.logging.Level;
import java.util.logging.Logger;

public final class Log
{
  public static final int FILE_LIMETE = 10485760;
  public static final int FILE_NUMBER = 2;
  private static Logger sFilelogger;
  private static boolean sLog2File = false;
  private static boolean sLogEnabled = true;
  
  public static void d(String paramString1, String paramString2)
  {
    if (sLogEnabled)
    {
      if ((sLog2File) && (sFilelogger != null)) {
        sFilelogger.log(Level.INFO, paramString1 + ": " + paramString2);
      }
    }
    else {
      return;
    }
    android.util.Log.d(paramString1, paramString2);
  }
  
  public static void d(String paramString1, String paramString2, Throwable paramThrowable)
  {
    d(paramString1, paramString2 + '\n' + getStackTraceString(paramThrowable));
  }
  
  public static void e(String paramString1, String paramString2)
  {
    if (sLogEnabled)
    {
      if ((sLog2File) && (sFilelogger != null)) {
        sFilelogger.log(Level.SEVERE, paramString1 + ": " + paramString2);
      }
    }
    else {
      return;
    }
    android.util.Log.e(paramString1, paramString2);
  }
  
  public static void e(String paramString1, String paramString2, Throwable paramThrowable)
  {
    e(paramString1, paramString2 + '\n' + getStackTraceString(paramThrowable));
  }
  
  public static void e(String paramString, Throwable paramThrowable)
  {
    e(paramString, getStackTraceString(paramThrowable));
  }
  
  private static String getLogFileName()
  {
    String str2 = getProcessNameForPid(Process.myPid());
    String str1 = str2;
    if (TextUtils.isEmpty(str2)) {
      str1 = "BaiduFileLog";
    }
    return str1.replace(':', '_');
  }
  
  private static String getProcessNameForPid(int paramInt)
  {
    Object localObject2 = "/proc/" + paramInt + "/cmdline";
    Object localObject1 = "/proc/" + paramInt + "/status";
    String str;
    for (;;)
    {
      try
      {
        localObject2 = new BufferedReader(new FileReader(new File((String)localObject2)));
        str = ((BufferedReader)localObject2).readLine();
        if (!TextUtils.isEmpty(str)) {
          localObject1 = str.substring(0, str.indexOf(0));
        }
      }
      catch (Exception localException1)
      {
        localObject1 = "";
        localException1.printStackTrace();
        return (String)localObject1;
      }
      try
      {
        ((BufferedReader)localObject2).close();
        return (String)localObject1;
      }
      catch (Exception localException2)
      {
        continue;
        str = "";
        Object localObject3 = localObject1;
        localObject1 = str;
      }
      localObject1 = new BufferedReader(new FileReader(new File((String)localObject1)));
      localObject2 = ((BufferedReader)localObject1).readLine();
      if (localObject2 != null) {
        if (((String)localObject2).startsWith("Name:"))
        {
          paramInt = ((String)localObject2).indexOf("\t");
          if (paramInt >= 0)
          {
            str = ((String)localObject2).substring(paramInt + 1);
            localObject2 = localObject1;
            localObject1 = str;
          }
        }
        else
        {
          localObject2 = ((BufferedReader)localObject1).readLine();
          continue;
        }
      }
    }
  }
  
  public static String getStackTraceString(Throwable paramThrowable)
  {
    if (paramThrowable == null) {
      return "";
    }
    StringWriter localStringWriter = new StringWriter();
    paramThrowable.printStackTrace(new PrintWriter(localStringWriter));
    return localStringWriter.toString();
  }
  
  public static void i(String paramString1, String paramString2)
  {
    if (sLogEnabled)
    {
      if ((sLog2File) && (sFilelogger != null)) {
        sFilelogger.log(Level.INFO, paramString1 + ": " + paramString2);
      }
    }
    else {
      return;
    }
    android.util.Log.i(paramString1, paramString2);
  }
  
  public static void i(String paramString1, String paramString2, Throwable paramThrowable)
  {
    i(paramString1, paramString2 + '\n' + getStackTraceString(paramThrowable));
  }
  
  public static void setLog2File(boolean paramBoolean)
  {
    sLog2File = paramBoolean;
    String str;
    Object localObject;
    if ((sLog2File) && (sFilelogger == null))
    {
      str = getLogFileName();
      localObject = new File(Environment.getExternalStorageDirectory(), str).getAbsolutePath();
    }
    try
    {
      localObject = new FileHandler((String)localObject + "_%g.log", 10485760, 2, true);
      ((FileHandler)localObject).setFormatter(new SimpleFormatter());
      sFilelogger = Logger.getLogger(str);
      sFilelogger.setLevel(Level.ALL);
      sFilelogger.addHandler((Handler)localObject);
      return;
    }
    catch (SecurityException localSecurityException)
    {
      localSecurityException.printStackTrace();
      return;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
  }
  
  public static void setLogEnabled(boolean paramBoolean)
  {
    sLogEnabled = paramBoolean;
  }
  
  public static void v(String paramString1, String paramString2)
  {
    if (sLogEnabled)
    {
      if ((sLog2File) && (sFilelogger != null)) {
        sFilelogger.log(Level.INFO, paramString1 + ": " + paramString2);
      }
    }
    else {
      return;
    }
    android.util.Log.v(paramString1, paramString2);
  }
  
  public static void v(String paramString1, String paramString2, Throwable paramThrowable)
  {
    v(paramString1, paramString2 + '\n' + getStackTraceString(paramThrowable));
  }
  
  public static void w(String paramString1, String paramString2)
  {
    if (sLogEnabled)
    {
      if ((sLog2File) && (sFilelogger != null)) {
        sFilelogger.log(Level.WARNING, paramString1 + ": " + paramString2);
      }
    }
    else {
      return;
    }
    android.util.Log.w(paramString1, paramString2);
  }
  
  public static void w(String paramString1, String paramString2, Throwable paramThrowable)
  {
    w(paramString1, paramString2 + '\n' + getStackTraceString(paramThrowable));
  }
}

/* Location:
 * Qualified Name:     com.baidu.android.common.logging.Log
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
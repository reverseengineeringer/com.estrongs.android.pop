package com.baidu.mobstat;

import android.content.Context;
import android.util.Log;
import java.io.File;

public final class NativeCrashHandler
{
  private static boolean a = false;
  private static Context b;
  
  static
  {
    try
    {
      System.loadLibrary("crash_analysis");
      a = true;
      return;
    }
    catch (Throwable localThrowable)
    {
      Log.w("NativeCrashHandler", "Load library failed.");
    }
  }
  
  public static void doNativeCrash()
  {
    if (a) {}
    try
    {
      nativeException();
      return;
    }
    catch (Throwable localThrowable)
    {
      Log.w("NativeCrashHandler", "Invoke method nativeException failed.");
    }
  }
  
  public static void init(Context paramContext)
  {
    if (paramContext == null) {}
    do
    {
      do
      {
        return;
        b = paramContext.getApplicationContext();
      } while (!a);
      paramContext = paramContext.getCacheDir();
    } while ((!paramContext.exists()) || (!paramContext.isDirectory()));
    try
    {
      nativeInit(paramContext.getAbsolutePath());
      return;
    }
    catch (Throwable paramContext)
    {
      Log.w("NativeCrashHandler", "Invoke method nativeInit failed.");
    }
  }
  
  private static native void nativeException();
  
  private static native void nativeInit(String paramString);
  
  private static native void nativeProcess(String paramString);
  
  private static native void nativeUnint();
  
  public static void onCrashCallbackFromNative(String paramString)
  {
    Log.w("NativeCrashHandler", "onCrashCallbackFromNative");
    Log.w("NativeCrashHandler", "crash: " + paramString);
    long l = System.currentTimeMillis();
    bg.a().a(l, paramString, "NativeException", 1);
  }
  
  public static void process(String paramString)
  {
    if ((paramString == null) || (paramString.length() == 0)) {}
    File localFile;
    do
    {
      do
      {
        return;
      } while (!a);
      localFile = new File(paramString);
    } while ((!localFile.exists()) || (!localFile.isFile()));
    try
    {
      nativeProcess(paramString);
      return;
    }
    catch (Throwable paramString)
    {
      Log.w("NativeCrashHandler", "Invoke method nativeProcess failed.");
    }
  }
  
  public static void uninit()
  {
    if (a) {}
    try
    {
      nativeUnint();
      return;
    }
    catch (Throwable localThrowable)
    {
      Log.w("NativeCrashHandler", "Invoke method nativeUnint failed.");
    }
  }
}

/* Location:
 * Qualified Name:     com.baidu.mobstat.NativeCrashHandler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.baidu.scenery.process;

import android.util.Log;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class ProcessManager
{
  public static final String TAG = "AndroidProcesses";
  private static final int VERSION_LOLLIPOP_MR1 = 22;
  private static boolean loggingEnabled;
  
  public static List<AndroidAppProcess> getRunningAppProcesses()
  {
    ArrayList localArrayList = new ArrayList();
    File[] arrayOfFile = new File("/proc").listFiles();
    int j = arrayOfFile.length;
    int i = 0;
    for (;;)
    {
      File localFile;
      if (i < j)
      {
        localFile = arrayOfFile[i];
        if (!localFile.isDirectory()) {}
      }
      for (;;)
      {
        try
        {
          k = Integer.parseInt(localFile.getName());
        }
        catch (NumberFormatException localNumberFormatException)
        {
          int k;
          continue;
        }
        try
        {
          localArrayList.add(new AndroidAppProcess(k));
          i += 1;
        }
        catch (IOException localIOException)
        {
          log(localIOException, "Error reading from /proc/%d.", new Object[] { Integer.valueOf(k) });
          continue;
          return localArrayList;
        }
        catch (AndroidAppProcess.NotAndroidAppProcessException localNotAndroidAppProcessException) {}
      }
    }
  }
  
  public static List<AndroidProcess> getRunningProcesses()
  {
    ArrayList localArrayList = new ArrayList();
    File[] arrayOfFile = new File("/proc").listFiles();
    int j = arrayOfFile.length;
    int i = 0;
    for (;;)
    {
      if (i < j)
      {
        File localFile = arrayOfFile[i];
        if (localFile.isDirectory()) {}
        for (;;)
        {
          try
          {
            k = Integer.parseInt(localFile.getName());
          }
          catch (NumberFormatException localNumberFormatException)
          {
            int k;
            continue;
          }
          try
          {
            localArrayList.add(new AndroidProcess(k));
            i += 1;
          }
          catch (IOException localIOException)
          {
            log(localIOException, "Error reading from /proc/%d.", new Object[] { Integer.valueOf(k) });
          }
        }
      }
    }
    return localArrayList;
  }
  
  public static boolean isLoggingEnabled()
  {
    return loggingEnabled;
  }
  
  public static void log(String paramString, Object... paramVarArgs)
  {
    if (loggingEnabled) {
      if (paramVarArgs.length != 0) {
        break label19;
      }
    }
    for (;;)
    {
      Log.d("AndroidProcesses", paramString);
      return;
      label19:
      paramString = String.format(paramString, paramVarArgs);
    }
  }
  
  public static void log(Throwable paramThrowable, String paramString, Object... paramVarArgs)
  {
    if (loggingEnabled) {
      if (paramVarArgs.length != 0) {
        break label20;
      }
    }
    for (;;)
    {
      Log.d("AndroidProcesses", paramString, paramThrowable);
      return;
      label20:
      paramString = String.format(paramString, paramVarArgs);
    }
  }
  
  public static void setLoggingEnabled(boolean paramBoolean)
  {
    loggingEnabled = paramBoolean;
  }
}

/* Location:
 * Qualified Name:     com.baidu.scenery.process.ProcessManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
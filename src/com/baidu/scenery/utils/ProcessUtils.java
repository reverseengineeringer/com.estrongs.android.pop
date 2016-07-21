package com.baidu.scenery.utils;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.content.Context;
import android.os.Build.VERSION;
import android.os.Debug.MemoryInfo;
import com.baidu.scenery.process.AndroidAppProcess;
import com.baidu.scenery.process.ProcessManager;
import java.util.List;

public class ProcessUtils
{
  private static final int BUILD_VERSION_LOLLIP = 22;
  
  public static int getBackgroudProcessCount(Context paramContext)
  {
    if (Build.VERSION.SDK_INT >= 22) {
      return getBackgroudProcessCountForLollip(paramContext);
    }
    return getBackgroudProcessCountForGingerbread(paramContext);
  }
  
  private static int getBackgroudProcessCountForGingerbread(Context paramContext)
  {
    paramContext = ((ActivityManager)paramContext.getSystemService("activity")).getRunningAppProcesses();
    if (paramContext != null) {
      return paramContext.size();
    }
    return 0;
  }
  
  private static int getBackgroudProcessCountForLollip(Context paramContext)
  {
    paramContext = ProcessManager.getRunningAppProcesses();
    if (paramContext != null) {
      return paramContext.size();
    }
    return 0;
  }
  
  public static int[] getBackgroudProcessPids(Context paramContext)
  {
    if (Build.VERSION.SDK_INT >= 22) {
      return getBackgroudProcessPidsForLollip(paramContext);
    }
    return getBackgroudProcessPidsForGingerbread(paramContext);
  }
  
  private static int[] getBackgroudProcessPidsForGingerbread(Context paramContext)
  {
    int j = 0;
    paramContext = ((ActivityManager)paramContext.getSystemService("activity")).getRunningAppProcesses();
    if (paramContext != null) {}
    int[] arrayOfInt;
    for (int i = paramContext.size();; i = 0)
    {
      arrayOfInt = new int[i];
      while (j < i)
      {
        arrayOfInt[j] = getpid;
        j += 1;
      }
    }
    return arrayOfInt;
  }
  
  private static int[] getBackgroudProcessPidsForLollip(Context paramContext)
  {
    int j = 0;
    paramContext = ProcessManager.getRunningAppProcesses();
    if (paramContext != null) {}
    int[] arrayOfInt;
    for (int i = paramContext.size();; i = 0)
    {
      arrayOfInt = new int[i];
      while (j < i)
      {
        arrayOfInt[j] = getpid;
        j += 1;
      }
    }
    return arrayOfInt;
  }
  
  public static int getBackgroundMemoryCount(Context paramContext)
  {
    int j = 0;
    int[] arrayOfInt = getBackgroudProcessPids(paramContext);
    paramContext = ((ActivityManager)paramContext.getSystemService("activity")).getProcessMemoryInfo(arrayOfInt);
    if (paramContext != null) {}
    int k;
    for (int i = paramContext.length;; i = 0)
    {
      k = 0;
      while (j < i)
      {
        k += paramContext[j].getTotalPss();
        j += 1;
      }
    }
    return k;
  }
}

/* Location:
 * Qualified Name:     com.baidu.scenery.utils.ProcessUtils
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
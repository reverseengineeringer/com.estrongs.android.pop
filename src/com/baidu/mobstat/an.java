package com.baidu.mobstat;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningServiceInfo;
import android.content.ComponentName;
import android.content.Context;
import java.util.List;

public enum an
{
  private int d;
  
  private an(int paramInt)
  {
    d = paramInt;
  }
  
  public static an a(int paramInt)
  {
    an[] arrayOfan = values();
    int j = arrayOfan.length;
    int i = 0;
    while (i < j)
    {
      an localan = arrayOfan[i];
      if (d == paramInt) {
        return localan;
      }
      i += 1;
    }
    return b;
  }
  
  public static boolean b(Context paramContext)
  {
    paramContext = (ActivityManager)paramContext.getSystemService("activity");
    if (paramContext != null) {
      try
      {
        paramContext = paramContext.getRunningServices(Integer.MAX_VALUE);
        int i = 0;
        while ((paramContext != null) && (i < paramContext.size()))
        {
          boolean bool = "com.baidu.bottom.service.BottomService".equals(getservice.getClassName());
          if (bool) {
            return true;
          }
          i += 1;
        }
        return false;
      }
      catch (Exception paramContext)
      {
        cr.a(paramContext);
      }
    }
  }
  
  public abstract void a(Context paramContext);
  
  public String toString()
  {
    return String.valueOf(d);
  }
}

/* Location:
 * Qualified Name:     com.baidu.mobstat.an
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
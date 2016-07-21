package com.estrongs.android.cleaner.a.a;

import android.app.ActivityManager;
import android.app.ActivityManager.MemoryInfo;
import android.content.Context;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;

public class c
{
  public static boolean a = true;
  public static boolean b = false;
  public static String c = "Market";
  public static String d = "";
  public static boolean e = false;
  public static boolean f = true;
  private static int g;
  private static boolean h = false;
  private static Object i = new Object();
  
  public static int a()
  {
    if (g != 0) {
      return g;
    }
    try
    {
      FileReader localFileReader = new FileReader("/proc/meminfo");
      BufferedReader localBufferedReader = new BufferedReader(localFileReader, 2048);
      String str = localBufferedReader.readLine();
      str = str.substring(str.indexOf("MemTotal:"));
      localBufferedReader.close();
      localFileReader.close();
      g = Integer.parseInt(str.replaceAll("\\D+", "")) / 1024;
      return g;
    }
    catch (IOException localIOException)
    {
      for (;;)
      {
        localIOException.printStackTrace();
      }
    }
  }
  
  public static int a(Context paramContext)
  {
    paramContext = (ActivityManager)paramContext.getSystemService("activity");
    ActivityManager.MemoryInfo localMemoryInfo = new ActivityManager.MemoryInfo();
    paramContext.getMemoryInfo(localMemoryInfo);
    return (int)(availMem / 1048576L);
  }
  
  private static int b()
  {
    return (int)(Math.random() * 40.0D) + 40;
  }
  
  public static int b(Context paramContext)
  {
    int j = a(paramContext);
    int k = a();
    k = (int)Math.round((1.0D - j / k) * 100.0D);
    j = k;
    if (k > 100) {
      j = b();
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.cleaner.a.a.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
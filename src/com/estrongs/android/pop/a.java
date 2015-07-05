package com.estrongs.android.pop;

import android.os.Environment;
import java.io.File;

public class a
{
  public static String a = "/sdcard/Android/data/" + FexApplication.a().getPackageName();
  public static String b = Environment.getExternalStorageDirectory().getAbsolutePath() + "/.estrongs";
  public static final String c = "/Android/data/" + FexApplication.a().getPackageName();
  public static String d = a + "/tmp";
  public static String e = a + "/cache";
  public static String f = a + "/recomm";
  public static String g = a + "/settings";
  public static String h = a + "/chromecast";
  public static String i = d + "/share";
  public static String j = d + "/zip";
  public static String k = b + "/bookmark";
  public static String l = b + "/bookmark1";
  public static String m = b + "/data";
  public static String n = b + "/playlist";
  public static String o = b + "/theme";
  public static String p = b + "/plugin";
  public static String q = b + "/adbKeys";
  public static String r = b + "/searchEngines";
  public static final int s = "ES".length();
  
  static
  {
    Object localObject = Environment.getExternalStorageState();
    if ((localObject != null) && (!((String)localObject).equalsIgnoreCase("mounted"))) {}
    try
    {
      String str = FexApplication.a().getFilesDir().getAbsolutePath();
      if (str != null)
      {
        localObject = str;
        if (str.endsWith("/")) {
          localObject = str.substring(0, str.length() - 1);
        }
        localObject = (String)localObject + "/externalDir";
        a = (String)localObject + "/system/";
        b = (String)localObject + "/.estrongs";
      }
    }
    catch (Exception localException)
    {
      for (;;) {}
    }
  }
  
  public static final int a()
  {
    if (ac.a() >= 22) {
      return 15;
    }
    return 14;
  }
  
  public static void b()
  {
    Object localObject = Environment.getExternalStorageState();
    if ((localObject != null) && (!((String)localObject).equalsIgnoreCase("mounted"))) {}
    for (;;)
    {
      try
      {
        String str = FexApplication.a().getFilesDir().getAbsolutePath();
        if (str != null)
        {
          localObject = str;
          if (str.endsWith("/")) {
            localObject = str.substring(0, str.length() - 1);
          }
          localObject = (String)localObject + "/externalDir";
          a = (String)localObject + "/system/";
          b = (String)localObject + "/.estrongs";
        }
      }
      catch (Exception localException)
      {
        continue;
      }
      d = a + "/tmp";
      e = a + "/cache";
      f = a + "/recomm";
      g = a + "/settings";
      i = d + "/share";
      k = b + "/bookmark";
      l = b + "/bookmark1";
      m = b + "/data";
      n = b + "/playlist";
      o = b + "/theme";
      p = b + "/plugin";
      q = b + "/adbKeys";
      r = b + "/searchEngines";
      return;
      a = "/sdcard/Android/data/" + FexApplication.a().getPackageName();
      b = "/sdcard/.estrongs";
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.estrongs.android.pop;

import android.os.Environment;
import java.io.File;

public class a
{
  public static String a = "/sdcard/Android/data/" + FexApplication.a().getPackageName();
  public static String b = Environment.getExternalStorageDirectory().getAbsolutePath() + "/.estrongs";
  public static String c = Environment.getExternalStorageDirectory().getAbsolutePath() + "/.estrongs/.dontedit_v1";
  public static String d = "content://com.estrongs.locker/appLocked";
  public static final String e = "/Android/data/" + FexApplication.a().getPackageName();
  public static String f = a + "/tmp";
  public static String g = a + "/cache";
  public static String h = a + "/recomm";
  public static String i = a + "/settings";
  public static String j = a + "/chromecast";
  public static String k = f + "/share";
  public static String l = f + "/zip";
  public static String m = f + "/appLocker";
  public static String n = b + "/bookmark";
  public static String o = b + "/bookmark1";
  public static String p = b + "/data";
  public static String q = b + "/playlist";
  public static String r = b + "/theme";
  public static String s = b + "/plugin";
  public static String t = b + "/adbKeys";
  public static String u = b + "/searchEngines";
  public static final int v = "ES".length();
  
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
    return 19;
  }
  
  public static final int b()
  {
    return 3;
  }
  
  public static void c()
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
      f = a + "/tmp";
      g = a + "/cache";
      h = a + "/recomm";
      i = a + "/settings";
      k = f + "/share";
      n = b + "/bookmark";
      o = b + "/bookmark1";
      p = b + "/data";
      q = b + "/playlist";
      r = b + "/theme";
      s = b + "/plugin";
      t = b + "/adbKeys";
      u = b + "/searchEngines";
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
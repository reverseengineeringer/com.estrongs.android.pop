package com.estrongs.android.nativetool;

import java.io.File;

public class NativeAuth
{
  public static boolean a = false;
  
  static
  {
    try
    {
      System.loadLibrary("myaes");
      return;
    }
    catch (Throwable localThrowable)
    {
      a();
    }
  }
  
  public static void a()
  {
    try
    {
      File localFile = new File(new String("/data/data/com.estrongs.android.pop/files/skip_auth"));
      if (!localFile.exists())
      {
        a = localFile.createNewFile();
        return;
      }
      a = true;
      return;
    }
    catch (Throwable localThrowable) {}
  }
  
  public static native void putAuth(int paramInt);
}

/* Location:
 * Qualified Name:     com.estrongs.android.nativetool.NativeAuth
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
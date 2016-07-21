package com.estrongs.android.pop.view;

import android.app.Activity;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.fs.impl.local.m;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Enumeration;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

public class el
{
  static int a = 0;
  private static Object b = new Object();
  
  public static int a(Activity paramActivity)
  {
    boolean bool = true;
    int i;
    synchronized (b)
    {
      if ((a == 1) || (a == 3))
      {
        i = a;
        return i;
      }
      a = 1;
    }
    try
    {
      System.loadLibrary("myaes");
      if (!bool)
      {
        a = 2;
        i = a;
        return i;
        paramActivity = finally;
        throw paramActivity;
      }
    }
    catch (Throwable localThrowable)
    {
      for (;;)
      {
        try
        {
          if (m.b() == 2)
          {
            bool = a(paramActivity, "libmyaes.so", "x86");
            continue;
          }
          bool = a(paramActivity, "libmyaes.so", "armeabi");
        }
        catch (Exception paramActivity)
        {
          bool = false;
        }
        continue;
        a = 3;
      }
    }
  }
  
  static ApplicationInfo a(Context paramContext, String paramString)
  {
    paramContext = paramContext.getPackageManager();
    try
    {
      paramContext = paramContext.getPackageInfo(paramString, 1);
      if (paramContext != null)
      {
        paramContext = applicationInfo;
        return paramContext;
      }
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      paramContext.printStackTrace();
    }
    return null;
  }
  
  private static boolean a(Activity paramActivity, String paramString1, String paramString2)
  {
    paramActivity = paramActivity.getFilesDir();
    paramActivity = new File(paramActivity.getAbsoluteFile() + "/" + paramString1);
    if (!paramActivity.exists()) {
      try
      {
        if (!a(new File(aaagetPackageNamesourceDir), paramActivity.getAbsolutePath(), paramString1, paramString2)) {
          throw new Exception("Read Zip Error");
        }
      }
      catch (Exception paramString1)
      {
        paramActivity.delete();
        return false;
      }
    }
    try
    {
      System.load(paramActivity.getAbsolutePath());
      return true;
    }
    catch (Throwable paramString1)
    {
      paramActivity.delete();
      paramString1.printStackTrace();
    }
    return false;
  }
  
  private static boolean a(File paramFile, String paramString1, String paramString2, String paramString3)
  {
    localObject2 = null;
    localObject1 = null;
    bool = false;
    byte[] arrayOfByte = new byte['Ѐ'];
    for (;;)
    {
      try
      {
        paramFile = new ZipFile(paramFile);
      }
      catch (Exception paramFile)
      {
        Enumeration localEnumeration;
        ZipEntry localZipEntry;
        paramString1 = null;
        paramFile = null;
        paramString2 = (String)localObject1;
        continue;
      }
      try
      {
        localEnumeration = paramFile.entries();
        if (!localEnumeration.hasMoreElements()) {
          break label240;
        }
        localZipEntry = (ZipEntry)localEnumeration.nextElement();
        if ((localZipEntry.isDirectory()) || (!("lib/" + paramString3 + "/" + paramString2).equals(localZipEntry.getName()))) {
          continue;
        }
        paramString1 = new BufferedOutputStream(new FileOutputStream(paramString1));
      }
      catch (Exception paramString1)
      {
        paramString1 = null;
        paramString2 = (String)localObject1;
        continue;
        bool = false;
        paramString1 = null;
        paramString2 = (String)localObject2;
        continue;
      }
      try
      {
        paramString2 = new BufferedInputStream(paramFile.getInputStream(localZipEntry));
        try
        {
          int i = paramString2.read(arrayOfByte, 0, 1024);
          if (i > 0)
          {
            paramString1.write(arrayOfByte, 0, i);
            continue;
            if (paramFile == null) {}
          }
        }
        catch (Exception paramString3) {}
      }
      catch (Exception paramString2)
      {
        paramString2 = (String)localObject1;
        continue;
      }
      try
      {
        paramFile.close();
        if (paramString2 != null) {
          paramString2.close();
        }
        if (paramString1 != null) {
          paramString1.close();
        }
        return bool;
      }
      catch (Exception paramFile)
      {
        paramFile.printStackTrace();
        return bool;
      }
      bool = true;
      paramString3 = paramString2;
      paramString2 = paramString1;
      paramString1 = paramString3;
      paramString3 = paramString2;
      paramString2 = paramString1;
      paramString1 = paramString3;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.el
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
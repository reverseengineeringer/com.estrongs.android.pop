package com.baidu.mobstat;

import android.content.Context;
import android.text.TextUtils;
import dalvik.system.DexClassLoader;
import java.io.File;
import java.util.jar.Attributes;
import java.util.jar.JarFile;
import java.util.jar.Manifest;

class av
{
  private static volatile DexClassLoader a;
  private static volatile boolean b = false;
  
  private static DexClassLoader a(Context paramContext)
  {
    Object localObject2 = null;
    for (;;)
    {
      File localFile;
      try
      {
        if (a != null)
        {
          localObject1 = a;
          return (DexClassLoader)localObject1;
        }
        localFile = paramContext.getFileStreamPath(".remote.jar");
        if (localFile != null)
        {
          localObject1 = localObject2;
          if (!localFile.isFile()) {
            continue;
          }
        }
        if (!b(paramContext, localFile.getAbsolutePath()))
        {
          bb.a("remote jar version lower than min limit, need delete");
          localObject1 = localObject2;
          if (!localFile.isFile()) {
            continue;
          }
          localFile.delete();
          localObject1 = localObject2;
          continue;
        }
        if (c(paramContext, localFile.getAbsolutePath())) {
          break label116;
        }
      }
      finally {}
      bb.a("remote jar md5 is not right, need delete");
      Object localObject1 = localObject2;
      if (!localFile.isFile()) {
        continue;
      }
      localFile.delete();
      localObject1 = localObject2;
      continue;
      label116:
      localObject1 = paramContext.getDir("outdex", 0);
      try
      {
        a = new DexClassLoader(localFile.getAbsolutePath(), ((File)localObject1).getAbsolutePath(), null, paramContext.getClassLoader());
        localObject1 = a;
      }
      catch (Exception paramContext)
      {
        for (;;)
        {
          bb.a(paramContext);
        }
      }
    }
  }
  
  public static Class<?> a(Context paramContext, String paramString)
  {
    paramContext = a(paramContext);
    if (paramContext == null) {
      return null;
    }
    return paramContext.loadClass(paramString);
  }
  
  public static void a(Context paramContext, k paramk)
  {
    for (;;)
    {
      try
      {
        boolean bool = b;
        if (bool) {
          return;
        }
        if (!cu.m(paramContext))
        {
          bb.a("isWifiAvailable = false, will not to update");
          continue;
        }
        if (paramk.a(paramContext)) {
          break label54;
        }
      }
      finally {}
      bb.a("check time, will not to update");
      continue;
      label54:
      bb.a("can start update config");
      new aw(paramContext, paramk).start();
      b = true;
    }
  }
  
  private static String b(String paramString)
  {
    try
    {
      Object localObject = new File(paramString);
      if (((File)localObject).exists()) {
        bb.b("file size: " + ((File)localObject).length());
      }
      localObject = new JarFile(paramString).getManifest().getMainAttributes().getValue("Plugin-Version");
      return (String)localObject;
    }
    catch (Exception localException)
    {
      bb.a(localException);
      bb.a("baidu remote sdk is not ready" + paramString);
    }
    return "";
  }
  
  private static boolean b(Context paramContext, String paramString)
  {
    paramContext = b(paramString);
    if (TextUtils.isEmpty(paramContext)) {}
    for (;;)
    {
      return false;
      try
      {
        i = Integer.valueOf(paramContext).intValue();
        if (i < 4) {
          continue;
        }
        return true;
      }
      catch (Exception paramContext)
      {
        for (;;)
        {
          bb.b(paramContext);
          int i = 0;
        }
      }
    }
  }
  
  private static boolean c(Context paramContext, String paramString)
  {
    String str = cp.a(new File(paramString));
    bb.a("remote.jar local file digest value digest = " + str);
    if (TextUtils.isEmpty(str)) {
      bb.a("remote.jar local file digest value fail");
    }
    do
    {
      return false;
      paramString = b(paramString);
      bb.a("remote.jar local file digest value version = " + paramString);
    } while (TextUtils.isEmpty(paramString));
    paramContext = d(paramContext, paramString);
    bb.a("remote.jar config digest value remoteJarMd5 = " + paramContext);
    if (TextUtils.isEmpty(paramContext))
    {
      bb.a("remote.jar config digest value lost");
      return false;
    }
    return str.equals(paramContext);
  }
  
  private static String d(Context paramContext, String paramString)
  {
    return ax.a(paramContext).c(paramString);
  }
}

/* Location:
 * Qualified Name:     com.baidu.mobstat.av
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
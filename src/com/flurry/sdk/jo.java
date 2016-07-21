package com.flurry.sdk;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Build.VERSION;

public class jo
  implements ll.a
{
  private static jo a;
  private static final String b = jo.class.getSimpleName();
  private String c;
  private String d;
  
  private jo()
  {
    lk locallk = lk.a();
    c = ((String)locallk.a("VersionName"));
    locallk.a("VersionName", this);
    kg.a(4, b, "initSettings, VersionName = " + c);
  }
  
  public static jo a()
  {
    try
    {
      if (a == null) {
        a = new jo();
      }
      jo localjo = a;
      return localjo;
    }
    finally {}
  }
  
  public static void b()
  {
    if (a != null) {
      lk.a().b("VersionName", a);
    }
    a = null;
  }
  
  private String f()
  {
    try
    {
      Object localObject = js.a().c();
      localObject = ((Context)localObject).getPackageManager().getPackageInfo(((Context)localObject).getPackageName(), 0);
      if (versionName != null) {
        return versionName;
      }
      if (versionCode != 0)
      {
        localObject = Integer.toString(versionCode);
        return (String)localObject;
      }
    }
    catch (Throwable localThrowable)
    {
      kg.a(6, b, "", localThrowable);
    }
    return "Unknown";
  }
  
  public void a(String paramString, Object paramObject)
  {
    if (paramString.equals("VersionName"))
    {
      c = ((String)paramObject);
      kg.a(4, b, "onSettingUpdate, VersionName = " + c);
      return;
    }
    kg.a(6, b, "onSettingUpdate internal error!");
  }
  
  public String c()
  {
    return Build.VERSION.RELEASE;
  }
  
  public String d()
  {
    return Build.DEVICE;
  }
  
  /* Error */
  public String e()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 42	com/flurry/sdk/jo:c	Ljava/lang/String;
    //   6: invokestatic 142	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   9: ifne +12 -> 21
    //   12: aload_0
    //   13: getfield 42	com/flurry/sdk/jo:c	Ljava/lang/String;
    //   16: astore_1
    //   17: aload_0
    //   18: monitorexit
    //   19: aload_1
    //   20: areturn
    //   21: aload_0
    //   22: getfield 144	com/flurry/sdk/jo:d	Ljava/lang/String;
    //   25: invokestatic 142	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   28: ifne +11 -> 39
    //   31: aload_0
    //   32: getfield 144	com/flurry/sdk/jo:d	Ljava/lang/String;
    //   35: astore_1
    //   36: goto -19 -> 17
    //   39: aload_0
    //   40: aload_0
    //   41: invokespecial 146	com/flurry/sdk/jo:f	()Ljava/lang/String;
    //   44: putfield 144	com/flurry/sdk/jo:d	Ljava/lang/String;
    //   47: aload_0
    //   48: getfield 144	com/flurry/sdk/jo:d	Ljava/lang/String;
    //   51: astore_1
    //   52: goto -35 -> 17
    //   55: astore_1
    //   56: aload_0
    //   57: monitorexit
    //   58: aload_1
    //   59: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	60	0	this	jo
    //   16	36	1	str	String
    //   55	4	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	17	55	finally
    //   21	36	55	finally
    //   39	52	55	finally
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.jo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
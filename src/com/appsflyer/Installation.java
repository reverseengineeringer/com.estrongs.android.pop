package com.appsflyer;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build.VERSION;
import java.io.File;
import java.io.FileOutputStream;
import java.io.RandomAccessFile;
import java.util.Random;
import java.util.UUID;

public class Installation
{
  private static String a = null;
  
  /* Error */
  public static String a(Context paramContext)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 10	com/appsflyer/Installation:a	Ljava/lang/String;
    //   6: ifnonnull +36 -> 42
    //   9: new 19	java/io/File
    //   12: dup
    //   13: aload_0
    //   14: invokevirtual 25	android/content/Context:getFilesDir	()Ljava/io/File;
    //   17: ldc 27
    //   19: invokespecial 30	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   22: astore_1
    //   23: aload_1
    //   24: invokevirtual 34	java/io/File:exists	()Z
    //   27: ifne +8 -> 35
    //   30: aload_1
    //   31: aload_0
    //   32: invokestatic 37	com/appsflyer/Installation:a	(Ljava/io/File;Landroid/content/Context;)V
    //   35: aload_1
    //   36: invokestatic 40	com/appsflyer/Installation:a	(Ljava/io/File;)Ljava/lang/String;
    //   39: putstatic 10	com/appsflyer/Installation:a	Ljava/lang/String;
    //   42: getstatic 10	com/appsflyer/Installation:a	Ljava/lang/String;
    //   45: astore_0
    //   46: ldc 2
    //   48: monitorexit
    //   49: aload_0
    //   50: areturn
    //   51: astore_0
    //   52: new 42	java/lang/RuntimeException
    //   55: dup
    //   56: aload_0
    //   57: invokespecial 45	java/lang/RuntimeException:<init>	(Ljava/lang/Throwable;)V
    //   60: athrow
    //   61: astore_0
    //   62: ldc 2
    //   64: monitorexit
    //   65: aload_0
    //   66: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	67	0	paramContext	Context
    //   22	14	1	localFile	File
    // Exception table:
    //   from	to	target	type
    //   23	35	51	java/lang/Exception
    //   35	42	51	java/lang/Exception
    //   3	23	61	finally
    //   23	35	61	finally
    //   35	42	61	finally
    //   42	46	61	finally
    //   52	61	61	finally
  }
  
  private static String a(File paramFile)
  {
    paramFile = new RandomAccessFile(paramFile, "r");
    byte[] arrayOfByte = new byte[(int)paramFile.length()];
    paramFile.readFully(arrayOfByte);
    paramFile.close();
    return new String(arrayOfByte);
  }
  
  private static void a(File paramFile, Context paramContext)
  {
    FileOutputStream localFileOutputStream = new FileOutputStream(paramFile);
    paramFile = paramContext.getPackageManager().getPackageInfo(paramContext.getPackageName(), 0);
    if (Build.VERSION.SDK_INT >= 9) {}
    for (paramFile = firstInstallTime + "-" + Math.abs(new Random().nextLong());; paramFile = UUID.randomUUID().toString())
    {
      localFileOutputStream.write(paramFile.getBytes());
      localFileOutputStream.close();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.appsflyer.Installation
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
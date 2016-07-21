package com.dianxinos.DXStatService.stat;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;

public class d
{
  public static int a = 0;
  public static String b = "";
  
  private static String a()
  {
    return com.dianxinos.DXStatService.a.b.b("/system/etc/dianxinos/ota/lc").trim();
  }
  
  public static String a(Context paramContext)
  {
    if (TextUtils.isEmpty(b)) {
      b = b(paramContext);
    }
    return b;
  }
  
  public static boolean a(int paramInt)
  {
    if (!com.dianxinos.DXStatService.b.a(paramInt)) {
      return false;
    }
    a = paramInt;
    return true;
  }
  
  private static String b()
  {
    return com.dianxinos.DXStatService.a.b.a("ro.dianxinos.os.lc");
  }
  
  private static String b(Context paramContext)
  {
    if (a == 0) {
      return c(paramContext);
    }
    if (1 == a) {
      return d(paramContext);
    }
    if (2 == a) {
      return a();
    }
    if (4 == a) {
      return b();
    }
    return "";
  }
  
  /* Error */
  private static String c(Context paramContext)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 5
    //   3: aconst_null
    //   4: astore 4
    //   6: new 64	java/io/BufferedReader
    //   9: dup
    //   10: new 66	java/io/InputStreamReader
    //   13: dup
    //   14: aload_0
    //   15: invokevirtual 72	android/content/Context:getResources	()Landroid/content/res/Resources;
    //   18: invokevirtual 78	android/content/res/Resources:getAssets	()Landroid/content/res/AssetManager;
    //   21: ldc 80
    //   23: invokevirtual 86	android/content/res/AssetManager:open	(Ljava/lang/String;)Ljava/io/InputStream;
    //   26: invokespecial 90	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   29: invokespecial 93	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   32: astore_3
    //   33: aload_3
    //   34: astore_0
    //   35: aload_3
    //   36: invokevirtual 96	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   39: astore 6
    //   41: aload 6
    //   43: astore_2
    //   44: aload 6
    //   46: ifnull +11 -> 57
    //   49: aload_3
    //   50: astore_0
    //   51: aload 6
    //   53: invokevirtual 30	java/lang/String:trim	()Ljava/lang/String;
    //   56: astore_2
    //   57: aload_3
    //   58: astore_0
    //   59: aload_2
    //   60: invokevirtual 100	java/lang/String:length	()I
    //   63: istore_1
    //   64: iload_1
    //   65: ifne +23 -> 88
    //   68: aload 4
    //   70: astore_0
    //   71: aload_0
    //   72: astore 4
    //   74: aload_3
    //   75: ifnull +10 -> 85
    //   78: aload_3
    //   79: invokevirtual 103	java/io/BufferedReader:close	()V
    //   82: aload_0
    //   83: astore 4
    //   85: aload 4
    //   87: areturn
    //   88: aload_2
    //   89: astore_0
    //   90: goto -19 -> 71
    //   93: astore_2
    //   94: aload_0
    //   95: astore 4
    //   97: getstatic 106	com/dianxinos/DXStatService/a/b:b	Z
    //   100: ifeq -15 -> 85
    //   103: ldc 108
    //   105: ldc 110
    //   107: aload_2
    //   108: invokestatic 116	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   111: pop
    //   112: aload_0
    //   113: areturn
    //   114: astore 4
    //   116: aconst_null
    //   117: astore_2
    //   118: aload_2
    //   119: astore_0
    //   120: getstatic 106	com/dianxinos/DXStatService/a/b:b	Z
    //   123: ifeq +15 -> 138
    //   126: aload_2
    //   127: astore_0
    //   128: ldc 108
    //   130: ldc 110
    //   132: aload 4
    //   134: invokestatic 116	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   137: pop
    //   138: aload 5
    //   140: astore 4
    //   142: aload_2
    //   143: ifnull -58 -> 85
    //   146: aload_2
    //   147: invokevirtual 103	java/io/BufferedReader:close	()V
    //   150: aconst_null
    //   151: areturn
    //   152: astore_0
    //   153: aload 5
    //   155: astore 4
    //   157: getstatic 106	com/dianxinos/DXStatService/a/b:b	Z
    //   160: ifeq -75 -> 85
    //   163: ldc 108
    //   165: ldc 110
    //   167: aload_0
    //   168: invokestatic 116	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   171: pop
    //   172: aconst_null
    //   173: areturn
    //   174: astore_2
    //   175: aconst_null
    //   176: astore_0
    //   177: aload_0
    //   178: ifnull +7 -> 185
    //   181: aload_0
    //   182: invokevirtual 103	java/io/BufferedReader:close	()V
    //   185: aload_2
    //   186: athrow
    //   187: astore_0
    //   188: getstatic 106	com/dianxinos/DXStatService/a/b:b	Z
    //   191: ifeq -6 -> 185
    //   194: ldc 108
    //   196: ldc 110
    //   198: aload_0
    //   199: invokestatic 116	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   202: pop
    //   203: goto -18 -> 185
    //   206: astore_2
    //   207: goto -30 -> 177
    //   210: astore 4
    //   212: aload_3
    //   213: astore_2
    //   214: goto -96 -> 118
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	217	0	paramContext	Context
    //   63	2	1	i	int
    //   43	46	2	str1	String
    //   93	15	2	localIOException	java.io.IOException
    //   117	30	2	localObject1	Object
    //   174	12	2	localObject2	Object
    //   206	1	2	localObject3	Object
    //   213	1	2	localBufferedReader1	java.io.BufferedReader
    //   32	181	3	localBufferedReader2	java.io.BufferedReader
    //   4	92	4	localContext	Context
    //   114	19	4	localException1	Exception
    //   140	16	4	localObject4	Object
    //   210	1	4	localException2	Exception
    //   1	153	5	localObject5	Object
    //   39	13	6	str2	String
    // Exception table:
    //   from	to	target	type
    //   78	82	93	java/io/IOException
    //   6	33	114	java/lang/Exception
    //   146	150	152	java/io/IOException
    //   6	33	174	finally
    //   181	185	187	java/io/IOException
    //   35	41	206	finally
    //   51	57	206	finally
    //   59	64	206	finally
    //   120	126	206	finally
    //   128	138	206	finally
    //   35	41	210	java/lang/Exception
    //   51	57	210	java/lang/Exception
    //   59	64	210	java/lang/Exception
  }
  
  private static String d(Context paramContext)
  {
    try
    {
      paramContext = getPackageManagergetApplicationInfogetPackageName128metaData.getString("LC");
      return paramContext;
    }
    catch (Throwable paramContext)
    {
      if (com.dianxinos.DXStatService.a.b.b) {
        Log.e("dxbase.lcService", "Failed to get the lc info.", paramContext);
      }
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.DXStatService.stat.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
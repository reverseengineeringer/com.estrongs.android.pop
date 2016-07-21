package com.flurry.sdk;

import android.content.Context;
import android.os.Build.VERSION;
import android.os.Environment;
import java.io.File;

public final class ls
{
  private static String a = ls.class.getSimpleName();
  
  public static File a(boolean paramBoolean)
  {
    Object localObject2 = null;
    Context localContext = js.a().c();
    Object localObject1 = localObject2;
    if (paramBoolean)
    {
      localObject1 = localObject2;
      if ("mounted".equals(Environment.getExternalStorageState())) {
        if (Build.VERSION.SDK_INT < 19)
        {
          localObject1 = localObject2;
          if (localContext.checkCallingOrSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") != 0) {}
        }
        else
        {
          localObject1 = localContext.getExternalFilesDir(null);
        }
      }
    }
    localObject2 = localObject1;
    if (localObject1 == null) {
      localObject2 = localContext.getFilesDir();
    }
    return (File)localObject2;
  }
  
  /* Error */
  @Deprecated
  public static void a(File paramFile, String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: ifnonnull +13 -> 14
    //   4: iconst_4
    //   5: getstatic 16	com/flurry/sdk/ls:a	Ljava/lang/String;
    //   8: ldc 71
    //   10: invokestatic 76	com/flurry/sdk/kg:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   13: return
    //   14: aload_1
    //   15: ifnonnull +38 -> 53
    //   18: iconst_4
    //   19: getstatic 16	com/flurry/sdk/ls:a	Ljava/lang/String;
    //   22: new 78	java/lang/StringBuilder
    //   25: dup
    //   26: invokespecial 79	java/lang/StringBuilder:<init>	()V
    //   29: ldc 81
    //   31: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   34: aload_0
    //   35: invokevirtual 90	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   38: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   41: invokevirtual 93	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   44: invokestatic 76	com/flurry/sdk/kg:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   47: aload_0
    //   48: invokevirtual 97	java/io/File:delete	()Z
    //   51: pop
    //   52: return
    //   53: iconst_4
    //   54: getstatic 16	com/flurry/sdk/ls:a	Ljava/lang/String;
    //   57: new 78	java/lang/StringBuilder
    //   60: dup
    //   61: invokespecial 79	java/lang/StringBuilder:<init>	()V
    //   64: ldc 99
    //   66: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   69: aload_0
    //   70: invokevirtual 90	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   73: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   76: invokevirtual 93	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   79: invokestatic 76	com/flurry/sdk/kg:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   82: new 101	java/io/FileOutputStream
    //   85: dup
    //   86: aload_0
    //   87: invokespecial 104	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   90: astore_2
    //   91: aload_2
    //   92: astore_0
    //   93: aload_2
    //   94: aload_1
    //   95: invokevirtual 108	java/lang/String:getBytes	()[B
    //   98: invokevirtual 112	java/io/FileOutputStream:write	([B)V
    //   101: aload_2
    //   102: invokestatic 117	com/flurry/sdk/lt:a	(Ljava/io/Closeable;)V
    //   105: return
    //   106: astore_3
    //   107: aconst_null
    //   108: astore_1
    //   109: aload_1
    //   110: astore_0
    //   111: bipush 6
    //   113: getstatic 16	com/flurry/sdk/ls:a	Ljava/lang/String;
    //   116: ldc 119
    //   118: aload_3
    //   119: invokestatic 122	com/flurry/sdk/kg:a	(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   122: aload_1
    //   123: invokestatic 117	com/flurry/sdk/lt:a	(Ljava/io/Closeable;)V
    //   126: return
    //   127: astore_1
    //   128: aconst_null
    //   129: astore_0
    //   130: aload_0
    //   131: invokestatic 117	com/flurry/sdk/lt:a	(Ljava/io/Closeable;)V
    //   134: aload_1
    //   135: athrow
    //   136: astore_1
    //   137: goto -7 -> 130
    //   140: astore_3
    //   141: aload_2
    //   142: astore_1
    //   143: goto -34 -> 109
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	146	0	paramFile	File
    //   0	146	1	paramString	String
    //   90	52	2	localFileOutputStream	java.io.FileOutputStream
    //   106	13	3	localThrowable1	Throwable
    //   140	1	3	localThrowable2	Throwable
    // Exception table:
    //   from	to	target	type
    //   82	91	106	java/lang/Throwable
    //   82	91	127	finally
    //   93	101	136	finally
    //   111	122	136	finally
    //   93	101	140	java/lang/Throwable
  }
  
  public static boolean a(File paramFile)
  {
    if (paramFile == null) {}
    while (paramFile.getAbsoluteFile() == null) {
      return false;
    }
    paramFile = paramFile.getParentFile();
    if (paramFile == null) {
      return true;
    }
    if ((!paramFile.mkdirs()) && (!paramFile.isDirectory()))
    {
      kg.a(6, a, "Unable to create persistent dir: " + paramFile);
      return false;
    }
    return true;
  }
  
  public static File b(boolean paramBoolean)
  {
    Context localContext = js.a().c();
    Object localObject2 = null;
    Object localObject1 = localObject2;
    if (paramBoolean)
    {
      localObject1 = localObject2;
      if ("mounted".equals(Environment.getExternalStorageState())) {
        if (Build.VERSION.SDK_INT < 19)
        {
          localObject1 = localObject2;
          if (localContext.checkCallingOrSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") != 0) {}
        }
        else
        {
          localObject1 = localContext.getExternalCacheDir();
        }
      }
    }
    localObject2 = localObject1;
    if (localObject1 == null) {
      localObject2 = localContext.getCacheDir();
    }
    return (File)localObject2;
  }
  
  public static boolean b(File paramFile)
  {
    if ((paramFile != null) && (paramFile.isDirectory()))
    {
      String[] arrayOfString = paramFile.list();
      int j = arrayOfString.length;
      int i = 0;
      while (i < j)
      {
        if (!b(new File(paramFile, arrayOfString[i]))) {
          return false;
        }
        i += 1;
      }
    }
    return paramFile.delete();
  }
  
  /* Error */
  @Deprecated
  public static String c(File paramFile)
  {
    // Byte code:
    //   0: aload_0
    //   1: ifnull +10 -> 11
    //   4: aload_0
    //   5: invokevirtual 160	java/io/File:exists	()Z
    //   8: ifne +14 -> 22
    //   11: iconst_4
    //   12: getstatic 16	com/flurry/sdk/ls:a	Ljava/lang/String;
    //   15: ldc -94
    //   17: invokestatic 76	com/flurry/sdk/kg:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   20: aconst_null
    //   21: areturn
    //   22: iconst_4
    //   23: getstatic 16	com/flurry/sdk/ls:a	Ljava/lang/String;
    //   26: new 78	java/lang/StringBuilder
    //   29: dup
    //   30: invokespecial 79	java/lang/StringBuilder:<init>	()V
    //   33: ldc -92
    //   35: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   38: aload_0
    //   39: invokevirtual 90	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   42: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   45: invokevirtual 93	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   48: invokestatic 76	com/flurry/sdk/kg:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   51: new 166	java/io/FileInputStream
    //   54: dup
    //   55: aload_0
    //   56: invokespecial 167	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   59: astore_2
    //   60: aload_2
    //   61: astore_0
    //   62: new 78	java/lang/StringBuilder
    //   65: dup
    //   66: invokespecial 79	java/lang/StringBuilder:<init>	()V
    //   69: astore_3
    //   70: aload_2
    //   71: astore_0
    //   72: sipush 1024
    //   75: newarray <illegal type>
    //   77: astore 4
    //   79: aload_2
    //   80: astore_0
    //   81: aload_2
    //   82: aload 4
    //   84: invokevirtual 171	java/io/FileInputStream:read	([B)I
    //   87: istore_1
    //   88: iload_1
    //   89: ifle +53 -> 142
    //   92: aload_2
    //   93: astore_0
    //   94: aload_3
    //   95: new 39	java/lang/String
    //   98: dup
    //   99: aload 4
    //   101: iconst_0
    //   102: iload_1
    //   103: invokespecial 174	java/lang/String:<init>	([BII)V
    //   106: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   109: pop
    //   110: goto -31 -> 79
    //   113: astore_3
    //   114: aload_2
    //   115: astore_0
    //   116: bipush 6
    //   118: getstatic 16	com/flurry/sdk/ls:a	Ljava/lang/String;
    //   121: ldc -80
    //   123: aload_3
    //   124: invokestatic 122	com/flurry/sdk/kg:a	(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   127: aload_2
    //   128: invokestatic 117	com/flurry/sdk/lt:a	(Ljava/io/Closeable;)V
    //   131: aconst_null
    //   132: astore_0
    //   133: aload_0
    //   134: ifnull -114 -> 20
    //   137: aload_0
    //   138: invokevirtual 93	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   141: areturn
    //   142: aload_2
    //   143: invokestatic 117	com/flurry/sdk/lt:a	(Ljava/io/Closeable;)V
    //   146: aload_3
    //   147: astore_0
    //   148: goto -15 -> 133
    //   151: astore_0
    //   152: aconst_null
    //   153: astore_3
    //   154: aload_0
    //   155: astore_2
    //   156: aload_3
    //   157: invokestatic 117	com/flurry/sdk/lt:a	(Ljava/io/Closeable;)V
    //   160: aload_2
    //   161: athrow
    //   162: astore_2
    //   163: aload_0
    //   164: astore_3
    //   165: goto -9 -> 156
    //   168: astore_3
    //   169: aconst_null
    //   170: astore_2
    //   171: goto -57 -> 114
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	174	0	paramFile	File
    //   87	16	1	i	int
    //   59	102	2	localObject1	Object
    //   162	1	2	localObject2	Object
    //   170	1	2	localObject3	Object
    //   69	26	3	localStringBuilder	StringBuilder
    //   113	34	3	localThrowable1	Throwable
    //   153	12	3	localObject4	Object
    //   168	1	3	localThrowable2	Throwable
    //   77	23	4	arrayOfByte	byte[]
    // Exception table:
    //   from	to	target	type
    //   62	70	113	java/lang/Throwable
    //   72	79	113	java/lang/Throwable
    //   81	88	113	java/lang/Throwable
    //   94	110	113	java/lang/Throwable
    //   51	60	151	finally
    //   62	70	162	finally
    //   72	79	162	finally
    //   81	88	162	finally
    //   94	110	162	finally
    //   116	127	162	finally
    //   51	60	168	java/lang/Throwable
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.ls
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.flurry.sdk;

import java.io.File;

public class jz<T>
{
  private static final String a = jz.class.getSimpleName();
  private final File b;
  private final lb<T> c;
  
  public jz(File paramFile, String paramString, int paramInt, le<T> paramle)
  {
    b = paramFile;
    c = new kz(new ld(paramString, paramInt, paramle));
  }
  
  /* Error */
  public T a()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 5
    //   3: aconst_null
    //   4: astore_3
    //   5: aload_0
    //   6: getfield 29	com/flurry/sdk/jz:b	Ljava/io/File;
    //   9: ifnonnull +5 -> 14
    //   12: aload_3
    //   13: areturn
    //   14: aload_0
    //   15: getfield 29	com/flurry/sdk/jz:b	Ljava/io/File;
    //   18: invokevirtual 52	java/io/File:exists	()Z
    //   21: ifne +37 -> 58
    //   24: iconst_5
    //   25: getstatic 22	com/flurry/sdk/jz:a	Ljava/lang/String;
    //   28: new 54	java/lang/StringBuilder
    //   31: dup
    //   32: invokespecial 55	java/lang/StringBuilder:<init>	()V
    //   35: ldc 57
    //   37: invokevirtual 61	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   40: aload_0
    //   41: getfield 29	com/flurry/sdk/jz:b	Ljava/io/File;
    //   44: invokevirtual 64	java/io/File:getName	()Ljava/lang/String;
    //   47: invokevirtual 61	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   50: invokevirtual 67	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   53: invokestatic 72	com/flurry/sdk/kg:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   56: aconst_null
    //   57: areturn
    //   58: iconst_0
    //   59: istore_1
    //   60: new 74	java/io/FileInputStream
    //   63: dup
    //   64: aload_0
    //   65: getfield 29	com/flurry/sdk/jz:b	Ljava/io/File;
    //   68: invokespecial 77	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   71: astore_3
    //   72: aload_3
    //   73: astore_2
    //   74: aload_0
    //   75: getfield 41	com/flurry/sdk/jz:c	Lcom/flurry/sdk/lb;
    //   78: aload_3
    //   79: invokeinterface 82 2 0
    //   84: astore 4
    //   86: aload 4
    //   88: astore_2
    //   89: aload_3
    //   90: invokestatic 87	com/flurry/sdk/lt:a	(Ljava/io/Closeable;)V
    //   93: aload_2
    //   94: astore_3
    //   95: iload_1
    //   96: ifeq -84 -> 12
    //   99: iconst_3
    //   100: getstatic 22	com/flurry/sdk/jz:a	Ljava/lang/String;
    //   103: new 54	java/lang/StringBuilder
    //   106: dup
    //   107: invokespecial 55	java/lang/StringBuilder:<init>	()V
    //   110: ldc 89
    //   112: invokevirtual 61	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   115: aload_0
    //   116: getfield 29	com/flurry/sdk/jz:b	Ljava/io/File;
    //   119: invokevirtual 64	java/io/File:getName	()Ljava/lang/String;
    //   122: invokevirtual 61	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   125: invokevirtual 67	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   128: invokestatic 72	com/flurry/sdk/kg:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   131: aload_0
    //   132: getfield 29	com/flurry/sdk/jz:b	Ljava/io/File;
    //   135: invokevirtual 92	java/io/File:delete	()Z
    //   138: pop
    //   139: aload_2
    //   140: areturn
    //   141: astore 4
    //   143: aconst_null
    //   144: astore_3
    //   145: aload_3
    //   146: astore_2
    //   147: iconst_3
    //   148: getstatic 22	com/flurry/sdk/jz:a	Ljava/lang/String;
    //   151: new 54	java/lang/StringBuilder
    //   154: dup
    //   155: invokespecial 55	java/lang/StringBuilder:<init>	()V
    //   158: ldc 94
    //   160: invokevirtual 61	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   163: aload_0
    //   164: getfield 29	com/flurry/sdk/jz:b	Ljava/io/File;
    //   167: invokevirtual 64	java/io/File:getName	()Ljava/lang/String;
    //   170: invokevirtual 61	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   173: invokevirtual 67	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   176: aload 4
    //   178: invokestatic 97	com/flurry/sdk/kg:a	(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   181: iconst_1
    //   182: istore_1
    //   183: aload_3
    //   184: invokestatic 87	com/flurry/sdk/lt:a	(Ljava/io/Closeable;)V
    //   187: aload 5
    //   189: astore_2
    //   190: goto -97 -> 93
    //   193: astore_2
    //   194: aconst_null
    //   195: astore 4
    //   197: aload_2
    //   198: astore_3
    //   199: aload 4
    //   201: invokestatic 87	com/flurry/sdk/lt:a	(Ljava/io/Closeable;)V
    //   204: aload_3
    //   205: athrow
    //   206: astore_3
    //   207: aload_2
    //   208: astore 4
    //   210: goto -11 -> 199
    //   213: astore 4
    //   215: goto -70 -> 145
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	218	0	this	jz
    //   59	124	1	i	int
    //   73	117	2	localObject1	Object
    //   193	15	2	localObject2	Object
    //   4	201	3	localObject3	Object
    //   206	1	3	localObject4	Object
    //   84	3	4	localObject5	Object
    //   141	36	4	localException1	Exception
    //   195	14	4	localObject6	Object
    //   213	1	4	localException2	Exception
    //   1	187	5	localObject7	Object
    // Exception table:
    //   from	to	target	type
    //   60	72	141	java/lang/Exception
    //   60	72	193	finally
    //   74	86	206	finally
    //   147	181	206	finally
    //   74	86	213	java/lang/Exception
  }
  
  /* Error */
  public void a(T paramT)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_2
    //   2: aconst_null
    //   3: astore 4
    //   5: aconst_null
    //   6: astore 5
    //   8: aload_1
    //   9: ifnonnull +82 -> 91
    //   12: iconst_3
    //   13: getstatic 22	com/flurry/sdk/jz:a	Ljava/lang/String;
    //   16: new 54	java/lang/StringBuilder
    //   19: dup
    //   20: invokespecial 55	java/lang/StringBuilder:<init>	()V
    //   23: ldc 101
    //   25: invokevirtual 61	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   28: aload_0
    //   29: getfield 29	com/flurry/sdk/jz:b	Ljava/io/File;
    //   32: invokevirtual 64	java/io/File:getName	()Ljava/lang/String;
    //   35: invokevirtual 61	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   38: invokevirtual 67	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   41: invokestatic 72	com/flurry/sdk/kg:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   44: iconst_1
    //   45: istore_2
    //   46: iload_2
    //   47: ifeq +43 -> 90
    //   50: iconst_3
    //   51: getstatic 22	com/flurry/sdk/jz:a	Ljava/lang/String;
    //   54: new 54	java/lang/StringBuilder
    //   57: dup
    //   58: invokespecial 55	java/lang/StringBuilder:<init>	()V
    //   61: ldc 89
    //   63: invokevirtual 61	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   66: aload_0
    //   67: getfield 29	com/flurry/sdk/jz:b	Ljava/io/File;
    //   70: invokevirtual 64	java/io/File:getName	()Ljava/lang/String;
    //   73: invokevirtual 61	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   76: invokevirtual 67	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   79: invokestatic 72	com/flurry/sdk/kg:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   82: aload_0
    //   83: getfield 29	com/flurry/sdk/jz:b	Ljava/io/File;
    //   86: invokevirtual 92	java/io/File:delete	()Z
    //   89: pop
    //   90: return
    //   91: aload 4
    //   93: astore_3
    //   94: aload_0
    //   95: getfield 29	com/flurry/sdk/jz:b	Ljava/io/File;
    //   98: invokestatic 106	com/flurry/sdk/ls:a	(Ljava/io/File;)Z
    //   101: ifne +66 -> 167
    //   104: aload 4
    //   106: astore_3
    //   107: new 108	java/io/IOException
    //   110: dup
    //   111: ldc 110
    //   113: invokespecial 113	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   116: athrow
    //   117: astore 4
    //   119: aload 5
    //   121: astore_1
    //   122: aload_1
    //   123: astore_3
    //   124: iconst_3
    //   125: getstatic 22	com/flurry/sdk/jz:a	Ljava/lang/String;
    //   128: new 54	java/lang/StringBuilder
    //   131: dup
    //   132: invokespecial 55	java/lang/StringBuilder:<init>	()V
    //   135: ldc 115
    //   137: invokevirtual 61	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   140: aload_0
    //   141: getfield 29	com/flurry/sdk/jz:b	Ljava/io/File;
    //   144: invokevirtual 64	java/io/File:getName	()Ljava/lang/String;
    //   147: invokevirtual 61	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   150: invokevirtual 67	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   153: aload 4
    //   155: invokestatic 97	com/flurry/sdk/kg:a	(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   158: aload_1
    //   159: invokestatic 87	com/flurry/sdk/lt:a	(Ljava/io/Closeable;)V
    //   162: iconst_1
    //   163: istore_2
    //   164: goto -118 -> 46
    //   167: aload 4
    //   169: astore_3
    //   170: new 117	java/io/FileOutputStream
    //   173: dup
    //   174: aload_0
    //   175: getfield 29	com/flurry/sdk/jz:b	Ljava/io/File;
    //   178: invokespecial 118	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   181: astore 4
    //   183: aload_0
    //   184: getfield 41	com/flurry/sdk/jz:c	Lcom/flurry/sdk/lb;
    //   187: aload 4
    //   189: aload_1
    //   190: invokeinterface 121 3 0
    //   195: aload 4
    //   197: invokestatic 87	com/flurry/sdk/lt:a	(Ljava/io/Closeable;)V
    //   200: goto -154 -> 46
    //   203: astore_1
    //   204: aload_3
    //   205: invokestatic 87	com/flurry/sdk/lt:a	(Ljava/io/Closeable;)V
    //   208: aload_1
    //   209: athrow
    //   210: astore_1
    //   211: aload 4
    //   213: astore_3
    //   214: goto -10 -> 204
    //   217: astore_3
    //   218: aload 4
    //   220: astore_1
    //   221: aload_3
    //   222: astore 4
    //   224: goto -102 -> 122
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	227	0	this	jz
    //   0	227	1	paramT	T
    //   1	163	2	i	int
    //   93	121	3	localObject1	Object
    //   217	5	3	localException1	Exception
    //   3	102	4	localObject2	Object
    //   117	51	4	localException2	Exception
    //   181	42	4	localObject3	Object
    //   6	114	5	localObject4	Object
    // Exception table:
    //   from	to	target	type
    //   94	104	117	java/lang/Exception
    //   107	117	117	java/lang/Exception
    //   170	183	117	java/lang/Exception
    //   94	104	203	finally
    //   107	117	203	finally
    //   124	158	203	finally
    //   170	183	203	finally
    //   183	195	210	finally
    //   183	195	217	java/lang/Exception
  }
  
  public boolean b()
  {
    if (b == null) {
      return false;
    }
    return b.delete();
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.jz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
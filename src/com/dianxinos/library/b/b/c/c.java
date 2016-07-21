package com.dianxinos.library.b.b.c;

public class c
{
  public static int a(byte[] paramArrayOfByte)
  {
    int i = 0;
    if (paramArrayOfByte == null) {
      throw new RuntimeException("Bytes is empty!!!");
    }
    if ((paramArrayOfByte[(paramArrayOfByte.length - 1)] != 1) || (paramArrayOfByte.length != 8)) {
      throw new RuntimeException("Type cast exception, unknown type to int");
    }
    int j = 0;
    while (i < 4)
    {
      j = j << 8 | paramArrayOfByte[i] & 0xFF;
      i += 1;
    }
    return j;
  }
  
  public static byte[] a(float paramFloat)
  {
    int i = Float.floatToIntBits(paramFloat);
    return new byte[] { (byte)(i >>> 24 & 0xFF), (byte)(i >>> 16 & 0xFF), (byte)(i >>> 8 & 0xFF), (byte)(i >>> 0 & 0xFF), 0, 0, 0, 3 };
  }
  
  public static byte[] a(int paramInt)
  {
    return new byte[] { (byte)(paramInt >>> 24 & 0xFF), (byte)(paramInt >>> 16 & 0xFF), (byte)(paramInt >>> 8 & 0xFF), (byte)(paramInt >>> 0 & 0xFF), 0, 0, 0, 1 };
  }
  
  public static byte[] a(long paramLong)
  {
    return new byte[] { (byte)(int)(paramLong >>> 56 & 0xFF), (byte)(int)(paramLong >>> 48 & 0xFF), (byte)(int)(paramLong >>> 40 & 0xFF), (byte)(int)(paramLong >>> 32 & 0xFF), (byte)(int)(paramLong >>> 24 & 0xFF), (byte)(int)(paramLong >>> 16 & 0xFF), (byte)(int)(paramLong >>> 8 & 0xFF), (byte)(int)(paramLong >>> 0 & 0xFF), 0, 0, 0, 2 };
  }
  
  /* Error */
  public static byte[] a(java.io.Serializable paramSerializable)
  {
    // Byte code:
    //   0: aload_0
    //   1: ifnonnull +5 -> 6
    //   4: aconst_null
    //   5: areturn
    //   6: new 33	java/io/ByteArrayOutputStream
    //   9: dup
    //   10: invokespecial 36	java/io/ByteArrayOutputStream:<init>	()V
    //   13: astore_2
    //   14: new 38	java/io/ObjectOutputStream
    //   17: dup
    //   18: aload_2
    //   19: invokespecial 41	java/io/ObjectOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   22: astore_1
    //   23: aload_1
    //   24: astore_3
    //   25: aload_2
    //   26: astore 4
    //   28: aload_1
    //   29: aload_0
    //   30: invokevirtual 45	java/io/ObjectOutputStream:writeObject	(Ljava/lang/Object;)V
    //   33: aload_1
    //   34: astore_3
    //   35: aload_2
    //   36: astore 4
    //   38: aload_1
    //   39: invokevirtual 48	java/io/ObjectOutputStream:flush	()V
    //   42: aload_1
    //   43: astore_3
    //   44: aload_2
    //   45: astore 4
    //   47: aload_2
    //   48: invokevirtual 52	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   51: astore 5
    //   53: aload_2
    //   54: invokestatic 57	com/dianxinos/library/b/c/e:a	(Ljava/io/Closeable;)V
    //   57: aload_1
    //   58: invokestatic 57	com/dianxinos/library/b/c/e:a	(Ljava/io/Closeable;)V
    //   61: aload 5
    //   63: areturn
    //   64: astore 5
    //   66: aconst_null
    //   67: astore_2
    //   68: aconst_null
    //   69: astore_1
    //   70: aload_1
    //   71: astore_3
    //   72: aload_2
    //   73: astore 4
    //   75: aload_0
    //   76: invokevirtual 61	java/lang/Object:getClass	()Ljava/lang/Class;
    //   79: invokevirtual 67	java/lang/Class:getName	()Ljava/lang/String;
    //   82: astore_0
    //   83: aload_1
    //   84: astore_3
    //   85: aload_2
    //   86: astore 4
    //   88: new 8	java/lang/RuntimeException
    //   91: dup
    //   92: new 69	java/lang/StringBuilder
    //   95: dup
    //   96: invokespecial 70	java/lang/StringBuilder:<init>	()V
    //   99: ldc 72
    //   101: invokevirtual 76	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   104: aload_0
    //   105: invokevirtual 76	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   108: invokevirtual 79	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   111: aload 5
    //   113: invokespecial 82	java/lang/RuntimeException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   116: athrow
    //   117: astore_0
    //   118: aload 4
    //   120: astore_2
    //   121: aload_2
    //   122: invokestatic 57	com/dianxinos/library/b/c/e:a	(Ljava/io/Closeable;)V
    //   125: aload_3
    //   126: invokestatic 57	com/dianxinos/library/b/c/e:a	(Ljava/io/Closeable;)V
    //   129: aload_0
    //   130: athrow
    //   131: astore_0
    //   132: aconst_null
    //   133: astore_2
    //   134: aconst_null
    //   135: astore_3
    //   136: goto -15 -> 121
    //   139: astore_0
    //   140: aconst_null
    //   141: astore_3
    //   142: goto -21 -> 121
    //   145: astore 5
    //   147: aconst_null
    //   148: astore_1
    //   149: goto -79 -> 70
    //   152: astore 5
    //   154: goto -84 -> 70
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	157	0	paramSerializable	java.io.Serializable
    //   22	127	1	localObjectOutputStream1	java.io.ObjectOutputStream
    //   13	121	2	localObject1	Object
    //   24	118	3	localObjectOutputStream2	java.io.ObjectOutputStream
    //   26	93	4	localObject2	Object
    //   51	11	5	arrayOfByte	byte[]
    //   64	48	5	localIOException1	java.io.IOException
    //   145	1	5	localIOException2	java.io.IOException
    //   152	1	5	localIOException3	java.io.IOException
    // Exception table:
    //   from	to	target	type
    //   6	14	64	java/io/IOException
    //   28	33	117	finally
    //   38	42	117	finally
    //   47	53	117	finally
    //   75	83	117	finally
    //   88	117	117	finally
    //   6	14	131	finally
    //   14	23	139	finally
    //   14	23	145	java/io/IOException
    //   28	33	152	java/io/IOException
    //   38	42	152	java/io/IOException
    //   47	53	152	java/io/IOException
  }
  
  public static byte[] a(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    paramString = paramString.getBytes();
    int i = paramString.length;
    byte[] arrayOfByte = new byte[i + 1];
    System.arraycopy(paramString, 0, arrayOfByte, 0, i);
    arrayOfByte[(arrayOfByte.length - 1)] = 4;
    return arrayOfByte;
  }
  
  public static long b(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null) {
      throw new RuntimeException("byte array is empty!!!");
    }
    if ((paramArrayOfByte[(paramArrayOfByte.length - 1)] != 2) || (paramArrayOfByte.length != 12)) {
      throw new RuntimeException("Type cast exception, unknown type to long");
    }
    long l = 0L;
    int i = 0;
    while (i < 8)
    {
      l = l << 8 | paramArrayOfByte[i] & 0xFF;
      i += 1;
    }
    return l;
  }
  
  public static float c(byte[] paramArrayOfByte)
  {
    int i = 0;
    if (paramArrayOfByte == null) {
      throw new RuntimeException("byte array is empty!!!");
    }
    if ((paramArrayOfByte[(paramArrayOfByte.length - 1)] != 3) || (paramArrayOfByte.length != 8)) {
      throw new RuntimeException("Type cast exception, unknown type to float");
    }
    int j = 0;
    while (i < 4)
    {
      j = j << 8 | paramArrayOfByte[i] & 0xFF;
      i += 1;
    }
    return Float.intBitsToFloat(j);
  }
  
  public static String d(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null) {
      return null;
    }
    if (paramArrayOfByte[(paramArrayOfByte.length - 1)] != 4) {
      throw new RuntimeException("Type cast exception, unknown type to java.lang.String");
    }
    return new String(paramArrayOfByte, 0, paramArrayOfByte.length - 1);
  }
  
  /* Error */
  public static java.io.Serializable e(byte[] paramArrayOfByte)
  {
    // Byte code:
    //   0: aload_0
    //   1: ifnull +8 -> 9
    //   4: aload_0
    //   5: arraylength
    //   6: ifne +5 -> 11
    //   9: aconst_null
    //   10: areturn
    //   11: new 121	java/io/ByteArrayInputStream
    //   14: dup
    //   15: aload_0
    //   16: invokespecial 124	java/io/ByteArrayInputStream:<init>	([B)V
    //   19: astore_0
    //   20: new 126	java/io/ObjectInputStream
    //   23: dup
    //   24: aload_0
    //   25: invokespecial 129	java/io/ObjectInputStream:<init>	(Ljava/io/InputStream;)V
    //   28: astore_3
    //   29: aload_3
    //   30: astore_1
    //   31: aload_0
    //   32: astore_2
    //   33: aload_3
    //   34: invokevirtual 133	java/io/ObjectInputStream:readObject	()Ljava/lang/Object;
    //   37: checkcast 135	java/io/Serializable
    //   40: astore 4
    //   42: aload_0
    //   43: invokestatic 57	com/dianxinos/library/b/c/e:a	(Ljava/io/Closeable;)V
    //   46: aload_3
    //   47: invokestatic 57	com/dianxinos/library/b/c/e:a	(Ljava/io/Closeable;)V
    //   50: aload 4
    //   52: areturn
    //   53: astore 4
    //   55: aconst_null
    //   56: astore_0
    //   57: aconst_null
    //   58: astore_1
    //   59: aload_0
    //   60: astore_2
    //   61: new 8	java/lang/RuntimeException
    //   64: dup
    //   65: ldc -119
    //   67: aload 4
    //   69: invokespecial 82	java/lang/RuntimeException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   72: athrow
    //   73: astore_3
    //   74: aload_2
    //   75: astore_0
    //   76: aload_1
    //   77: astore_2
    //   78: aload_3
    //   79: astore_1
    //   80: aload_0
    //   81: invokestatic 57	com/dianxinos/library/b/c/e:a	(Ljava/io/Closeable;)V
    //   84: aload_2
    //   85: invokestatic 57	com/dianxinos/library/b/c/e:a	(Ljava/io/Closeable;)V
    //   88: aload_1
    //   89: athrow
    //   90: astore 4
    //   92: aconst_null
    //   93: astore_0
    //   94: aconst_null
    //   95: astore_1
    //   96: aload_0
    //   97: astore_2
    //   98: new 8	java/lang/RuntimeException
    //   101: dup
    //   102: ldc -117
    //   104: aload 4
    //   106: invokespecial 82	java/lang/RuntimeException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   109: athrow
    //   110: astore_1
    //   111: aconst_null
    //   112: astore_0
    //   113: aconst_null
    //   114: astore_2
    //   115: goto -35 -> 80
    //   118: astore_1
    //   119: aconst_null
    //   120: astore_2
    //   121: goto -41 -> 80
    //   124: astore 4
    //   126: aconst_null
    //   127: astore_1
    //   128: goto -32 -> 96
    //   131: astore 4
    //   133: aload_3
    //   134: astore_1
    //   135: goto -39 -> 96
    //   138: astore 4
    //   140: aconst_null
    //   141: astore_1
    //   142: goto -83 -> 59
    //   145: astore 4
    //   147: aload_3
    //   148: astore_1
    //   149: goto -90 -> 59
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	152	0	paramArrayOfByte	byte[]
    //   30	66	1	localObject1	Object
    //   110	1	1	localObject2	Object
    //   118	1	1	localObject3	Object
    //   127	22	1	localObject4	Object
    //   32	89	2	localObject5	Object
    //   28	19	3	localObjectInputStream	java.io.ObjectInputStream
    //   73	75	3	localObject6	Object
    //   40	11	4	localSerializable	java.io.Serializable
    //   53	15	4	localIOException1	java.io.IOException
    //   90	15	4	localClassNotFoundException1	ClassNotFoundException
    //   124	1	4	localClassNotFoundException2	ClassNotFoundException
    //   131	1	4	localClassNotFoundException3	ClassNotFoundException
    //   138	1	4	localIOException2	java.io.IOException
    //   145	1	4	localIOException3	java.io.IOException
    // Exception table:
    //   from	to	target	type
    //   11	20	53	java/io/IOException
    //   33	42	73	finally
    //   61	73	73	finally
    //   98	110	73	finally
    //   11	20	90	java/lang/ClassNotFoundException
    //   11	20	110	finally
    //   20	29	118	finally
    //   20	29	124	java/lang/ClassNotFoundException
    //   33	42	131	java/lang/ClassNotFoundException
    //   20	29	138	java/io/IOException
    //   33	42	145	java/io/IOException
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.library.b.b.c.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
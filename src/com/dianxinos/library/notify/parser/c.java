package com.dianxinos.library.notify.parser;

public class c
{
  /* Error */
  public static String a(java.io.InputStream paramInputStream, Long paramLong)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 5
    //   3: new 12	java/io/ByteArrayOutputStream
    //   6: dup
    //   7: invokespecial 16	java/io/ByteArrayOutputStream:<init>	()V
    //   10: astore 4
    //   12: aload 4
    //   14: astore_3
    //   15: aload_0
    //   16: aload_1
    //   17: invokevirtual 22	java/lang/Long:longValue	()J
    //   20: aload 4
    //   22: invokestatic 27	com/dianxinos/library/notify/data/k:a	()Ljava/lang/String;
    //   25: invokestatic 32	com/dianxinos/library/b/a/b:a	(Ljava/io/InputStream;JLjava/io/OutputStream;Ljava/lang/String;)Z
    //   28: istore_2
    //   29: aload 4
    //   31: invokestatic 37	com/dianxinos/library/notify/j/g:a	(Ljava/io/Closeable;)V
    //   34: aload 5
    //   36: astore_0
    //   37: iload_2
    //   38: ifeq +18 -> 56
    //   41: new 39	java/lang/String
    //   44: dup
    //   45: aload 4
    //   47: invokevirtual 43	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   50: ldc 45
    //   52: invokespecial 48	java/lang/String:<init>	([BLjava/lang/String;)V
    //   55: astore_0
    //   56: aload_0
    //   57: areturn
    //   58: astore_1
    //   59: aconst_null
    //   60: astore_0
    //   61: aload_0
    //   62: astore_3
    //   63: getstatic 54	com/dianxinos/library/dxbase/e:c	Z
    //   66: ifeq +11 -> 77
    //   69: aload_0
    //   70: astore_3
    //   71: ldc 56
    //   73: aload_1
    //   74: invokestatic 61	com/dianxinos/library/dxbase/j:a	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   77: aload_0
    //   78: invokestatic 37	com/dianxinos/library/notify/j/g:a	(Ljava/io/Closeable;)V
    //   81: aconst_null
    //   82: areturn
    //   83: astore_0
    //   84: aconst_null
    //   85: astore_3
    //   86: aload_3
    //   87: invokestatic 37	com/dianxinos/library/notify/j/g:a	(Ljava/io/Closeable;)V
    //   90: aload_0
    //   91: athrow
    //   92: astore_0
    //   93: new 39	java/lang/String
    //   96: dup
    //   97: aload 4
    //   99: invokevirtual 43	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   102: ldc 63
    //   104: invokespecial 48	java/lang/String:<init>	([BLjava/lang/String;)V
    //   107: astore_0
    //   108: aload_0
    //   109: areturn
    //   110: astore_0
    //   111: new 39	java/lang/String
    //   114: dup
    //   115: aload 4
    //   117: invokevirtual 43	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   120: invokespecial 66	java/lang/String:<init>	([B)V
    //   123: astore_0
    //   124: aload_0
    //   125: areturn
    //   126: astore_0
    //   127: aload_0
    //   128: athrow
    //   129: astore_0
    //   130: goto -44 -> 86
    //   133: astore_1
    //   134: aload 4
    //   136: astore_0
    //   137: goto -76 -> 61
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	140	0	paramInputStream	java.io.InputStream
    //   0	140	1	paramLong	Long
    //   28	10	2	bool	boolean
    //   14	73	3	localObject1	Object
    //   10	125	4	localByteArrayOutputStream	java.io.ByteArrayOutputStream
    //   1	34	5	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   3	12	58	java/lang/Exception
    //   3	12	83	finally
    //   41	56	92	java/io/UnsupportedEncodingException
    //   93	108	110	java/io/UnsupportedEncodingException
    //   41	56	126	finally
    //   93	108	126	finally
    //   111	124	126	finally
    //   15	29	129	finally
    //   63	69	129	finally
    //   71	77	129	finally
    //   15	29	133	java/lang/Exception
  }
  
  /* Error */
  public static String a(byte[] paramArrayOfByte)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: aload_0
    //   4: ifnonnull +16 -> 20
    //   7: getstatic 54	com/dianxinos/library/dxbase/e:c	Z
    //   10: ifeq +8 -> 18
    //   13: ldc 70
    //   15: invokestatic 74	com/dianxinos/library/dxbase/j:b	(Ljava/lang/String;)V
    //   18: aconst_null
    //   19: areturn
    //   20: new 76	java/io/ByteArrayInputStream
    //   23: dup
    //   24: aload_0
    //   25: invokespecial 77	java/io/ByteArrayInputStream:<init>	([B)V
    //   28: astore_1
    //   29: aload_1
    //   30: astore_2
    //   31: aload_1
    //   32: aload_0
    //   33: arraylength
    //   34: i2l
    //   35: invokestatic 81	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   38: invokestatic 83	com/dianxinos/library/notify/parser/c:a	(Ljava/io/InputStream;Ljava/lang/Long;)Ljava/lang/String;
    //   41: astore_0
    //   42: aload_1
    //   43: astore_2
    //   44: aload_0
    //   45: astore_1
    //   46: aload_2
    //   47: invokestatic 37	com/dianxinos/library/notify/j/g:a	(Ljava/io/Closeable;)V
    //   50: aload_1
    //   51: areturn
    //   52: astore_3
    //   53: aconst_null
    //   54: astore_0
    //   55: aload_0
    //   56: astore_2
    //   57: aload_3
    //   58: invokevirtual 86	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   61: aload_3
    //   62: invokestatic 61	com/dianxinos/library/dxbase/j:a	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   65: aload 4
    //   67: astore_1
    //   68: aload_0
    //   69: astore_2
    //   70: goto -24 -> 46
    //   73: astore_0
    //   74: aload_2
    //   75: invokestatic 37	com/dianxinos/library/notify/j/g:a	(Ljava/io/Closeable;)V
    //   78: aload_0
    //   79: athrow
    //   80: astore_0
    //   81: aconst_null
    //   82: astore_2
    //   83: goto -9 -> 74
    //   86: astore_3
    //   87: aload_1
    //   88: astore_0
    //   89: goto -34 -> 55
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	92	0	paramArrayOfByte	byte[]
    //   28	60	1	localObject1	Object
    //   30	53	2	localObject2	Object
    //   52	10	3	localException1	Exception
    //   86	1	3	localException2	Exception
    //   1	65	4	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   20	29	52	java/lang/Exception
    //   31	42	73	finally
    //   57	65	73	finally
    //   20	29	80	finally
    //   31	42	86	java/lang/Exception
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.library.notify.parser.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
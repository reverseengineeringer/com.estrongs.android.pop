package com.dianxinos.library.notify.d;

public class a
{
  /* Error */
  static byte[] a(java.io.InputStream paramInputStream)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: new 10	java/io/ByteArrayOutputStream
    //   5: dup
    //   6: invokespecial 14	java/io/ByteArrayOutputStream:<init>	()V
    //   9: astore_2
    //   10: sipush 8192
    //   13: newarray <illegal type>
    //   15: astore 4
    //   17: aload_0
    //   18: aload 4
    //   20: invokevirtual 20	java/io/InputStream:read	([B)I
    //   23: istore_1
    //   24: iload_1
    //   25: iconst_m1
    //   26: if_icmpeq +23 -> 49
    //   29: aload_2
    //   30: aload 4
    //   32: iconst_0
    //   33: iload_1
    //   34: invokevirtual 24	java/io/ByteArrayOutputStream:write	([BII)V
    //   37: goto -20 -> 17
    //   40: astore_0
    //   41: aload_3
    //   42: astore_0
    //   43: aload_2
    //   44: invokestatic 29	com/dianxinos/library/notify/j/g:a	(Ljava/io/Closeable;)V
    //   47: aload_0
    //   48: areturn
    //   49: aload_2
    //   50: invokevirtual 33	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   53: astore_0
    //   54: goto -11 -> 43
    //   57: astore_0
    //   58: aconst_null
    //   59: astore_2
    //   60: aload_2
    //   61: invokestatic 29	com/dianxinos/library/notify/j/g:a	(Ljava/io/Closeable;)V
    //   64: aload_0
    //   65: athrow
    //   66: astore_0
    //   67: goto -7 -> 60
    //   70: astore_0
    //   71: aconst_null
    //   72: astore_2
    //   73: aload_3
    //   74: astore_0
    //   75: goto -32 -> 43
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	78	0	paramInputStream	java.io.InputStream
    //   23	11	1	i	int
    //   9	64	2	localByteArrayOutputStream	java.io.ByteArrayOutputStream
    //   1	73	3	localObject	Object
    //   15	16	4	arrayOfByte	byte[]
    // Exception table:
    //   from	to	target	type
    //   10	17	40	java/io/IOException
    //   17	24	40	java/io/IOException
    //   29	37	40	java/io/IOException
    //   49	54	40	java/io/IOException
    //   2	10	57	finally
    //   10	17	66	finally
    //   17	24	66	finally
    //   29	37	66	finally
    //   49	54	66	finally
    //   2	10	70	java/io/IOException
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.library.notify.d.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
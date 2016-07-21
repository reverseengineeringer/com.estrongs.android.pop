package com.dianxinos.library.b.c;

import java.io.InputStream;
import java.io.OutputStream;

public class d
{
  static byte[] a = new byte[8];
  
  public static String a(InputStream paramInputStream, int paramInt)
  {
    StringBuilder localStringBuilder = new StringBuilder(paramInt);
    int i = 0;
    while (i < paramInt)
    {
      localStringBuilder.append((char)(paramInputStream.read() & 0xFF));
      i += 1;
    }
    return localStringBuilder.toString();
  }
  
  public static void a(OutputStream paramOutputStream, int paramInt)
  {
    byte[] arrayOfByte = a();
    arrayOfByte[0] = ((byte)(paramInt >>> 24 & 0xFF));
    arrayOfByte[1] = ((byte)(paramInt >>> 16 & 0xFF));
    arrayOfByte[2] = ((byte)(paramInt >>> 8 & 0xFF));
    arrayOfByte[3] = ((byte)(paramInt >>> 0 & 0xFF));
    paramOutputStream.write(arrayOfByte, 0, 4);
    a(arrayOfByte);
  }
  
  public static void a(OutputStream paramOutputStream, CharSequence paramCharSequence)
  {
    int j = paramCharSequence.length();
    int i = 0;
    while (i < j)
    {
      paramOutputStream.write(paramCharSequence.charAt(i));
      i += 1;
    }
  }
  
  private static void a(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte != null) {}
    try
    {
      if (paramArrayOfByte.length == 8) {
        a = paramArrayOfByte;
      }
      return;
    }
    finally
    {
      paramArrayOfByte = finally;
      throw paramArrayOfByte;
    }
  }
  
  public static boolean a(InputStream paramInputStream)
  {
    return b(paramInputStream) == 1;
  }
  
  /* Error */
  private static byte[] a()
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 10	com/dianxinos/library/b/c/d:a	[B
    //   6: astore_0
    //   7: aconst_null
    //   8: putstatic 10	com/dianxinos/library/b/c/d:a	[B
    //   11: aload_0
    //   12: ifnull +8 -> 20
    //   15: ldc 2
    //   17: monitorexit
    //   18: aload_0
    //   19: areturn
    //   20: bipush 8
    //   22: newarray <illegal type>
    //   24: astore_0
    //   25: goto -10 -> 15
    //   28: astore_0
    //   29: ldc 2
    //   31: monitorexit
    //   32: aload_0
    //   33: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   6	19	0	arrayOfByte	byte[]
    //   28	5	0	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   3	11	28	finally
    //   20	25	28	finally
  }
  
  public static int b(InputStream paramInputStream)
  {
    int k = 0;
    int i = 0;
    byte[] arrayOfByte = a();
    if (paramInputStream.read(arrayOfByte, 0, 4) == 4)
    {
      int j = 0;
      for (;;)
      {
        k = i;
        if (j >= 4) {
          break;
        }
        k = arrayOfByte[j];
        j += 1;
        i = k & 0xFF | i << 8;
      }
    }
    a(arrayOfByte);
    return k;
  }
  
  public static byte[] c(InputStream paramInputStream)
  {
    byte[] arrayOfByte = new byte[b(paramInputStream)];
    paramInputStream.read(arrayOfByte);
    return arrayOfByte;
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.library.b.c.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
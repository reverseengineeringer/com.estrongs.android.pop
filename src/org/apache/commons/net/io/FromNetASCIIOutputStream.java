package org.apache.commons.net.io;

import java.io.FilterOutputStream;
import java.io.OutputStream;

public final class FromNetASCIIOutputStream
  extends FilterOutputStream
{
  private boolean __lastWasCR = false;
  
  public FromNetASCIIOutputStream(OutputStream paramOutputStream)
  {
    super(paramOutputStream);
  }
  
  private void __write(int paramInt)
  {
    switch (paramInt)
    {
    case 11: 
    case 12: 
    default: 
      if (__lastWasCR)
      {
        out.write(13);
        __lastWasCR = false;
      }
      out.write(paramInt);
      return;
    case 13: 
      __lastWasCR = true;
      return;
    }
    if (__lastWasCR)
    {
      out.write(FromNetASCIIInputStream._lineSeparatorBytes);
      __lastWasCR = false;
      return;
    }
    __lastWasCR = false;
    out.write(10);
  }
  
  /* Error */
  public void close()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: getstatic 38	org/apache/commons/net/io/FromNetASCIIInputStream:_noConversionRequired	Z
    //   5: ifeq +10 -> 15
    //   8: aload_0
    //   9: invokespecial 40	java/io/FilterOutputStream:close	()V
    //   12: aload_0
    //   13: monitorexit
    //   14: return
    //   15: aload_0
    //   16: getfield 12	org/apache/commons/net/io/FromNetASCIIOutputStream:__lastWasCR	Z
    //   19: ifeq +12 -> 31
    //   22: aload_0
    //   23: getfield 19	org/apache/commons/net/io/FromNetASCIIOutputStream:out	Ljava/io/OutputStream;
    //   26: bipush 13
    //   28: invokevirtual 24	java/io/OutputStream:write	(I)V
    //   31: aload_0
    //   32: invokespecial 40	java/io/FilterOutputStream:close	()V
    //   35: goto -23 -> 12
    //   38: astore_1
    //   39: aload_0
    //   40: monitorexit
    //   41: aload_1
    //   42: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	43	0	this	FromNetASCIIOutputStream
    //   38	4	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	12	38	finally
    //   15	31	38	finally
    //   31	35	38	finally
  }
  
  /* Error */
  public void write(int paramInt)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: getstatic 38	org/apache/commons/net/io/FromNetASCIIInputStream:_noConversionRequired	Z
    //   5: ifeq +14 -> 19
    //   8: aload_0
    //   9: getfield 19	org/apache/commons/net/io/FromNetASCIIOutputStream:out	Ljava/io/OutputStream;
    //   12: iload_1
    //   13: invokevirtual 24	java/io/OutputStream:write	(I)V
    //   16: aload_0
    //   17: monitorexit
    //   18: return
    //   19: aload_0
    //   20: iload_1
    //   21: invokespecial 42	org/apache/commons/net/io/FromNetASCIIOutputStream:__write	(I)V
    //   24: goto -8 -> 16
    //   27: astore_2
    //   28: aload_0
    //   29: monitorexit
    //   30: aload_2
    //   31: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	32	0	this	FromNetASCIIOutputStream
    //   0	32	1	paramInt	int
    //   27	4	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	16	27	finally
    //   19	24	27	finally
  }
  
  public void write(byte[] paramArrayOfByte)
  {
    try
    {
      write(paramArrayOfByte, 0, paramArrayOfByte.length);
      return;
    }
    finally
    {
      paramArrayOfByte = finally;
      throw paramArrayOfByte;
    }
  }
  
  /* Error */
  public void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: iload_2
    //   3: istore 4
    //   5: iload_3
    //   6: istore 5
    //   8: getstatic 38	org/apache/commons/net/io/FromNetASCIIInputStream:_noConversionRequired	Z
    //   11: ifeq +36 -> 47
    //   14: aload_0
    //   15: getfield 19	org/apache/commons/net/io/FromNetASCIIOutputStream:out	Ljava/io/OutputStream;
    //   18: aload_1
    //   19: iload_2
    //   20: iload_3
    //   21: invokevirtual 46	java/io/OutputStream:write	([BII)V
    //   24: aload_0
    //   25: monitorexit
    //   26: return
    //   27: aload_0
    //   28: aload_1
    //   29: iload 4
    //   31: baload
    //   32: invokespecial 42	org/apache/commons/net/io/FromNetASCIIOutputStream:__write	(I)V
    //   35: iload 5
    //   37: iconst_1
    //   38: isub
    //   39: istore 5
    //   41: iload 4
    //   43: iconst_1
    //   44: iadd
    //   45: istore 4
    //   47: iload 5
    //   49: ifgt -22 -> 27
    //   52: goto -28 -> 24
    //   55: astore_1
    //   56: aload_0
    //   57: monitorexit
    //   58: aload_1
    //   59: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	60	0	this	FromNetASCIIOutputStream
    //   0	60	1	paramArrayOfByte	byte[]
    //   0	60	2	paramInt1	int
    //   0	60	3	paramInt2	int
    //   3	43	4	i	int
    //   6	42	5	j	int
    // Exception table:
    //   from	to	target	type
    //   8	24	55	finally
    //   27	35	55	finally
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.net.io.FromNetASCIIOutputStream
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package org.apache.commons.net.io;

import java.io.Writer;

public final class DotTerminatedMessageWriter
  extends Writer
{
  private static final int __LAST_WAS_CR_STATE = 1;
  private static final int __LAST_WAS_NL_STATE = 2;
  private static final int __NOTHING_SPECIAL_STATE = 0;
  private Writer __output;
  private int __state;
  
  public DotTerminatedMessageWriter(Writer paramWriter)
  {
    super(paramWriter);
    __output = paramWriter;
    __state = 0;
  }
  
  public void close()
  {
    for (;;)
    {
      synchronized (lock)
      {
        if (__output == null) {
          return;
        }
        if (__state == 1)
        {
          __output.write(10);
          __output.write(".\r\n");
          __output.flush();
          __output = null;
          return;
        }
      }
      if (__state != 2) {
        __output.write("\r\n");
      }
    }
  }
  
  public void flush()
  {
    synchronized (lock)
    {
      __output.flush();
      return;
    }
  }
  
  public void write(int paramInt)
  {
    Object localObject1 = lock;
    switch (paramInt)
    {
    }
    for (;;)
    {
      try
      {
        __state = 0;
        __output.write(paramInt);
        return;
      }
      finally {}
      __state = 1;
      __output.write(13);
      return;
      if (__state != 1) {
        __output.write(13);
      }
      __output.write(10);
      __state = 2;
      return;
      if (__state == 2) {
        __output.write(46);
      }
    }
  }
  
  public void write(String paramString)
  {
    write(paramString.toCharArray());
  }
  
  public void write(String paramString, int paramInt1, int paramInt2)
  {
    write(paramString.toCharArray(), paramInt1, paramInt2);
  }
  
  public void write(char[] paramArrayOfChar)
  {
    write(paramArrayOfChar, 0, paramArrayOfChar.length);
  }
  
  /* Error */
  public void write(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 30	org/apache/commons/net/io/DotTerminatedMessageWriter:lock	Ljava/lang/Object;
    //   4: astore 4
    //   6: aload 4
    //   8: monitorenter
    //   9: iload_3
    //   10: ifgt +7 -> 17
    //   13: aload 4
    //   15: monitorexit
    //   16: return
    //   17: aload_0
    //   18: aload_1
    //   19: iload_2
    //   20: caload
    //   21: invokevirtual 58	org/apache/commons/net/io/DotTerminatedMessageWriter:write	(I)V
    //   24: iload_3
    //   25: iconst_1
    //   26: isub
    //   27: istore_3
    //   28: iload_2
    //   29: iconst_1
    //   30: iadd
    //   31: istore_2
    //   32: goto -23 -> 9
    //   35: astore_1
    //   36: aload 4
    //   38: monitorexit
    //   39: aload_1
    //   40: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	41	0	this	DotTerminatedMessageWriter
    //   0	41	1	paramArrayOfChar	char[]
    //   0	41	2	paramInt1	int
    //   0	41	3	paramInt2	int
    //   4	33	4	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   13	16	35	finally
    //   17	24	35	finally
    //   36	39	35	finally
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.net.io.DotTerminatedMessageWriter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package org.apache.commons.net.io;

import java.io.BufferedReader;
import java.io.Reader;

public final class DotTerminatedMessageReader
  extends BufferedReader
{
  private static final char CR = '\r';
  private static final int DOT = 46;
  private static final char LF = '\n';
  private boolean atBeginning = true;
  private boolean eof = false;
  private boolean seenCR;
  
  public DotTerminatedMessageReader(Reader paramReader)
  {
    super(paramReader);
  }
  
  public void close()
  {
    synchronized (lock)
    {
      while ((!eof) && (read() != -1)) {}
      eof = true;
      atBeginning = false;
      return;
    }
  }
  
  public int read()
  {
    int i;
    synchronized (lock)
    {
      if (eof) {
        return -1;
      }
      i = super.read();
      if (i == -1)
      {
        eof = true;
        return -1;
      }
    }
    if (atBeginning)
    {
      atBeginning = false;
      if (i == 46)
      {
        mark(2);
        i = super.read();
        if (i == -1)
        {
          eof = true;
          return 46;
        }
        if (i == 46) {
          return i;
        }
        if (i == 13)
        {
          i = super.read();
          if (i == -1)
          {
            reset();
            return 46;
          }
          if (i == 10)
          {
            atBeginning = true;
            eof = true;
            return -1;
          }
        }
        reset();
        return 46;
      }
    }
    if (seenCR)
    {
      seenCR = false;
      if (i == 10) {
        atBeginning = true;
      }
    }
    if (i == 13) {
      seenCR = true;
    }
    return i;
  }
  
  public int read(char[] paramArrayOfChar)
  {
    return read(paramArrayOfChar, 0, paramArrayOfChar.length);
  }
  
  /* Error */
  public int read(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 31	org/apache/commons/net/io/DotTerminatedMessageReader:lock	Ljava/lang/Object;
    //   4: astore 8
    //   6: aload 8
    //   8: monitorenter
    //   9: iload_3
    //   10: iconst_1
    //   11: if_icmpge +8 -> 19
    //   14: aload 8
    //   16: monitorexit
    //   17: iconst_0
    //   18: ireturn
    //   19: aload_0
    //   20: invokevirtual 35	org/apache/commons/net/io/DotTerminatedMessageReader:read	()I
    //   23: istore 7
    //   25: iload 7
    //   27: iconst_m1
    //   28: if_icmpne +14 -> 42
    //   31: aload 8
    //   33: monitorexit
    //   34: iconst_m1
    //   35: ireturn
    //   36: astore_1
    //   37: aload 8
    //   39: monitorexit
    //   40: aload_1
    //   41: athrow
    //   42: iload_2
    //   43: istore 5
    //   45: iload_3
    //   46: istore 6
    //   48: iload 7
    //   50: istore_3
    //   51: iload 5
    //   53: iconst_1
    //   54: iadd
    //   55: istore 7
    //   57: iload_3
    //   58: i2c
    //   59: istore 4
    //   61: aload_1
    //   62: iload 5
    //   64: iload 4
    //   66: castore
    //   67: iload 6
    //   69: iconst_1
    //   70: isub
    //   71: istore 6
    //   73: iload 6
    //   75: ifle +13 -> 88
    //   78: aload_0
    //   79: invokevirtual 35	org/apache/commons/net/io/DotTerminatedMessageReader:read	()I
    //   82: istore_3
    //   83: iload_3
    //   84: iconst_m1
    //   85: if_icmpne +11 -> 96
    //   88: aload 8
    //   90: monitorexit
    //   91: iload 7
    //   93: iload_2
    //   94: isub
    //   95: ireturn
    //   96: iload 7
    //   98: istore 5
    //   100: goto -49 -> 51
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	103	0	this	DotTerminatedMessageReader
    //   0	103	1	paramArrayOfChar	char[]
    //   0	103	2	paramInt1	int
    //   0	103	3	paramInt2	int
    //   59	6	4	i	int
    //   43	56	5	j	int
    //   46	28	6	k	int
    //   23	74	7	m	int
    //   4	85	8	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   14	17	36	finally
    //   19	25	36	finally
    //   31	34	36	finally
    //   37	40	36	finally
    //   78	83	36	finally
    //   88	91	36	finally
  }
  
  public String readLine()
  {
    Object localObject2 = new StringBuilder();
    for (;;)
    {
      int i;
      synchronized (lock)
      {
        i = read();
        if (i == -1)
        {
          localObject2 = ((StringBuilder)localObject2).toString();
          ??? = localObject2;
          if (((String)localObject2).length() == 0) {
            ??? = null;
          }
          return (String)???;
        }
        if ((i == 10) && (atBeginning))
        {
          localObject2 = ((StringBuilder)localObject2).substring(0, ((StringBuilder)localObject2).length() - 1);
          return (String)localObject2;
        }
      }
      char c = (char)i;
      ((StringBuilder)localObject3).append(c);
    }
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.net.io.DotTerminatedMessageReader
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
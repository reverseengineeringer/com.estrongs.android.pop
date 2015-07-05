package jcifs.netbios;

import java.io.InputStream;

class SocketInputStream
  extends InputStream
{
  private static final int TMP_BUFFER_SIZE = 256;
  private int bip;
  private byte[] header;
  private InputStream in;
  private int n;
  private SessionServicePacket ssp;
  private byte[] tmp;
  private int tot;
  
  SocketInputStream(InputStream paramInputStream)
  {
    in = paramInputStream;
    header = new byte[4];
    tmp = new byte['Ā'];
  }
  
  public int available()
  {
    if (bip > 0) {
      return bip;
    }
    return in.available();
  }
  
  public void close()
  {
    in.close();
  }
  
  /* Error */
  public int read()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: aload_0
    //   4: getfield 28	jcifs/netbios/SocketInputStream:tmp	[B
    //   7: iconst_0
    //   8: iconst_1
    //   9: invokevirtual 42	jcifs/netbios/SocketInputStream:read	([BII)I
    //   12: istore_1
    //   13: iload_1
    //   14: ifge +9 -> 23
    //   17: iconst_m1
    //   18: istore_1
    //   19: aload_0
    //   20: monitorexit
    //   21: iload_1
    //   22: ireturn
    //   23: aload_0
    //   24: getfield 28	jcifs/netbios/SocketInputStream:tmp	[B
    //   27: iconst_0
    //   28: baload
    //   29: istore_1
    //   30: iload_1
    //   31: sipush 255
    //   34: iand
    //   35: istore_1
    //   36: goto -17 -> 19
    //   39: astore_2
    //   40: aload_0
    //   41: monitorexit
    //   42: aload_2
    //   43: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	44	0	this	SocketInputStream
    //   12	24	1	i	int
    //   39	4	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	13	39	finally
    //   23	30	39	finally
  }
  
  public int read(byte[] paramArrayOfByte)
  {
    try
    {
      int i = read(paramArrayOfByte, 0, paramArrayOfByte.length);
      return i;
    }
    finally
    {
      paramArrayOfByte = finally;
      throw paramArrayOfByte;
    }
  }
  
  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    int i = -1;
    if (paramInt2 == 0)
    {
      paramInt1 = 0;
      label11:
      return paramInt1;
    }
    for (;;)
    {
      try
      {
        tot = 0;
        if (bip > 0)
        {
          n = in.read(paramArrayOfByte, paramInt1, Math.min(paramInt2, bip));
          if (n == -1)
          {
            paramInt1 = i;
            if (tot <= 0) {
              break;
            }
            paramInt1 = tot;
            break;
          }
          tot += n;
          paramInt1 += n;
          int j = paramInt2 - n;
          bip -= n;
          paramInt2 = j;
          if (j != 0) {
            continue;
          }
          paramInt1 = tot;
          break;
        }
        switch (SessionServicePacket.readPacketType(in, header, 0))
        {
        case 133: 
        case -1: 
          paramInt1 = i;
          if (tot <= 0) {
            break label11;
          }
          paramInt1 = tot;
          break label11;
        }
      }
      finally {}
      bip = SessionServicePacket.readLength(header, 0);
    }
  }
  
  /* Error */
  public long skip(long paramLong)
  {
    // Byte code:
    //   0: lconst_0
    //   1: lstore 4
    //   3: aload_0
    //   4: monitorenter
    //   5: lload_1
    //   6: lconst_0
    //   7: lcmp
    //   8: ifgt +10 -> 18
    //   11: lload 4
    //   13: lstore_1
    //   14: aload_0
    //   15: monitorexit
    //   16: lload_1
    //   17: lreturn
    //   18: lload_1
    //   19: lstore 4
    //   21: lload 4
    //   23: lconst_0
    //   24: lcmp
    //   25: ifle +26 -> 51
    //   28: aload_0
    //   29: aload_0
    //   30: getfield 28	jcifs/netbios/SocketInputStream:tmp	[B
    //   33: iconst_0
    //   34: ldc2_w 67
    //   37: lload 4
    //   39: invokestatic 71	java/lang/Math:min	(JJ)J
    //   42: l2i
    //   43: invokevirtual 42	jcifs/netbios/SocketInputStream:read	([BII)I
    //   46: istore_3
    //   47: iload_3
    //   48: ifge +11 -> 59
    //   51: lload_1
    //   52: lload 4
    //   54: lsub
    //   55: lstore_1
    //   56: goto -42 -> 14
    //   59: lload 4
    //   61: iload_3
    //   62: i2l
    //   63: lsub
    //   64: lstore 4
    //   66: goto -45 -> 21
    //   69: astore 6
    //   71: aload_0
    //   72: monitorexit
    //   73: aload 6
    //   75: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	76	0	this	SocketInputStream
    //   0	76	1	paramLong	long
    //   46	16	3	i	int
    //   1	64	4	l	long
    //   69	5	6	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   28	47	69	finally
  }
}

/* Location:
 * Qualified Name:     jcifs.netbios.SocketInputStream
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
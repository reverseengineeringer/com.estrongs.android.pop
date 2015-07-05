package com.jcraft.jsch;

import java.io.IOException;
import java.io.OutputStream;

class Channel$1
  extends OutputStream
{
  byte[] a;
  private int c;
  private Buffer d;
  private Packet e;
  private boolean f;
  
  private void a()
  {
    try
    {
      d = new Buffer(b.i);
      e = new Packet(d);
      if (d.b.length - 14 - 84 <= 0)
      {
        d = null;
        e = null;
        throw new IOException("failed to initialize the channel.");
      }
    }
    finally {}
  }
  
  public void close()
  {
    if (e == null) {}
    try
    {
      a();
      if (f) {
        return;
      }
      if (c > 0) {
        flush();
      }
      g.f();
      f = true;
      return;
    }
    catch (IOException localIOException) {}
  }
  
  /* Error */
  public void flush()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 55	com/jcraft/jsch/Channel$1:f	Z
    //   4: ifeq +13 -> 17
    //   7: new 44	java/io/IOException
    //   10: dup
    //   11: ldc 68
    //   13: invokespecial 49	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   16: athrow
    //   17: aload_0
    //   18: getfield 57	com/jcraft/jsch/Channel$1:c	I
    //   21: ifne +4 -> 25
    //   24: return
    //   25: aload_0
    //   26: getfield 40	com/jcraft/jsch/Channel$1:e	Lcom/jcraft/jsch/Packet;
    //   29: invokevirtual 69	com/jcraft/jsch/Packet:a	()V
    //   32: aload_0
    //   33: getfield 33	com/jcraft/jsch/Channel$1:d	Lcom/jcraft/jsch/Buffer;
    //   36: bipush 94
    //   38: invokevirtual 72	com/jcraft/jsch/Buffer:a	(B)V
    //   41: aload_0
    //   42: getfield 33	com/jcraft/jsch/Channel$1:d	Lcom/jcraft/jsch/Buffer;
    //   45: aload_0
    //   46: getfield 22	com/jcraft/jsch/Channel$1:b	Lcom/jcraft/jsch/Channel;
    //   49: getfield 73	com/jcraft/jsch/Channel:c	I
    //   52: invokevirtual 75	com/jcraft/jsch/Buffer:a	(I)V
    //   55: aload_0
    //   56: getfield 33	com/jcraft/jsch/Channel$1:d	Lcom/jcraft/jsch/Buffer;
    //   59: aload_0
    //   60: getfield 57	com/jcraft/jsch/Channel$1:c	I
    //   63: invokevirtual 75	com/jcraft/jsch/Buffer:a	(I)V
    //   66: aload_0
    //   67: getfield 33	com/jcraft/jsch/Channel$1:d	Lcom/jcraft/jsch/Buffer;
    //   70: aload_0
    //   71: getfield 57	com/jcraft/jsch/Channel$1:c	I
    //   74: invokevirtual 77	com/jcraft/jsch/Buffer:b	(I)V
    //   77: aload_0
    //   78: getfield 57	com/jcraft/jsch/Channel$1:c	I
    //   81: istore_1
    //   82: aload_0
    //   83: iconst_0
    //   84: putfield 57	com/jcraft/jsch/Channel$1:c	I
    //   87: aload_0
    //   88: getfield 62	com/jcraft/jsch/Channel$1:g	Lcom/jcraft/jsch/Channel;
    //   91: astore_2
    //   92: aload_2
    //   93: monitorenter
    //   94: aload_0
    //   95: getfield 62	com/jcraft/jsch/Channel$1:g	Lcom/jcraft/jsch/Channel;
    //   98: getfield 80	com/jcraft/jsch/Channel:n	Z
    //   101: ifne +22 -> 123
    //   104: aload_0
    //   105: getfield 22	com/jcraft/jsch/Channel$1:b	Lcom/jcraft/jsch/Channel;
    //   108: invokevirtual 84	com/jcraft/jsch/Channel:j	()Lcom/jcraft/jsch/Session;
    //   111: aload_0
    //   112: getfield 40	com/jcraft/jsch/Channel$1:e	Lcom/jcraft/jsch/Packet;
    //   115: aload_0
    //   116: getfield 62	com/jcraft/jsch/Channel$1:g	Lcom/jcraft/jsch/Channel;
    //   119: iload_1
    //   120: invokevirtual 89	com/jcraft/jsch/Session:a	(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V
    //   123: aload_2
    //   124: monitorexit
    //   125: return
    //   126: astore_3
    //   127: aload_2
    //   128: monitorexit
    //   129: aload_3
    //   130: athrow
    //   131: astore_2
    //   132: aload_0
    //   133: invokevirtual 91	com/jcraft/jsch/Channel$1:close	()V
    //   136: new 44	java/io/IOException
    //   139: dup
    //   140: aload_2
    //   141: invokevirtual 95	java/lang/Exception:toString	()Ljava/lang/String;
    //   144: invokespecial 49	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   147: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	148	0	this	1
    //   81	39	1	i	int
    //   131	10	2	localException	Exception
    //   126	4	3	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   94	123	126	finally
    //   123	125	126	finally
    //   127	129	126	finally
    //   77	94	131	java/lang/Exception
    //   129	131	131	java/lang/Exception
  }
  
  public void write(int paramInt)
  {
    a[0] = ((byte)paramInt);
    write(a, 0, 1);
  }
  
  public void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (e == null) {
      a();
    }
    if (f) {
      throw new IOException("Already closed");
    }
    byte[] arrayOfByte = d.b;
    int j = arrayOfByte.length;
    int i = paramInt2;
    paramInt2 = paramInt1;
    paramInt1 = i;
    if (paramInt1 <= 0) {
      return;
    }
    if (paramInt1 > j - (c + 14) - 84) {}
    for (i = j - (c + 14) - 84;; i = paramInt1)
    {
      if (i <= 0)
      {
        flush();
        break;
      }
      System.arraycopy(paramArrayOfByte, paramInt2, arrayOfByte, c + 14, i);
      c += i;
      paramInt2 += i;
      paramInt1 -= i;
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.jcraft.jsch.Channel.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
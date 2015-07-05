package com.jcraft.jsch;

import java.io.PipedInputStream;
import java.io.PipedOutputStream;

class Channel$MyPipedInputStream
  extends PipedInputStream
{
  private int b = 1024;
  private int c = b;
  
  Channel$MyPipedInputStream(Channel paramChannel, int paramInt)
  {
    buffer = new byte[paramInt];
    b = paramInt;
    c = paramInt;
  }
  
  Channel$MyPipedInputStream(Channel paramChannel, int paramInt1, int paramInt2)
  {
    this(paramChannel, paramInt1);
    c = paramInt2;
  }
  
  Channel$MyPipedInputStream(Channel paramChannel, PipedOutputStream paramPipedOutputStream, int paramInt)
  {
    super(paramPipedOutputStream);
    buffer = new byte[paramInt];
    b = paramInt;
  }
  
  private int b()
  {
    int i = 0;
    if (out < in) {
      i = buffer.length - in;
    }
    while (in >= out) {
      return i;
    }
    if (in == -1) {
      return buffer.length;
    }
    return out - in;
  }
  
  /* Error */
  public void a()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: invokevirtual 42	com/jcraft/jsch/Channel$MyPipedInputStream:available	()I
    //   6: istore_1
    //   7: iload_1
    //   8: ifeq +6 -> 14
    //   11: aload_0
    //   12: monitorexit
    //   13: return
    //   14: aload_0
    //   15: iconst_0
    //   16: putfield 39	com/jcraft/jsch/Channel$MyPipedInputStream:in	I
    //   19: aload_0
    //   20: iconst_0
    //   21: putfield 36	com/jcraft/jsch/Channel$MyPipedInputStream:out	I
    //   24: aload_0
    //   25: getfield 24	com/jcraft/jsch/Channel$MyPipedInputStream:buffer	[B
    //   28: astore_2
    //   29: aload_0
    //   30: getfield 39	com/jcraft/jsch/Channel$MyPipedInputStream:in	I
    //   33: istore_1
    //   34: aload_0
    //   35: iload_1
    //   36: iconst_1
    //   37: iadd
    //   38: putfield 39	com/jcraft/jsch/Channel$MyPipedInputStream:in	I
    //   41: aload_2
    //   42: iload_1
    //   43: iconst_0
    //   44: bastore
    //   45: aload_0
    //   46: invokevirtual 45	com/jcraft/jsch/Channel$MyPipedInputStream:read	()I
    //   49: pop
    //   50: goto -39 -> 11
    //   53: astore_2
    //   54: aload_0
    //   55: monitorexit
    //   56: aload_2
    //   57: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	58	0	this	MyPipedInputStream
    //   6	37	1	i	int
    //   28	14	2	arrayOfByte	byte[]
    //   53	4	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	7	53	finally
    //   14	41	53	finally
    //   45	50	53	finally
  }
  
  void a(int paramInt)
  {
    for (;;)
    {
      int i;
      try
      {
        i = b();
        if (i >= paramInt) {
          break label247;
        }
        int k = buffer.length - i;
        i = buffer.length;
        int j;
        if (i - k >= paramInt)
        {
          j = i;
          if (i > c) {
            j = c;
          }
          if (j - k >= paramInt) {}
        }
        else
        {
          i *= 2;
          continue;
        }
        byte[] arrayOfByte = new byte[j];
        if (out < in)
        {
          System.arraycopy(buffer, 0, arrayOfByte, 0, buffer.length);
          buffer = arrayOfByte;
          continue;
        }
        if (in >= out) {
          break label208;
        }
      }
      finally {}
      if (in != -1)
      {
        System.arraycopy(buffer, 0, localObject, 0, in);
        System.arraycopy(buffer, out, localObject, localObject.length - (buffer.length - out), buffer.length - out);
        out = (localObject.length - (buffer.length - out));
        continue;
        label208:
        if (in == out)
        {
          System.arraycopy(buffer, 0, localObject, 0, buffer.length);
          in = buffer.length;
          continue;
          label247:
          if ((buffer.length == i) && (i > b))
          {
            i /= 2;
            paramInt = i;
            if (i < b) {
              paramInt = b;
            }
            buffer = new byte[paramInt];
          }
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.jcraft.jsch.Channel.MyPipedInputStream
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
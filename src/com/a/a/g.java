package com.a.a;

import java.io.Closeable;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicBoolean;

public class g
  implements Closeable
{
  private b a;
  private int b;
  private int c;
  private AtomicBoolean d;
  private Queue<byte[]> e;
  private boolean f;
  
  public g(b paramb, int paramInt)
  {
    a = paramb;
    b = paramInt;
    e = new ConcurrentLinkedQueue();
    d = new AtomicBoolean(false);
    f = false;
  }
  
  void a()
  {
    byte[] arrayOfByte = e.b(b, c);
    a.a.write(arrayOfByte);
    a.a.flush();
  }
  
  void a(int paramInt)
  {
    c = paramInt;
  }
  
  void a(byte[] paramArrayOfByte)
  {
    synchronized (e)
    {
      e.add(paramArrayOfByte);
      e.notifyAll();
      return;
    }
  }
  
  public void a(byte[] paramArrayOfByte, boolean paramBoolean)
  {
    try
    {
      if (f) {
        throw new IOException("Stream closed");
      }
    }
    finally {}
    paramArrayOfByte = e.a(b, c, paramArrayOfByte);
    a.a.write(paramArrayOfByte);
    if (paramBoolean) {
      a.a.flush();
    }
  }
  
  void b()
  {
    d.set(true);
  }
  
  public void b(byte[] paramArrayOfByte)
  {
    a(paramArrayOfByte, true);
  }
  
  /* Error */
  void c()
  {
    // Byte code:
    //   0: aload_0
    //   1: iconst_1
    //   2: putfield 41	com/a/a/g:f	Z
    //   5: aload_0
    //   6: monitorenter
    //   7: aload_0
    //   8: invokevirtual 73	java/lang/Object:notifyAll	()V
    //   11: aload_0
    //   12: monitorexit
    //   13: aload_0
    //   14: getfield 32	com/a/a/g:e	Ljava/util/Queue;
    //   17: astore_1
    //   18: aload_1
    //   19: monitorenter
    //   20: aload_0
    //   21: getfield 32	com/a/a/g:e	Ljava/util/Queue;
    //   24: invokevirtual 73	java/lang/Object:notifyAll	()V
    //   27: aload_1
    //   28: monitorexit
    //   29: return
    //   30: astore_1
    //   31: aload_0
    //   32: monitorexit
    //   33: aload_1
    //   34: athrow
    //   35: astore_2
    //   36: aload_1
    //   37: monitorexit
    //   38: aload_2
    //   39: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	40	0	this	g
    //   30	7	1	localObject1	Object
    //   35	4	2	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   7	13	30	finally
    //   31	33	30	finally
    //   20	29	35	finally
    //   36	38	35	finally
  }
  
  public void close()
  {
    try
    {
      if (f) {
        return;
      }
      c();
      byte[] arrayOfByte = e.a(b, c);
      a.a.write(arrayOfByte);
      a.a.flush();
      return;
    }
    finally {}
  }
  
  public byte[] d()
  {
    byte[] arrayOfByte1 = null;
    Queue localQueue = e;
    byte[] arrayOfByte2;
    for (;;)
    {
      arrayOfByte2 = arrayOfByte1;
      try
      {
        if (!f)
        {
          arrayOfByte1 = (byte[])e.poll();
          arrayOfByte2 = arrayOfByte1;
          if (arrayOfByte1 == null)
          {
            e.wait();
            continue;
          }
        }
      }
      finally {}
    }
    if (f) {
      throw new IOException("Stream closed");
    }
    return arrayOfByte2;
  }
  
  public byte[] e()
  {
    byte[] arrayOfByte1 = null;
    Queue localQueue = e;
    byte[] arrayOfByte3;
    for (;;)
    {
      arrayOfByte3 = arrayOfByte1;
      try
      {
        if (!f)
        {
          arrayOfByte1 = (byte[])e.poll();
          arrayOfByte3 = arrayOfByte1;
          if (arrayOfByte1 == null)
          {
            e.wait();
            continue;
          }
        }
      }
      finally {}
    }
    if (f)
    {
      byte[] arrayOfByte2 = (byte[])e.poll();
      if (arrayOfByte2 != null) {
        return arrayOfByte2;
      }
      throw new IOException("Stream closed");
    }
    return arrayOfByte3;
  }
  
  public boolean f()
  {
    return f;
  }
}

/* Location:
 * Qualified Name:     com.a.a.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
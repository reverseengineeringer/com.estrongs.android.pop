package com.baidu.mobstat;

import android.net.LocalServerSocket;
import java.io.IOException;

public final class ct
{
  private LocalServerSocket a;
  
  public final boolean a()
  {
    try
    {
      if (a != null) {
        break label29;
      }
      a = new LocalServerSocket("com.baidu.mobstat.bplus");
      bool = true;
    }
    catch (IOException localIOException)
    {
      for (;;)
      {
        localIOException = localIOException;
        label29:
        boolean bool = false;
      }
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
    return bool;
  }
  
  /* Error */
  public final void b()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 16	com/baidu/mobstat/ct:a	Landroid/net/LocalServerSocket;
    //   6: astore_1
    //   7: aload_1
    //   8: ifnull +15 -> 23
    //   11: aload_0
    //   12: getfield 16	com/baidu/mobstat/ct:a	Landroid/net/LocalServerSocket;
    //   15: invokevirtual 27	android/net/LocalServerSocket:close	()V
    //   18: aload_0
    //   19: aconst_null
    //   20: putfield 16	com/baidu/mobstat/ct:a	Landroid/net/LocalServerSocket;
    //   23: aload_0
    //   24: monitorexit
    //   25: return
    //   26: astore_1
    //   27: aload_0
    //   28: monitorexit
    //   29: aload_1
    //   30: athrow
    //   31: astore_1
    //   32: goto -9 -> 23
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	35	0	this	ct
    //   6	2	1	localLocalServerSocket	LocalServerSocket
    //   26	4	1	localObject	Object
    //   31	1	1	localIOException	IOException
    // Exception table:
    //   from	to	target	type
    //   2	7	26	finally
    //   11	23	26	finally
    //   11	23	31	java/io/IOException
  }
}

/* Location:
 * Qualified Name:     com.baidu.mobstat.ct
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
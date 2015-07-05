package com.dropbox.client2.session;

class AbstractSession$IdleConnectionCloserThread
  extends Thread
{
  private static IdleConnectionCloserThread thread = null;
  private final int checkIntervalMs;
  private final int idleTimeoutSeconds;
  private final AbstractSession.DBClientConnManager manager;
  
  public AbstractSession$IdleConnectionCloserThread(AbstractSession.DBClientConnManager paramDBClientConnManager, int paramInt1, int paramInt2)
  {
    manager = paramDBClientConnManager;
    idleTimeoutSeconds = paramInt1;
    checkIntervalMs = (paramInt2 * 1000);
  }
  
  public static void ensureRunning(AbstractSession.DBClientConnManager paramDBClientConnManager, int paramInt1, int paramInt2)
  {
    try
    {
      if (thread == null)
      {
        thread = new IdleConnectionCloserThread(paramDBClientConnManager, paramInt1, paramInt2);
        thread.start();
      }
      return;
    }
    finally
    {
      paramDBClientConnManager = finally;
      throw paramDBClientConnManager;
    }
  }
  
  /* Error */
  public void run()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: aload_0
    //   4: getfield 26	com/dropbox/client2/session/AbstractSession$IdleConnectionCloserThread:checkIntervalMs	I
    //   7: i2l
    //   8: invokevirtual 41	java/lang/Object:wait	(J)V
    //   11: aload_0
    //   12: monitorexit
    //   13: aload_0
    //   14: getfield 22	com/dropbox/client2/session/AbstractSession$IdleConnectionCloserThread:manager	Lcom/dropbox/client2/session/AbstractSession$DBClientConnManager;
    //   17: invokevirtual 46	com/dropbox/client2/session/AbstractSession$DBClientConnManager:closeExpiredConnections	()V
    //   20: aload_0
    //   21: getfield 22	com/dropbox/client2/session/AbstractSession$IdleConnectionCloserThread:manager	Lcom/dropbox/client2/session/AbstractSession$DBClientConnManager;
    //   24: aload_0
    //   25: getfield 24	com/dropbox/client2/session/AbstractSession$IdleConnectionCloserThread:idleTimeoutSeconds	I
    //   28: i2l
    //   29: getstatic 52	java/util/concurrent/TimeUnit:SECONDS	Ljava/util/concurrent/TimeUnit;
    //   32: invokevirtual 56	com/dropbox/client2/session/AbstractSession$DBClientConnManager:closeIdleConnections	(JLjava/util/concurrent/TimeUnit;)V
    //   35: ldc 2
    //   37: monitorenter
    //   38: aload_0
    //   39: getfield 22	com/dropbox/client2/session/AbstractSession$IdleConnectionCloserThread:manager	Lcom/dropbox/client2/session/AbstractSession$DBClientConnManager;
    //   42: invokevirtual 60	com/dropbox/client2/session/AbstractSession$DBClientConnManager:getConnectionsInPool	()I
    //   45: ifne +22 -> 67
    //   48: aconst_null
    //   49: putstatic 15	com/dropbox/client2/session/AbstractSession$IdleConnectionCloserThread:thread	Lcom/dropbox/client2/session/AbstractSession$IdleConnectionCloserThread;
    //   52: ldc 2
    //   54: monitorexit
    //   55: return
    //   56: astore_1
    //   57: aload_0
    //   58: monitorexit
    //   59: aload_1
    //   60: athrow
    //   61: astore_1
    //   62: aconst_null
    //   63: putstatic 15	com/dropbox/client2/session/AbstractSession$IdleConnectionCloserThread:thread	Lcom/dropbox/client2/session/AbstractSession$IdleConnectionCloserThread;
    //   66: return
    //   67: ldc 2
    //   69: monitorexit
    //   70: goto -70 -> 0
    //   73: astore_1
    //   74: ldc 2
    //   76: monitorexit
    //   77: aload_1
    //   78: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	79	0	this	IdleConnectionCloserThread
    //   56	4	1	localObject1	Object
    //   61	1	1	localInterruptedException	InterruptedException
    //   73	5	1	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   2	13	56	finally
    //   57	59	56	finally
    //   0	2	61	java/lang/InterruptedException
    //   13	38	61	java/lang/InterruptedException
    //   59	61	61	java/lang/InterruptedException
    //   77	79	61	java/lang/InterruptedException
    //   38	55	73	finally
    //   67	70	73	finally
    //   74	77	73	finally
  }
}

/* Location:
 * Qualified Name:     com.dropbox.client2.session.AbstractSession.IdleConnectionCloserThread
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
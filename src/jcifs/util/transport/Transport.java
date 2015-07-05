package jcifs.util.transport;

import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import jcifs.util.LogStream;

public abstract class Transport
  implements Runnable
{
  static int id = 0;
  static LogStream log = LogStream.getInstance();
  String name;
  protected HashMap response_map;
  int state = 0;
  TransportException te;
  Thread thread;
  
  public Transport()
  {
    StringBuilder localStringBuilder = new StringBuilder().append("Transport");
    int i = id;
    id = i + 1;
    name = i;
    response_map = new HashMap(4);
  }
  
  private void loop()
  {
    for (;;)
    {
      if (thread == Thread.currentThread()) {
        try
        {
          Request localRequest = peekKey();
          if (localRequest == null) {
            throw new IOException("end of stream");
          }
        }
        catch (Exception localException)
        {
          Object localObject2 = localException.getMessage();
          int i;
          if ((localObject2 != null) && (((String)localObject2).equals("Read timed out")))
          {
            i = 1;
            label53:
            if (i != 0) {
              break label174;
            }
          }
          label174:
          for (boolean bool = true;; bool = false)
          {
            if (i == 0)
            {
              localObject2 = log;
              if (LogStream.level >= 3) {
                localException.printStackTrace(log);
              }
            }
            try
            {
              disconnect(bool);
            }
            catch (IOException localIOException)
            {
              localIOException.printStackTrace(log);
            }
            break;
            for (;;)
            {
              try
              {
                Object localObject1 = (Response)response_map.get(localIOException);
                if (localObject1 == null)
                {
                  localObject1 = log;
                  if (LogStream.level >= 4) {
                    log.println("Invalid key, skipping message");
                  }
                  doSkip();
                  break;
                }
              }
              finally {}
              doRecv(localResponse);
              isReceived = true;
              notifyAll();
            }
            i = 0;
            break label53;
          }
        }
      }
    }
  }
  
  public static int readn(InputStream paramInputStream, byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    int i = 0;
    for (;;)
    {
      int j;
      if (i < paramInt2)
      {
        j = paramInputStream.read(paramArrayOfByte, paramInt1 + i, paramInt2 - i);
        if (j > 0) {}
      }
      else
      {
        return i;
      }
      i += j;
    }
  }
  
  public void connect(long paramLong)
  {
    try
    {
      switch (state)
      {
      case 1: 
      case 2: 
        TransportException localTransportException = new TransportException("Invalid state: " + state);
        state = 0;
        throw localTransportException;
      }
    }
    catch (InterruptedException localInterruptedException)
    {
      state = 0;
      thread = null;
      throw new TransportException(localInterruptedException);
    }
    finally
    {
      try
      {
        if ((state != 0) && (state != 3) && (state != 4))
        {
          LogStream localLogStream = log;
          if (LogStream.level >= 1) {
            log.println("Invalid state: " + state);
          }
          state = 0;
          thread = null;
        }
        throw ((Throwable)localObject1);
      }
      finally {}
      if ((state != 0) && (state != 3) && (state != 4))
      {
        ??? = log;
        if (LogStream.level >= 1) {
          log.println("Invalid state: " + state);
        }
        state = 0;
        thread = null;
      }
    }
    label250:
    return;
    state = 0;
    throw new TransportException("Connection in error", te);
    state = 1;
    te = null;
    thread = new Thread(this, name);
    thread.setDaemon(true);
    for (;;)
    {
      synchronized (thread)
      {
        thread.start();
        thread.wait(paramLong);
        switch (state)
        {
        case 1: 
          if ((state == 0) || (state == 3) || (state == 4)) {
            break label250;
          }
          ??? = log;
          if (LogStream.level >= 1) {
            log.println("Invalid state: " + state);
          }
          state = 0;
          thread = null;
          break label250;
          state = 0;
          thread = null;
          throw new TransportException("Connection timeout");
        }
      }
      if (te != null)
      {
        state = 4;
        thread = null;
        throw te;
      }
      state = 3;
      if ((state == 0) || (state == 3) || (state == 4)) {
        break label250;
      }
      ??? = log;
      if (LogStream.level >= 1) {
        log.println("Invalid state: " + state);
      }
      state = 0;
      thread = null;
      break label250;
      break;
    }
  }
  
  public void disconnect(boolean paramBoolean)
  {
    Object localObject5 = null;
    Object localObject4 = null;
    Object localObject1 = localObject5;
    for (;;)
    {
      try
      {
        switch (state)
        {
        case 1: 
          localObject1 = log;
          if (LogStream.level >= 1) {
            log.println("Invalid state: " + state);
          }
          thread = null;
          state = 0;
          localObject1 = localObject4;
          if (localObject1 == null) {
            break label157;
          }
          throw ((Throwable)localObject1);
        }
      }
      finally {}
      paramBoolean = true;
      int i = response_map.size();
      Object localObject3;
      if (i != 0)
      {
        localObject3 = localObject4;
        if (!paramBoolean) {}
      }
      else
      {
        try
        {
          doDisconnect(paramBoolean);
          localObject3 = localObject5;
        }
        catch (IOException localIOException)
        {
          for (;;) {}
        }
        thread = null;
        state = 0;
        continue;
        label157:
        return;
      }
    }
  }
  
  protected abstract void doConnect();
  
  protected abstract void doDisconnect(boolean paramBoolean);
  
  protected abstract void doRecv(Response paramResponse);
  
  protected abstract void doSend(Request paramRequest);
  
  protected abstract void doSkip();
  
  protected abstract void makeKey(Request paramRequest);
  
  protected abstract Request peekKey();
  
  /* Error */
  public void run()
  {
    // Byte code:
    //   0: invokestatic 75	java/lang/Thread:currentThread	()Ljava/lang/Thread;
    //   3: astore_1
    //   4: aload_0
    //   5: invokevirtual 187	jcifs/util/transport/Transport:doConnect	()V
    //   8: aload_1
    //   9: monitorenter
    //   10: aload_1
    //   11: aload_0
    //   12: getfield 69	jcifs/util/transport/Transport:thread	Ljava/lang/Thread;
    //   15: if_acmpeq +33 -> 48
    //   18: iconst_0
    //   19: ifeq +26 -> 45
    //   22: getstatic 31	jcifs/util/transport/Transport:log	Ljcifs/util/LogStream;
    //   25: astore_2
    //   26: getstatic 98	jcifs/util/LogStream:level	I
    //   29: iconst_2
    //   30: if_icmplt +15 -> 45
    //   33: getstatic 31	jcifs/util/transport/Transport:log	Ljcifs/util/LogStream;
    //   36: astore_2
    //   37: new 189	java/lang/NullPointerException
    //   40: dup
    //   41: invokespecial 190	java/lang/NullPointerException:<init>	()V
    //   44: athrow
    //   45: aload_1
    //   46: monitorexit
    //   47: return
    //   48: iconst_0
    //   49: ifeq +15 -> 64
    //   52: aload_0
    //   53: new 146	jcifs/util/transport/TransportException
    //   56: dup
    //   57: aconst_null
    //   58: invokespecial 152	jcifs/util/transport/TransportException:<init>	(Ljava/lang/Throwable;)V
    //   61: putfield 156	jcifs/util/transport/Transport:te	Ljcifs/util/transport/TransportException;
    //   64: aload_0
    //   65: iconst_2
    //   66: putfield 37	jcifs/util/transport/Transport:state	I
    //   69: aload_1
    //   70: invokevirtual 193	java/lang/Object:notify	()V
    //   73: aload_1
    //   74: monitorexit
    //   75: aload_0
    //   76: invokespecial 195	jcifs/util/transport/Transport:loop	()V
    //   79: return
    //   80: astore_2
    //   81: aload_1
    //   82: monitorexit
    //   83: aload_2
    //   84: athrow
    //   85: astore_2
    //   86: aload_1
    //   87: monitorenter
    //   88: aload_1
    //   89: aload_0
    //   90: getfield 69	jcifs/util/transport/Transport:thread	Ljava/lang/Thread;
    //   93: if_acmpeq +33 -> 126
    //   96: aload_2
    //   97: ifnull +21 -> 118
    //   100: getstatic 31	jcifs/util/transport/Transport:log	Ljcifs/util/LogStream;
    //   103: astore_3
    //   104: getstatic 98	jcifs/util/LogStream:level	I
    //   107: iconst_2
    //   108: if_icmplt +10 -> 118
    //   111: aload_2
    //   112: getstatic 31	jcifs/util/transport/Transport:log	Ljcifs/util/LogStream;
    //   115: invokevirtual 102	java/lang/Exception:printStackTrace	(Ljava/io/PrintStream;)V
    //   118: aload_1
    //   119: monitorexit
    //   120: return
    //   121: astore_2
    //   122: aload_1
    //   123: monitorexit
    //   124: aload_2
    //   125: athrow
    //   126: aload_2
    //   127: ifnull +15 -> 142
    //   130: aload_0
    //   131: new 146	jcifs/util/transport/TransportException
    //   134: dup
    //   135: aload_2
    //   136: invokespecial 152	jcifs/util/transport/TransportException:<init>	(Ljava/lang/Throwable;)V
    //   139: putfield 156	jcifs/util/transport/Transport:te	Ljcifs/util/transport/TransportException;
    //   142: aload_0
    //   143: iconst_2
    //   144: putfield 37	jcifs/util/transport/Transport:state	I
    //   147: aload_1
    //   148: invokevirtual 193	java/lang/Object:notify	()V
    //   151: aload_1
    //   152: monitorexit
    //   153: return
    //   154: astore_2
    //   155: aload_1
    //   156: monitorenter
    //   157: aload_1
    //   158: aload_0
    //   159: getfield 69	jcifs/util/transport/Transport:thread	Ljava/lang/Thread;
    //   162: if_acmpeq +38 -> 200
    //   165: iconst_0
    //   166: ifeq +26 -> 192
    //   169: getstatic 31	jcifs/util/transport/Transport:log	Ljcifs/util/LogStream;
    //   172: astore_2
    //   173: getstatic 98	jcifs/util/LogStream:level	I
    //   176: iconst_2
    //   177: if_icmplt +15 -> 192
    //   180: getstatic 31	jcifs/util/transport/Transport:log	Ljcifs/util/LogStream;
    //   183: astore_2
    //   184: new 189	java/lang/NullPointerException
    //   187: dup
    //   188: invokespecial 190	java/lang/NullPointerException:<init>	()V
    //   191: athrow
    //   192: aload_1
    //   193: monitorexit
    //   194: return
    //   195: astore_2
    //   196: aload_1
    //   197: monitorexit
    //   198: aload_2
    //   199: athrow
    //   200: iconst_0
    //   201: ifeq +15 -> 216
    //   204: aload_0
    //   205: new 146	jcifs/util/transport/TransportException
    //   208: dup
    //   209: aconst_null
    //   210: invokespecial 152	jcifs/util/transport/TransportException:<init>	(Ljava/lang/Throwable;)V
    //   213: putfield 156	jcifs/util/transport/Transport:te	Ljcifs/util/transport/TransportException;
    //   216: aload_0
    //   217: iconst_2
    //   218: putfield 37	jcifs/util/transport/Transport:state	I
    //   221: aload_1
    //   222: invokevirtual 193	java/lang/Object:notify	()V
    //   225: aload_1
    //   226: monitorexit
    //   227: aload_2
    //   228: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	229	0	this	Transport
    //   3	223	1	localThread	Thread
    //   25	12	2	localLogStream1	LogStream
    //   80	4	2	localObject1	Object
    //   85	27	2	localException	Exception
    //   121	15	2	localThrowable	Throwable
    //   154	1	2	localObject2	Object
    //   172	12	2	localLogStream2	LogStream
    //   195	33	2	localObject3	Object
    //   103	1	3	localLogStream3	LogStream
    // Exception table:
    //   from	to	target	type
    //   10	18	80	finally
    //   22	45	80	finally
    //   45	47	80	finally
    //   52	64	80	finally
    //   64	75	80	finally
    //   81	83	80	finally
    //   4	8	85	java/lang/Exception
    //   88	96	121	finally
    //   100	118	121	finally
    //   118	120	121	finally
    //   122	124	121	finally
    //   130	142	121	finally
    //   142	153	121	finally
    //   4	8	154	finally
    //   157	165	195	finally
    //   169	192	195	finally
    //   192	194	195	finally
    //   196	198	195	finally
    //   204	216	195	finally
    //   216	227	195	finally
  }
  
  /* Error */
  public void sendrecv(Request paramRequest, Response paramResponse, long paramLong)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: aload_1
    //   4: invokevirtual 199	jcifs/util/transport/Transport:makeKey	(Ljcifs/util/transport/Request;)V
    //   7: aload_2
    //   8: iconst_0
    //   9: putfield 129	jcifs/util/transport/Response:isReceived	Z
    //   12: aload_0
    //   13: getfield 62	jcifs/util/transport/Transport:response_map	Ljava/util/HashMap;
    //   16: aload_1
    //   17: aload_2
    //   18: invokevirtual 203	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   21: pop
    //   22: aload_0
    //   23: aload_1
    //   24: invokevirtual 205	jcifs/util/transport/Transport:doSend	(Ljcifs/util/transport/Request;)V
    //   27: aload_2
    //   28: invokestatic 211	java/lang/System:currentTimeMillis	()J
    //   31: lload_3
    //   32: ladd
    //   33: putfield 215	jcifs/util/transport/Response:expiration	J
    //   36: aload_2
    //   37: getfield 129	jcifs/util/transport/Response:isReceived	Z
    //   40: ifne +106 -> 146
    //   43: aload_0
    //   44: lload_3
    //   45: invokevirtual 171	java/lang/Object:wait	(J)V
    //   48: aload_2
    //   49: getfield 215	jcifs/util/transport/Response:expiration	J
    //   52: invokestatic 211	java/lang/System:currentTimeMillis	()J
    //   55: lsub
    //   56: lstore 5
    //   58: lload 5
    //   60: lstore_3
    //   61: lload 5
    //   63: lconst_0
    //   64: lcmp
    //   65: ifgt -29 -> 36
    //   68: new 146	jcifs/util/transport/TransportException
    //   71: dup
    //   72: new 39	java/lang/StringBuilder
    //   75: dup
    //   76: invokespecial 40	java/lang/StringBuilder:<init>	()V
    //   79: aload_0
    //   80: getfield 55	jcifs/util/transport/Transport:name	Ljava/lang/String;
    //   83: invokevirtual 46	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   86: ldc -39
    //   88: invokevirtual 46	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   91: aload_1
    //   92: invokevirtual 220	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   95: invokevirtual 53	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   98: invokespecial 149	jcifs/util/transport/TransportException:<init>	(Ljava/lang/String;)V
    //   101: athrow
    //   102: astore_2
    //   103: getstatic 31	jcifs/util/transport/Transport:log	Ljcifs/util/LogStream;
    //   106: astore 7
    //   108: getstatic 98	jcifs/util/LogStream:level	I
    //   111: iconst_2
    //   112: if_icmple +10 -> 122
    //   115: aload_2
    //   116: getstatic 31	jcifs/util/transport/Transport:log	Ljcifs/util/LogStream;
    //   119: invokevirtual 107	java/io/IOException:printStackTrace	(Ljava/io/PrintStream;)V
    //   122: aload_0
    //   123: iconst_1
    //   124: invokevirtual 106	jcifs/util/transport/Transport:disconnect	(Z)V
    //   127: aload_2
    //   128: athrow
    //   129: astore_2
    //   130: aload_0
    //   131: getfield 62	jcifs/util/transport/Transport:response_map	Ljava/util/HashMap;
    //   134: aload_1
    //   135: invokevirtual 223	java/util/HashMap:remove	(Ljava/lang/Object;)Ljava/lang/Object;
    //   138: pop
    //   139: aload_2
    //   140: athrow
    //   141: astore_1
    //   142: aload_0
    //   143: monitorexit
    //   144: aload_1
    //   145: athrow
    //   146: aload_0
    //   147: getfield 62	jcifs/util/transport/Transport:response_map	Ljava/util/HashMap;
    //   150: aload_1
    //   151: invokevirtual 223	java/util/HashMap:remove	(Ljava/lang/Object;)Ljava/lang/Object;
    //   154: pop
    //   155: aload_0
    //   156: monitorexit
    //   157: return
    //   158: astore 7
    //   160: aload 7
    //   162: getstatic 31	jcifs/util/transport/Transport:log	Ljcifs/util/LogStream;
    //   165: invokevirtual 107	java/io/IOException:printStackTrace	(Ljava/io/PrintStream;)V
    //   168: goto -41 -> 127
    //   171: astore_2
    //   172: new 146	jcifs/util/transport/TransportException
    //   175: dup
    //   176: aload_2
    //   177: invokespecial 152	jcifs/util/transport/TransportException:<init>	(Ljava/lang/Throwable;)V
    //   180: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	181	0	this	Transport
    //   0	181	1	paramRequest	Request
    //   0	181	2	paramResponse	Response
    //   0	181	3	paramLong	long
    //   56	6	5	l	long
    //   106	1	7	localLogStream	LogStream
    //   158	3	7	localIOException	IOException
    // Exception table:
    //   from	to	target	type
    //   12	36	102	java/io/IOException
    //   36	58	102	java/io/IOException
    //   68	102	102	java/io/IOException
    //   12	36	129	finally
    //   36	58	129	finally
    //   68	102	129	finally
    //   103	122	129	finally
    //   122	127	129	finally
    //   127	129	129	finally
    //   160	168	129	finally
    //   172	181	129	finally
    //   2	12	141	finally
    //   130	141	141	finally
    //   146	155	141	finally
    //   122	127	158	java/io/IOException
    //   12	36	171	java/lang/InterruptedException
    //   36	58	171	java/lang/InterruptedException
    //   68	102	171	java/lang/InterruptedException
  }
  
  public String toString()
  {
    return name;
  }
}

/* Location:
 * Qualified Name:     jcifs.util.transport.Transport
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
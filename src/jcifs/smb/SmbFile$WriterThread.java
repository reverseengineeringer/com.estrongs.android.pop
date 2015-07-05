package jcifs.smb;

class SmbFile$WriterThread
  extends Thread
{
  byte[] b;
  SmbFile dest;
  SmbException e = null;
  int n;
  long off;
  boolean ready;
  SmbComWrite req;
  SmbComWriteAndX reqx;
  ServerMessageBlock resp;
  boolean useNTSmbs;
  
  SmbFile$WriterThread(SmbFile paramSmbFile)
  {
    super("JCIFS-WriterThread");
    useNTSmbs = tree.session.transport.hasCapability(16);
    if (useNTSmbs) {
      reqx = new SmbComWriteAndX();
    }
    for (resp = new SmbComWriteAndXResponse();; resp = new SmbComWriteResponse())
    {
      ready = false;
      return;
      req = new SmbComWrite();
    }
  }
  
  /* Error */
  public void run()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: invokevirtual 94	java/lang/Object:notify	()V
    //   6: aload_0
    //   7: iconst_1
    //   8: putfield 75	jcifs/smb/SmbFile$WriterThread:ready	Z
    //   11: aload_0
    //   12: getfield 75	jcifs/smb/SmbFile$WriterThread:ready	Z
    //   15: ifeq +23 -> 38
    //   18: aload_0
    //   19: invokevirtual 97	java/lang/Object:wait	()V
    //   22: goto -11 -> 11
    //   25: astore_2
    //   26: aload_0
    //   27: aload_2
    //   28: putfield 35	jcifs/smb/SmbFile$WriterThread:e	Ljcifs/smb/SmbException;
    //   31: aload_0
    //   32: invokevirtual 94	java/lang/Object:notify	()V
    //   35: aload_0
    //   36: monitorexit
    //   37: return
    //   38: aload_0
    //   39: getfield 99	jcifs/smb/SmbFile$WriterThread:n	I
    //   42: istore_1
    //   43: iload_1
    //   44: iconst_m1
    //   45: if_icmpne +11 -> 56
    //   48: aload_0
    //   49: monitorexit
    //   50: return
    //   51: astore_2
    //   52: aload_0
    //   53: monitorexit
    //   54: aload_2
    //   55: athrow
    //   56: aload_0
    //   57: getfield 61	jcifs/smb/SmbFile$WriterThread:useNTSmbs	Z
    //   60: ifeq +70 -> 130
    //   63: aload_0
    //   64: getfield 68	jcifs/smb/SmbFile$WriterThread:reqx	Ljcifs/smb/SmbComWriteAndX;
    //   67: aload_0
    //   68: getfield 101	jcifs/smb/SmbFile$WriterThread:dest	Ljcifs/smb/SmbFile;
    //   71: getfield 104	jcifs/smb/SmbFile:fid	I
    //   74: aload_0
    //   75: getfield 106	jcifs/smb/SmbFile$WriterThread:off	J
    //   78: aload_0
    //   79: getfield 99	jcifs/smb/SmbFile$WriterThread:n	I
    //   82: aload_0
    //   83: getfield 108	jcifs/smb/SmbFile$WriterThread:b	[B
    //   86: iconst_0
    //   87: aload_0
    //   88: getfield 99	jcifs/smb/SmbFile$WriterThread:n	I
    //   91: invokevirtual 112	jcifs/smb/SmbComWriteAndX:setParam	(IJI[BII)V
    //   94: aload_0
    //   95: getfield 101	jcifs/smb/SmbFile$WriterThread:dest	Ljcifs/smb/SmbFile;
    //   98: aload_0
    //   99: getfield 68	jcifs/smb/SmbFile$WriterThread:reqx	Ljcifs/smb/SmbComWriteAndX;
    //   102: aload_0
    //   103: getfield 73	jcifs/smb/SmbFile$WriterThread:resp	Ljcifs/smb/ServerMessageBlock;
    //   106: invokevirtual 116	jcifs/smb/SmbFile:send	(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    //   109: goto -107 -> 2
    //   112: astore_2
    //   113: aload_0
    //   114: new 87	jcifs/smb/SmbException
    //   117: dup
    //   118: ldc 118
    //   120: aload_2
    //   121: invokespecial 121	jcifs/smb/SmbException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   124: putfield 35	jcifs/smb/SmbFile$WriterThread:e	Ljcifs/smb/SmbException;
    //   127: goto -96 -> 31
    //   130: aload_0
    //   131: getfield 80	jcifs/smb/SmbFile$WriterThread:req	Ljcifs/smb/SmbComWrite;
    //   134: aload_0
    //   135: getfield 101	jcifs/smb/SmbFile$WriterThread:dest	Ljcifs/smb/SmbFile;
    //   138: getfield 104	jcifs/smb/SmbFile:fid	I
    //   141: aload_0
    //   142: getfield 106	jcifs/smb/SmbFile$WriterThread:off	J
    //   145: aload_0
    //   146: getfield 99	jcifs/smb/SmbFile$WriterThread:n	I
    //   149: aload_0
    //   150: getfield 108	jcifs/smb/SmbFile$WriterThread:b	[B
    //   153: iconst_0
    //   154: aload_0
    //   155: getfield 99	jcifs/smb/SmbFile$WriterThread:n	I
    //   158: invokevirtual 122	jcifs/smb/SmbComWrite:setParam	(IJI[BII)V
    //   161: aload_0
    //   162: getfield 101	jcifs/smb/SmbFile$WriterThread:dest	Ljcifs/smb/SmbFile;
    //   165: aload_0
    //   166: getfield 80	jcifs/smb/SmbFile$WriterThread:req	Ljcifs/smb/SmbComWrite;
    //   169: aload_0
    //   170: getfield 73	jcifs/smb/SmbFile$WriterThread:resp	Ljcifs/smb/ServerMessageBlock;
    //   173: invokevirtual 116	jcifs/smb/SmbFile:send	(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    //   176: goto -174 -> 2
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	179	0	this	WriterThread
    //   42	4	1	i	int
    //   25	3	2	localSmbException	SmbException
    //   51	4	2	localObject	Object
    //   112	9	2	localException	Exception
    // Exception table:
    //   from	to	target	type
    //   2	11	25	jcifs/smb/SmbException
    //   11	22	25	jcifs/smb/SmbException
    //   38	43	25	jcifs/smb/SmbException
    //   56	109	25	jcifs/smb/SmbException
    //   130	176	25	jcifs/smb/SmbException
    //   2	11	51	finally
    //   11	22	51	finally
    //   26	31	51	finally
    //   31	37	51	finally
    //   38	43	51	finally
    //   48	50	51	finally
    //   52	54	51	finally
    //   56	109	51	finally
    //   113	127	51	finally
    //   130	176	51	finally
    //   2	11	112	java/lang/Exception
    //   11	22	112	java/lang/Exception
    //   38	43	112	java/lang/Exception
    //   56	109	112	java/lang/Exception
    //   130	176	112	java/lang/Exception
  }
  
  void write(byte[] paramArrayOfByte, int paramInt, SmbFile paramSmbFile, long paramLong)
  {
    try
    {
      b = paramArrayOfByte;
      n = paramInt;
      dest = paramSmbFile;
      off = paramLong;
      ready = false;
      notify();
      return;
    }
    finally
    {
      paramArrayOfByte = finally;
      throw paramArrayOfByte;
    }
  }
}

/* Location:
 * Qualified Name:     jcifs.smb.SmbFile.WriterThread
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
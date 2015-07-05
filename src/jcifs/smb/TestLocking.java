package jcifs.smb;

import java.io.PrintStream;

public class TestLocking
  implements Runnable
{
  long delay = 100L;
  long ltime = 0L;
  int numComplete = 0;
  int numIter = 1;
  int numThreads = 1;
  String url = null;
  
  public static void main(String[] paramArrayOfString)
  {
    int j = 0;
    if (paramArrayOfString.length < 1)
    {
      System.err.println("usage: TestLocking [-t <numThreads>] [-i <numIter>] [-d <delay>] url");
      System.exit(1);
    }
    TestLocking localTestLocking = new TestLocking();
    ltime = System.currentTimeMillis();
    int i = 0;
    if (i < paramArrayOfString.length)
    {
      if (paramArrayOfString[i].equals("-t"))
      {
        i += 1;
        numThreads = Integer.parseInt(paramArrayOfString[i]);
      }
      for (;;)
      {
        i += 1;
        break;
        if (paramArrayOfString[i].equals("-i"))
        {
          i += 1;
          numIter = Integer.parseInt(paramArrayOfString[i]);
        }
        else if (paramArrayOfString[i].equals("-d"))
        {
          i += 1;
          delay = Long.parseLong(paramArrayOfString[i]);
        }
        else
        {
          url = paramArrayOfString[i];
        }
      }
    }
    paramArrayOfString = new Thread[numThreads];
    i = 0;
    while (i < numThreads)
    {
      paramArrayOfString[i] = new Thread(localTestLocking);
      System.out.print(paramArrayOfString[i].getName());
      paramArrayOfString[i].start();
      i += 1;
    }
    i = j;
    if (numComplete < numThreads) {}
    for (;;)
    {
      try
      {
        label219:
        l1 = ltime + delay;
        long l2 = System.currentTimeMillis();
        if (l1 <= l2) {
          break label366;
        }
        l1 -= l2;
        if (l1 > 2L) {
          System.out.println("delay=" + l1);
        }
        Thread.sleep(l1);
        if (l1 > 2L) {
          break label219;
        }
        try
        {
          localTestLocking.notifyAll();
          break;
        }
        finally {}
        if (i >= numThreads) {
          break label359;
        }
      }
      finally {}
      for (;;)
      {
        paramArrayOfString[i].join();
        System.out.print(paramArrayOfString[i].getName());
        i += 1;
      }
      label359:
      System.out.println();
      return;
      label366:
      long l1 = 2L;
    }
  }
  
  /* Error */
  public void run()
  {
    // Byte code:
    //   0: new 137	jcifs/smb/SmbFile
    //   3: dup
    //   4: aload_0
    //   5: getfield 29	jcifs/smb/TestLocking:url	Ljava/lang/String;
    //   8: invokespecial 139	jcifs/smb/SmbFile:<init>	(Ljava/lang/String;)V
    //   11: astore 4
    //   13: new 137	jcifs/smb/SmbFile
    //   16: dup
    //   17: aload 4
    //   19: invokevirtual 142	jcifs/smb/SmbFile:getParent	()Ljava/lang/String;
    //   22: invokespecial 139	jcifs/smb/SmbFile:<init>	(Ljava/lang/String;)V
    //   25: astore 5
    //   27: sipush 1024
    //   30: newarray <illegal type>
    //   32: astore 6
    //   34: iconst_0
    //   35: istore_3
    //   36: iload_3
    //   37: aload_0
    //   38: getfield 23	jcifs/smb/TestLocking:numIter	I
    //   41: if_icmpge +147 -> 188
    //   44: aload_0
    //   45: monitorenter
    //   46: aload_0
    //   47: invokestatic 59	java/lang/System:currentTimeMillis	()J
    //   50: putfield 33	jcifs/smb/TestLocking:ltime	J
    //   53: aload_0
    //   54: invokevirtual 145	java/lang/Object:wait	()V
    //   57: aload_0
    //   58: monitorexit
    //   59: invokestatic 151	java/lang/Math:random	()D
    //   62: dstore_1
    //   63: dload_1
    //   64: ldc2_w 152
    //   67: dcmpg
    //   68: ifge +41 -> 109
    //   71: aload 4
    //   73: invokevirtual 157	jcifs/smb/SmbFile:exists	()Z
    //   76: pop
    //   77: iload_3
    //   78: iconst_1
    //   79: iadd
    //   80: istore_3
    //   81: goto -45 -> 36
    //   84: astore 4
    //   86: aload_0
    //   87: monitorexit
    //   88: aload 4
    //   90: athrow
    //   91: astore 4
    //   93: aload 4
    //   95: invokevirtual 160	java/lang/Exception:printStackTrace	()V
    //   98: aload_0
    //   99: aload_0
    //   100: getfield 31	jcifs/smb/TestLocking:numComplete	I
    //   103: iconst_1
    //   104: iadd
    //   105: putfield 31	jcifs/smb/TestLocking:numComplete	I
    //   108: return
    //   109: dload_1
    //   110: ldc2_w 161
    //   113: dcmpg
    //   114: ifge +43 -> 157
    //   117: aload 5
    //   119: invokevirtual 166	jcifs/smb/SmbFile:listFiles	()[Ljcifs/smb/SmbFile;
    //   122: pop
    //   123: goto -46 -> 77
    //   126: astore 7
    //   128: getstatic 42	java/lang/System:err	Ljava/io/PrintStream;
    //   131: aload 7
    //   133: invokevirtual 169	java/io/IOException:getMessage	()Ljava/lang/String;
    //   136: invokevirtual 50	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   139: goto -62 -> 77
    //   142: astore 4
    //   144: aload_0
    //   145: aload_0
    //   146: getfield 31	jcifs/smb/TestLocking:numComplete	I
    //   149: iconst_1
    //   150: iadd
    //   151: putfield 31	jcifs/smb/TestLocking:numComplete	I
    //   154: aload 4
    //   156: athrow
    //   157: dload_1
    //   158: dconst_1
    //   159: dcmpg
    //   160: ifge -83 -> 77
    //   163: aload 4
    //   165: invokevirtual 173	jcifs/smb/SmbFile:getInputStream	()Ljava/io/InputStream;
    //   168: astore 7
    //   170: aload 7
    //   172: aload 6
    //   174: invokevirtual 179	java/io/InputStream:read	([B)I
    //   177: ifgt -7 -> 170
    //   180: aload 7
    //   182: invokevirtual 182	java/io/InputStream:close	()V
    //   185: goto -108 -> 77
    //   188: aload_0
    //   189: aload_0
    //   190: getfield 31	jcifs/smb/TestLocking:numComplete	I
    //   193: iconst_1
    //   194: iadd
    //   195: putfield 31	jcifs/smb/TestLocking:numComplete	I
    //   198: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	199	0	this	TestLocking
    //   62	96	1	d	double
    //   35	46	3	i	int
    //   11	61	4	localSmbFile1	SmbFile
    //   84	5	4	localObject1	Object
    //   91	3	4	localException	Exception
    //   142	22	4	localObject2	Object
    //   25	93	5	localSmbFile2	SmbFile
    //   32	141	6	arrayOfByte	byte[]
    //   126	6	7	localIOException	java.io.IOException
    //   168	13	7	localInputStream	java.io.InputStream
    // Exception table:
    //   from	to	target	type
    //   46	59	84	finally
    //   86	88	84	finally
    //   0	34	91	java/lang/Exception
    //   36	46	91	java/lang/Exception
    //   59	63	91	java/lang/Exception
    //   71	77	91	java/lang/Exception
    //   88	91	91	java/lang/Exception
    //   117	123	91	java/lang/Exception
    //   128	139	91	java/lang/Exception
    //   163	170	91	java/lang/Exception
    //   170	185	91	java/lang/Exception
    //   59	63	126	java/io/IOException
    //   71	77	126	java/io/IOException
    //   117	123	126	java/io/IOException
    //   163	170	126	java/io/IOException
    //   170	185	126	java/io/IOException
    //   0	34	142	finally
    //   36	46	142	finally
    //   59	63	142	finally
    //   71	77	142	finally
    //   88	91	142	finally
    //   93	98	142	finally
    //   117	123	142	finally
    //   128	139	142	finally
    //   163	170	142	finally
    //   170	185	142	finally
  }
}

/* Location:
 * Qualified Name:     jcifs.smb.TestLocking
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package jcifs;

import java.net.InetAddress;
import java.net.UnknownHostException;
import jcifs.netbios.NbtAddress;

class UniAddress$QueryThread
  extends Thread
{
  NbtAddress ans = null;
  String host;
  String scope;
  UniAddress.Sem sem;
  InetAddress svr;
  int type;
  UnknownHostException uhe;
  
  UniAddress$QueryThread(UniAddress.Sem paramSem, String paramString1, int paramInt, String paramString2, InetAddress paramInetAddress)
  {
    super("JCIFS-QueryThread: " + paramString1);
    sem = paramSem;
    host = paramString1;
    type = paramInt;
    scope = paramString2;
    svr = paramInetAddress;
  }
  
  /* Error */
  public void run()
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_0
    //   2: getfield 43	jcifs/UniAddress$QueryThread:host	Ljava/lang/String;
    //   5: aload_0
    //   6: getfield 45	jcifs/UniAddress$QueryThread:type	I
    //   9: aload_0
    //   10: getfield 47	jcifs/UniAddress$QueryThread:scope	Ljava/lang/String;
    //   13: aload_0
    //   14: getfield 49	jcifs/UniAddress$QueryThread:svr	Ljava/net/InetAddress;
    //   17: invokestatic 61	jcifs/netbios/NbtAddress:getByName	(Ljava/lang/String;ILjava/lang/String;Ljava/net/InetAddress;)Ljcifs/netbios/NbtAddress;
    //   20: putfield 39	jcifs/UniAddress$QueryThread:ans	Ljcifs/netbios/NbtAddress;
    //   23: aload_0
    //   24: getfield 41	jcifs/UniAddress$QueryThread:sem	Ljcifs/UniAddress$Sem;
    //   27: astore_1
    //   28: aload_1
    //   29: monitorenter
    //   30: aload_0
    //   31: getfield 41	jcifs/UniAddress$QueryThread:sem	Ljcifs/UniAddress$Sem;
    //   34: astore_2
    //   35: aload_2
    //   36: aload_2
    //   37: getfield 66	jcifs/UniAddress$Sem:count	I
    //   40: iconst_1
    //   41: isub
    //   42: putfield 66	jcifs/UniAddress$Sem:count	I
    //   45: aload_0
    //   46: getfield 41	jcifs/UniAddress$QueryThread:sem	Ljcifs/UniAddress$Sem;
    //   49: invokevirtual 71	java/lang/Object:notify	()V
    //   52: aload_1
    //   53: monitorexit
    //   54: return
    //   55: astore_2
    //   56: aload_1
    //   57: monitorexit
    //   58: aload_2
    //   59: athrow
    //   60: astore_1
    //   61: aload_0
    //   62: aload_1
    //   63: putfield 73	jcifs/UniAddress$QueryThread:uhe	Ljava/net/UnknownHostException;
    //   66: aload_0
    //   67: getfield 41	jcifs/UniAddress$QueryThread:sem	Ljcifs/UniAddress$Sem;
    //   70: astore_1
    //   71: aload_1
    //   72: monitorenter
    //   73: aload_0
    //   74: getfield 41	jcifs/UniAddress$QueryThread:sem	Ljcifs/UniAddress$Sem;
    //   77: astore_2
    //   78: aload_2
    //   79: aload_2
    //   80: getfield 66	jcifs/UniAddress$Sem:count	I
    //   83: iconst_1
    //   84: isub
    //   85: putfield 66	jcifs/UniAddress$Sem:count	I
    //   88: aload_0
    //   89: getfield 41	jcifs/UniAddress$QueryThread:sem	Ljcifs/UniAddress$Sem;
    //   92: invokevirtual 71	java/lang/Object:notify	()V
    //   95: aload_1
    //   96: monitorexit
    //   97: return
    //   98: astore_2
    //   99: aload_1
    //   100: monitorexit
    //   101: aload_2
    //   102: athrow
    //   103: astore_1
    //   104: aload_0
    //   105: new 53	java/net/UnknownHostException
    //   108: dup
    //   109: aload_1
    //   110: invokevirtual 76	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   113: invokespecial 77	java/net/UnknownHostException:<init>	(Ljava/lang/String;)V
    //   116: putfield 73	jcifs/UniAddress$QueryThread:uhe	Ljava/net/UnknownHostException;
    //   119: aload_0
    //   120: getfield 41	jcifs/UniAddress$QueryThread:sem	Ljcifs/UniAddress$Sem;
    //   123: astore_1
    //   124: aload_1
    //   125: monitorenter
    //   126: aload_0
    //   127: getfield 41	jcifs/UniAddress$QueryThread:sem	Ljcifs/UniAddress$Sem;
    //   130: astore_2
    //   131: aload_2
    //   132: aload_2
    //   133: getfield 66	jcifs/UniAddress$Sem:count	I
    //   136: iconst_1
    //   137: isub
    //   138: putfield 66	jcifs/UniAddress$Sem:count	I
    //   141: aload_0
    //   142: getfield 41	jcifs/UniAddress$QueryThread:sem	Ljcifs/UniAddress$Sem;
    //   145: invokevirtual 71	java/lang/Object:notify	()V
    //   148: aload_1
    //   149: monitorexit
    //   150: return
    //   151: astore_2
    //   152: aload_1
    //   153: monitorexit
    //   154: aload_2
    //   155: athrow
    //   156: astore_2
    //   157: aload_0
    //   158: getfield 41	jcifs/UniAddress$QueryThread:sem	Ljcifs/UniAddress$Sem;
    //   161: astore_1
    //   162: aload_1
    //   163: monitorenter
    //   164: aload_0
    //   165: getfield 41	jcifs/UniAddress$QueryThread:sem	Ljcifs/UniAddress$Sem;
    //   168: astore_3
    //   169: aload_3
    //   170: aload_3
    //   171: getfield 66	jcifs/UniAddress$Sem:count	I
    //   174: iconst_1
    //   175: isub
    //   176: putfield 66	jcifs/UniAddress$Sem:count	I
    //   179: aload_0
    //   180: getfield 41	jcifs/UniAddress$QueryThread:sem	Ljcifs/UniAddress$Sem;
    //   183: invokevirtual 71	java/lang/Object:notify	()V
    //   186: aload_1
    //   187: monitorexit
    //   188: aload_2
    //   189: athrow
    //   190: astore_2
    //   191: aload_1
    //   192: monitorexit
    //   193: aload_2
    //   194: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	195	0	this	QueryThread
    //   60	3	1	localUnknownHostException	UnknownHostException
    //   103	7	1	localException	Exception
    //   34	3	2	localSem4	UniAddress.Sem
    //   55	4	2	localObject1	Object
    //   77	3	2	localSem5	UniAddress.Sem
    //   98	4	2	localObject2	Object
    //   130	3	2	localSem6	UniAddress.Sem
    //   151	4	2	localObject3	Object
    //   156	33	2	localObject4	Object
    //   190	4	2	localObject5	Object
    //   168	3	3	localSem7	UniAddress.Sem
    // Exception table:
    //   from	to	target	type
    //   30	54	55	finally
    //   56	58	55	finally
    //   0	23	60	java/net/UnknownHostException
    //   73	97	98	finally
    //   99	101	98	finally
    //   0	23	103	java/lang/Exception
    //   126	150	151	finally
    //   152	154	151	finally
    //   0	23	156	finally
    //   61	66	156	finally
    //   104	119	156	finally
    //   164	188	190	finally
    //   191	193	190	finally
  }
}

/* Location:
 * Qualified Name:     jcifs.UniAddress.QueryThread
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
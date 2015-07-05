package jcifs.netbios;

import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.HashMap;
import java.util.StringTokenizer;
import jcifs.Config;
import jcifs.util.LogStream;

class NameServiceClient
  implements Runnable
{
  static final int DEFAULT_RCV_BUF_SIZE = 576;
  static final int DEFAULT_RETRY_COUNT = 2;
  static final int DEFAULT_RETRY_TIMEOUT = 3000;
  static final int DEFAULT_SND_BUF_SIZE = 576;
  static final int DEFAULT_SO_TIMEOUT = 5000;
  private static final InetAddress LADDR = Config.getInetAddress("jcifs.netbios.laddr", null);
  private static final int LPORT;
  static final int NAME_SERVICE_UDP_PORT = 137;
  private static final int RCV_BUF_SIZE;
  static final int RESOLVER_BCAST = 2;
  static final int RESOLVER_LMHOSTS = 1;
  static final int RESOLVER_WINS = 3;
  private static final int RETRY_COUNT;
  private static final int RETRY_TIMEOUT;
  private static final String RO = Config.getProperty("jcifs.resolveOrder");
  private static final int SND_BUF_SIZE = Config.getInt("jcifs.netbios.snd_buf_size", 576);
  private static final int SO_TIMEOUT;
  private static LogStream log = LogStream.getInstance();
  private final Object LOCK = new Object();
  InetAddress baddr;
  private int closeTimeout;
  private DatagramPacket in;
  InetAddress laddr;
  private int lport;
  private int nextNameTrnId = 0;
  private DatagramPacket out;
  private byte[] rcv_buf;
  private int[] resolveOrder;
  private HashMap responseTable = new HashMap();
  private byte[] snd_buf;
  private DatagramSocket socket;
  private Thread thread;
  
  static
  {
    RCV_BUF_SIZE = Config.getInt("jcifs.netbios.rcv_buf_size", 576);
    SO_TIMEOUT = Config.getInt("jcifs.netbios.soTimeout", 5000);
    RETRY_COUNT = Config.getInt("jcifs.netbios.retryCount", 2);
    RETRY_TIMEOUT = Config.getInt("jcifs.netbios.retryTimeout", 3000);
    LPORT = Config.getInt("jcifs.netbios.lport", 0);
  }
  
  NameServiceClient()
  {
    this(LPORT, LADDR);
  }
  
  NameServiceClient(int paramInt, InetAddress paramInetAddress)
  {
    lport = paramInt;
    laddr = paramInetAddress;
    try
    {
      baddr = Config.getInetAddress("jcifs.netbios.baddr", InetAddress.getByName("255.255.255.255"));
      snd_buf = new byte[SND_BUF_SIZE];
      rcv_buf = new byte[RCV_BUF_SIZE];
      out = new DatagramPacket(snd_buf, SND_BUF_SIZE, baddr, 137);
      in = new DatagramPacket(rcv_buf, RCV_BUF_SIZE);
      if ((RO == null) || (RO.length() == 0))
      {
        if (NbtAddress.getWINSAddress() == null)
        {
          resolveOrder = new int[2];
          resolveOrder[0] = 1;
          resolveOrder[1] = 2;
          return;
        }
        resolveOrder = new int[3];
        resolveOrder[0] = 1;
        resolveOrder[1] = 3;
        resolveOrder[2] = 2;
        return;
      }
      paramInetAddress = new int[3];
      StringTokenizer localStringTokenizer = new StringTokenizer(RO, ",");
      paramInt = 0;
      while (localStringTokenizer.hasMoreTokens())
      {
        Object localObject = localStringTokenizer.nextToken().trim();
        if (((String)localObject).equalsIgnoreCase("LMHOSTS"))
        {
          paramInetAddress[paramInt] = 1;
          paramInt += 1;
        }
        else if (((String)localObject).equalsIgnoreCase("WINS"))
        {
          if (NbtAddress.getWINSAddress() == null)
          {
            localObject = log;
            if (LogStream.level > 1) {
              log.println("NetBIOS resolveOrder specifies WINS however the jcifs.netbios.wins property has not been set");
            }
          }
          else
          {
            paramInetAddress[paramInt] = 3;
            paramInt += 1;
          }
        }
        else if (((String)localObject).equalsIgnoreCase("BCAST"))
        {
          paramInetAddress[paramInt] = 2;
          paramInt += 1;
        }
        else if (!((String)localObject).equalsIgnoreCase("DNS"))
        {
          LogStream localLogStream = log;
          if (LogStream.level > 1) {
            log.println("unknown resolver method: " + (String)localObject);
          }
        }
      }
      resolveOrder = new int[paramInt];
      System.arraycopy(paramInetAddress, 0, resolveOrder, 0, paramInt);
      return;
    }
    catch (UnknownHostException paramInetAddress)
    {
      for (;;) {}
    }
  }
  
  void ensureOpen(int paramInt)
  {
    closeTimeout = 0;
    if (SO_TIMEOUT != 0) {
      closeTimeout = Math.max(SO_TIMEOUT, paramInt);
    }
    if (socket == null)
    {
      socket = new DatagramSocket(lport, laddr);
      thread = new Thread(this, "JCIFS-NameServiceClient");
      thread.setDaemon(true);
      thread.start();
    }
  }
  
  NbtAddress[] getAllByName(Name paramName, InetAddress paramInetAddress)
  {
    Object localObject = new NameQueryRequest(paramName);
    NameQueryResponse localNameQueryResponse = new NameQueryResponse();
    boolean bool;
    label40:
    int i;
    if (paramInetAddress != null)
    {
      addr = paramInetAddress;
      if (addr != null) {
        break label108;
      }
      bool = true;
      isBroadcast = bool;
      if (!isBroadcast) {
        break label114;
      }
      addr = baddr;
      i = RETRY_COUNT;
    }
    label108:
    label114:
    label157:
    do
    {
      for (;;)
      {
        try
        {
          send((NameServicePacket)localObject, localNameQueryResponse, RETRY_TIMEOUT);
          if ((!received) || (resultCode != 0)) {
            break label157;
          }
          return addrEntry;
        }
        catch (IOException paramInetAddress)
        {
          localObject = log;
          if (LogStream.level <= 1) {
            continue;
          }
          paramInetAddress.printStackTrace(log);
          throw new UnknownHostException(name);
        }
        paramInetAddress = NbtAddress.getWINSAddress();
        break;
        bool = false;
        break label40;
        isBroadcast = false;
        i = 1;
      }
      i -= 1;
    } while ((i > 0) && (isBroadcast));
    throw new UnknownHostException(name);
  }
  
  NbtAddress getByName(Name paramName, InetAddress paramInetAddress)
  {
    int i = 0;
    boolean bool = false;
    Object localObject = new NameQueryRequest(paramName);
    NameQueryResponse localNameQueryResponse = new NameQueryResponse();
    if (paramInetAddress != null)
    {
      addr = paramInetAddress;
      if (paramInetAddress.getAddress()[3] == -1) {
        bool = true;
      }
      isBroadcast = bool;
      i = RETRY_COUNT;
      do
      {
        try
        {
          send((NameServicePacket)localObject, localNameQueryResponse, RETRY_TIMEOUT);
          if ((received) && (resultCode == 0))
          {
            i = addrEntry.length - 1;
            addrEntry[i].hostName.srcHashCode = paramInetAddress.hashCode();
            return addrEntry[i];
          }
        }
        catch (IOException paramInetAddress)
        {
          localObject = log;
          if (LogStream.level > 1) {
            paramInetAddress.printStackTrace(log);
          }
          throw new UnknownHostException(name);
        }
        i -= 1;
      } while ((i > 0) && (isBroadcast));
      throw new UnknownHostException(name);
    }
    for (;;)
    {
      if (i < resolveOrder.length) {}
      try
      {
        switch (resolveOrder[i])
        {
        case 1: 
          paramInetAddress = Lmhosts.getByName(paramName);
          if (paramInetAddress == null) {
            break label433;
          }
          hostName.srcHashCode = 0;
          return paramInetAddress;
        }
      }
      catch (IOException paramInetAddress)
      {
        int j;
        for (;;) {}
      }
      if ((resolveOrder[i] == 3) && (name != "\001\002__MSBROWSE__\002") && (hexCode != 29))
      {
        addr = NbtAddress.getWINSAddress();
        isBroadcast = false;
        j = RETRY_COUNT;
      }
      for (;;)
      {
        if (j <= 0) {
          break label433;
        }
        try
        {
          send((NameServicePacket)localObject, localNameQueryResponse, RETRY_TIMEOUT);
          if ((!received) || (resultCode != 0)) {
            break label398;
          }
          addrEntry[0].hostName.srcHashCode = addr.hashCode();
          return addrEntry[0];
        }
        catch (IOException paramInetAddress)
        {
          LogStream localLogStream = log;
          if (LogStream.level <= 1) {
            break label386;
          }
          paramInetAddress.printStackTrace(log);
          throw new UnknownHostException(name);
        }
        addr = baddr;
        isBroadcast = true;
        break;
        label386:
        label398:
        int k = resolveOrder[i];
        if (k == 3) {
          break label433;
        }
        j -= 1;
      }
      throw new UnknownHostException(name);
      label433:
      i += 1;
    }
  }
  
  int getNextNameTrnId()
  {
    int i = nextNameTrnId + 1;
    nextNameTrnId = i;
    if ((i & 0xFFFF) == 0) {
      nextNameTrnId = 1;
    }
    return nextNameTrnId;
  }
  
  NbtAddress[] getNodeStatus(NbtAddress paramNbtAddress)
  {
    int j = 0;
    NodeStatusResponse localNodeStatusResponse = new NodeStatusResponse(paramNbtAddress);
    Object localObject = new NodeStatusRequest(new Name("*\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000", 0, null));
    addr = paramNbtAddress.getInetAddress();
    int i = RETRY_COUNT;
    for (;;)
    {
      if (i > 0) {
        try
        {
          send((NameServicePacket)localObject, localNodeStatusResponse, RETRY_TIMEOUT);
          if ((!received) || (resultCode != 0)) {
            break label176;
          }
          int k = addr.hashCode();
          i = j;
          while (i < addressArray.length)
          {
            addressArray[i].hostName.srcHashCode = k;
            i += 1;
          }
          return addressArray;
        }
        catch (IOException localIOException)
        {
          localObject = log;
          if (LogStream.level > 1) {
            localIOException.printStackTrace(log);
          }
          throw new UnknownHostException(paramNbtAddress.toString());
        }
      }
      throw new UnknownHostException(hostName.name);
      label176:
      i -= 1;
    }
  }
  
  /* Error */
  public void run()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 257	jcifs/netbios/NameServiceClient:thread	Ljava/lang/Thread;
    //   4: invokestatic 368	java/lang/Thread:currentThread	()Ljava/lang/Thread;
    //   7: if_acmpne +167 -> 174
    //   10: aload_0
    //   11: getfield 162	jcifs/netbios/NameServiceClient:in	Ljava/net/DatagramPacket;
    //   14: getstatic 72	jcifs/netbios/NameServiceClient:RCV_BUF_SIZE	I
    //   17: invokevirtual 371	java/net/DatagramPacket:setLength	(I)V
    //   20: aload_0
    //   21: getfield 245	jcifs/netbios/NameServiceClient:socket	Ljava/net/DatagramSocket;
    //   24: aload_0
    //   25: getfield 237	jcifs/netbios/NameServiceClient:closeTimeout	I
    //   28: invokevirtual 374	java/net/DatagramSocket:setSoTimeout	(I)V
    //   31: aload_0
    //   32: getfield 245	jcifs/netbios/NameServiceClient:socket	Ljava/net/DatagramSocket;
    //   35: aload_0
    //   36: getfield 162	jcifs/netbios/NameServiceClient:in	Ljava/net/DatagramPacket;
    //   39: invokevirtual 378	java/net/DatagramSocket:receive	(Ljava/net/DatagramPacket;)V
    //   42: getstatic 112	jcifs/netbios/NameServiceClient:log	Ljcifs/util/LogStream;
    //   45: astore_2
    //   46: getstatic 205	jcifs/util/LogStream:level	I
    //   49: iconst_3
    //   50: if_icmple +12 -> 62
    //   53: getstatic 112	jcifs/netbios/NameServiceClient:log	Ljcifs/util/LogStream;
    //   56: ldc_w 380
    //   59: invokevirtual 211	jcifs/util/LogStream:println	(Ljava/lang/String;)V
    //   62: aload_0
    //   63: getfield 150	jcifs/netbios/NameServiceClient:rcv_buf	[B
    //   66: iconst_0
    //   67: invokestatic 386	jcifs/netbios/NameServicePacket:readNameTrnId	([BI)I
    //   70: istore_1
    //   71: aload_0
    //   72: getfield 128	jcifs/netbios/NameServiceClient:responseTable	Ljava/util/HashMap;
    //   75: new 388	java/lang/Integer
    //   78: dup
    //   79: iload_1
    //   80: invokespecial 390	java/lang/Integer:<init>	(I)V
    //   83: invokevirtual 394	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   86: checkcast 382	jcifs/netbios/NameServicePacket
    //   89: astore_2
    //   90: aload_2
    //   91: ifnull -91 -> 0
    //   94: aload_2
    //   95: getfield 395	jcifs/netbios/NameServicePacket:received	Z
    //   98: ifne -98 -> 0
    //   101: aload_2
    //   102: monitorenter
    //   103: aload_2
    //   104: aload_0
    //   105: getfield 150	jcifs/netbios/NameServiceClient:rcv_buf	[B
    //   108: iconst_0
    //   109: invokevirtual 398	jcifs/netbios/NameServicePacket:readWireFormat	([BI)I
    //   112: pop
    //   113: aload_2
    //   114: iconst_1
    //   115: putfield 395	jcifs/netbios/NameServicePacket:received	Z
    //   118: getstatic 112	jcifs/netbios/NameServiceClient:log	Ljcifs/util/LogStream;
    //   121: astore_3
    //   122: getstatic 205	jcifs/util/LogStream:level	I
    //   125: iconst_3
    //   126: if_icmple +28 -> 154
    //   129: getstatic 112	jcifs/netbios/NameServiceClient:log	Ljcifs/util/LogStream;
    //   132: aload_2
    //   133: invokevirtual 401	jcifs/util/LogStream:println	(Ljava/lang/Object;)V
    //   136: getstatic 112	jcifs/netbios/NameServiceClient:log	Ljcifs/util/LogStream;
    //   139: aload_0
    //   140: getfield 150	jcifs/netbios/NameServiceClient:rcv_buf	[B
    //   143: iconst_0
    //   144: aload_0
    //   145: getfield 162	jcifs/netbios/NameServiceClient:in	Ljava/net/DatagramPacket;
    //   148: invokevirtual 404	java/net/DatagramPacket:getLength	()I
    //   151: invokestatic 410	jcifs/util/Hexdump:hexdump	(Ljava/io/PrintStream;[BII)V
    //   154: aload_2
    //   155: invokevirtual 413	java/lang/Object:notify	()V
    //   158: aload_2
    //   159: monitorexit
    //   160: goto -160 -> 0
    //   163: astore_3
    //   164: aload_2
    //   165: monitorexit
    //   166: aload_3
    //   167: athrow
    //   168: astore_2
    //   169: aload_0
    //   170: invokevirtual 416	jcifs/netbios/NameServiceClient:tryClose	()V
    //   173: return
    //   174: aload_0
    //   175: invokevirtual 416	jcifs/netbios/NameServiceClient:tryClose	()V
    //   178: return
    //   179: astore_2
    //   180: getstatic 112	jcifs/netbios/NameServiceClient:log	Ljcifs/util/LogStream;
    //   183: astore_3
    //   184: getstatic 205	jcifs/util/LogStream:level	I
    //   187: iconst_2
    //   188: if_icmple +10 -> 198
    //   191: aload_2
    //   192: getstatic 112	jcifs/netbios/NameServiceClient:log	Ljcifs/util/LogStream;
    //   195: invokevirtual 417	java/lang/Exception:printStackTrace	(Ljava/io/PrintStream;)V
    //   198: aload_0
    //   199: invokevirtual 416	jcifs/netbios/NameServiceClient:tryClose	()V
    //   202: return
    //   203: astore_2
    //   204: aload_0
    //   205: invokevirtual 416	jcifs/netbios/NameServiceClient:tryClose	()V
    //   208: aload_2
    //   209: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	210	0	this	NameServiceClient
    //   70	10	1	i	int
    //   45	120	2	localObject1	Object
    //   168	1	2	localSocketTimeoutException	java.net.SocketTimeoutException
    //   179	13	2	localException	Exception
    //   203	6	2	localObject2	Object
    //   121	1	3	localLogStream1	LogStream
    //   163	4	3	localObject3	Object
    //   183	1	3	localLogStream2	LogStream
    // Exception table:
    //   from	to	target	type
    //   103	154	163	finally
    //   154	160	163	finally
    //   164	166	163	finally
    //   0	62	168	java/net/SocketTimeoutException
    //   62	90	168	java/net/SocketTimeoutException
    //   94	103	168	java/net/SocketTimeoutException
    //   166	168	168	java/net/SocketTimeoutException
    //   0	62	179	java/lang/Exception
    //   62	90	179	java/lang/Exception
    //   94	103	179	java/lang/Exception
    //   166	168	179	java/lang/Exception
    //   0	62	203	finally
    //   62	90	203	finally
    //   94	103	203	finally
    //   166	168	203	finally
    //   180	198	203	finally
  }
  
  /* Error */
  void send(NameServicePacket paramNameServicePacket1, NameServicePacket paramNameServicePacket2, int paramInt)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 13
    //   3: getstatic 423	jcifs/netbios/NbtAddress:NBNS	[Ljava/net/InetAddress;
    //   6: arraylength
    //   7: istore 5
    //   9: iload 5
    //   11: istore 4
    //   13: iload 5
    //   15: ifne +6 -> 21
    //   18: iconst_1
    //   19: istore 4
    //   21: aload_2
    //   22: monitorenter
    //   23: iload 4
    //   25: ifle +402 -> 427
    //   28: aload_0
    //   29: getfield 123	jcifs/netbios/NameServiceClient:LOCK	Ljava/lang/Object;
    //   32: astore 16
    //   34: aload 16
    //   36: monitorenter
    //   37: aload_1
    //   38: aload_0
    //   39: invokevirtual 425	jcifs/netbios/NameServiceClient:getNextNameTrnId	()I
    //   42: putfield 428	jcifs/netbios/NameServicePacket:nameTrnId	I
    //   45: new 388	java/lang/Integer
    //   48: dup
    //   49: aload_1
    //   50: getfield 428	jcifs/netbios/NameServicePacket:nameTrnId	I
    //   53: invokespecial 390	java/lang/Integer:<init>	(I)V
    //   56: astore 14
    //   58: aload 14
    //   60: astore 15
    //   62: aload_0
    //   63: getfield 157	jcifs/netbios/NameServiceClient:out	Ljava/net/DatagramPacket;
    //   66: aload_1
    //   67: getfield 429	jcifs/netbios/NameServicePacket:addr	Ljava/net/InetAddress;
    //   70: invokevirtual 433	java/net/DatagramPacket:setAddress	(Ljava/net/InetAddress;)V
    //   73: aload 14
    //   75: astore 15
    //   77: aload_0
    //   78: getfield 157	jcifs/netbios/NameServiceClient:out	Ljava/net/DatagramPacket;
    //   81: aload_1
    //   82: aload_0
    //   83: getfield 148	jcifs/netbios/NameServiceClient:snd_buf	[B
    //   86: iconst_0
    //   87: invokevirtual 436	jcifs/netbios/NameServicePacket:writeWireFormat	([BI)I
    //   90: invokevirtual 371	java/net/DatagramPacket:setLength	(I)V
    //   93: aload 14
    //   95: astore 15
    //   97: aload_2
    //   98: iconst_0
    //   99: putfield 395	jcifs/netbios/NameServicePacket:received	Z
    //   102: aload 14
    //   104: astore 15
    //   106: aload_0
    //   107: getfield 128	jcifs/netbios/NameServiceClient:responseTable	Ljava/util/HashMap;
    //   110: aload 14
    //   112: aload_2
    //   113: invokevirtual 440	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   116: pop
    //   117: aload 14
    //   119: astore 15
    //   121: aload_0
    //   122: iload_3
    //   123: sipush 1000
    //   126: iadd
    //   127: invokevirtual 442	jcifs/netbios/NameServiceClient:ensureOpen	(I)V
    //   130: aload 14
    //   132: astore 15
    //   134: aload_0
    //   135: getfield 245	jcifs/netbios/NameServiceClient:socket	Ljava/net/DatagramSocket;
    //   138: aload_0
    //   139: getfield 157	jcifs/netbios/NameServiceClient:out	Ljava/net/DatagramPacket;
    //   142: invokevirtual 444	java/net/DatagramSocket:send	(Ljava/net/DatagramPacket;)V
    //   145: aload 14
    //   147: astore 15
    //   149: getstatic 112	jcifs/netbios/NameServiceClient:log	Ljcifs/util/LogStream;
    //   152: astore 13
    //   154: aload 14
    //   156: astore 15
    //   158: getstatic 205	jcifs/util/LogStream:level	I
    //   161: iconst_3
    //   162: if_icmple +36 -> 198
    //   165: aload 14
    //   167: astore 15
    //   169: getstatic 112	jcifs/netbios/NameServiceClient:log	Ljcifs/util/LogStream;
    //   172: aload_1
    //   173: invokevirtual 401	jcifs/util/LogStream:println	(Ljava/lang/Object;)V
    //   176: aload 14
    //   178: astore 15
    //   180: getstatic 112	jcifs/netbios/NameServiceClient:log	Ljcifs/util/LogStream;
    //   183: aload_0
    //   184: getfield 148	jcifs/netbios/NameServiceClient:snd_buf	[B
    //   187: iconst_0
    //   188: aload_0
    //   189: getfield 157	jcifs/netbios/NameServiceClient:out	Ljava/net/DatagramPacket;
    //   192: invokevirtual 404	java/net/DatagramPacket:getLength	()I
    //   195: invokestatic 410	jcifs/util/Hexdump:hexdump	(Ljava/io/PrintStream;[BII)V
    //   198: aload 14
    //   200: astore 15
    //   202: aload 16
    //   204: monitorexit
    //   205: aload 14
    //   207: astore 15
    //   209: aload 14
    //   211: astore 13
    //   213: invokestatic 448	java/lang/System:currentTimeMillis	()J
    //   216: lstore 7
    //   218: iload_3
    //   219: ifle +176 -> 395
    //   222: aload 14
    //   224: astore 15
    //   226: aload 14
    //   228: astore 13
    //   230: aload_2
    //   231: iload_3
    //   232: i2l
    //   233: invokevirtual 452	java/lang/Object:wait	(J)V
    //   236: aload 14
    //   238: astore 15
    //   240: aload 14
    //   242: astore 13
    //   244: aload_2
    //   245: getfield 395	jcifs/netbios/NameServicePacket:received	Z
    //   248: ifeq +104 -> 352
    //   251: aload 14
    //   253: astore 15
    //   255: aload 14
    //   257: astore 13
    //   259: aload_1
    //   260: getfield 455	jcifs/netbios/NameServicePacket:questionType	I
    //   263: istore 5
    //   265: aload 14
    //   267: astore 15
    //   269: aload 14
    //   271: astore 13
    //   273: aload_2
    //   274: getfield 458	jcifs/netbios/NameServicePacket:recordType	I
    //   277: istore 6
    //   279: iload 5
    //   281: iload 6
    //   283: if_icmpne +69 -> 352
    //   286: aload_0
    //   287: getfield 128	jcifs/netbios/NameServiceClient:responseTable	Ljava/util/HashMap;
    //   290: aload 14
    //   292: invokevirtual 461	java/util/HashMap:remove	(Ljava/lang/Object;)Ljava/lang/Object;
    //   295: pop
    //   296: aload_2
    //   297: monitorexit
    //   298: return
    //   299: astore_1
    //   300: aload 15
    //   302: astore 13
    //   304: aload 13
    //   306: astore 15
    //   308: aload 16
    //   310: monitorexit
    //   311: aload 13
    //   313: astore 15
    //   315: aload_1
    //   316: athrow
    //   317: astore_1
    //   318: aload 15
    //   320: astore 13
    //   322: new 268	java/io/IOException
    //   325: dup
    //   326: aload_1
    //   327: invokevirtual 464	java/lang/InterruptedException:getMessage	()Ljava/lang/String;
    //   330: invokespecial 465	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   333: athrow
    //   334: astore_1
    //   335: aload_0
    //   336: getfield 128	jcifs/netbios/NameServiceClient:responseTable	Ljava/util/HashMap;
    //   339: aload 13
    //   341: invokevirtual 461	java/util/HashMap:remove	(Ljava/lang/Object;)Ljava/lang/Object;
    //   344: pop
    //   345: aload_1
    //   346: athrow
    //   347: astore_1
    //   348: aload_2
    //   349: monitorexit
    //   350: aload_1
    //   351: athrow
    //   352: aload 14
    //   354: astore 15
    //   356: aload 14
    //   358: astore 13
    //   360: aload_2
    //   361: iconst_0
    //   362: putfield 395	jcifs/netbios/NameServicePacket:received	Z
    //   365: iload_3
    //   366: i2l
    //   367: lstore 9
    //   369: aload 14
    //   371: astore 15
    //   373: aload 14
    //   375: astore 13
    //   377: invokestatic 448	java/lang/System:currentTimeMillis	()J
    //   380: lstore 11
    //   382: lload 9
    //   384: lload 11
    //   386: lload 7
    //   388: lsub
    //   389: lsub
    //   390: l2i
    //   391: istore_3
    //   392: goto -174 -> 218
    //   395: aload_0
    //   396: getfield 128	jcifs/netbios/NameServiceClient:responseTable	Ljava/util/HashMap;
    //   399: aload 14
    //   401: invokevirtual 461	java/util/HashMap:remove	(Ljava/lang/Object;)Ljava/lang/Object;
    //   404: pop
    //   405: aload_0
    //   406: getfield 123	jcifs/netbios/NameServiceClient:LOCK	Ljava/lang/Object;
    //   409: astore 13
    //   411: aload 13
    //   413: monitorenter
    //   414: aload_1
    //   415: getfield 429	jcifs/netbios/NameServicePacket:addr	Ljava/net/InetAddress;
    //   418: invokestatic 469	jcifs/netbios/NbtAddress:isWINS	(Ljava/net/InetAddress;)Z
    //   421: ifne +9 -> 430
    //   424: aload 13
    //   426: monitorexit
    //   427: aload_2
    //   428: monitorexit
    //   429: return
    //   430: aload_1
    //   431: getfield 429	jcifs/netbios/NameServicePacket:addr	Ljava/net/InetAddress;
    //   434: invokestatic 174	jcifs/netbios/NbtAddress:getWINSAddress	()Ljava/net/InetAddress;
    //   437: if_acmpne +7 -> 444
    //   440: invokestatic 472	jcifs/netbios/NbtAddress:switchWINS	()Ljava/net/InetAddress;
    //   443: pop
    //   444: aload_1
    //   445: invokestatic 174	jcifs/netbios/NbtAddress:getWINSAddress	()Ljava/net/InetAddress;
    //   448: putfield 429	jcifs/netbios/NameServicePacket:addr	Ljava/net/InetAddress;
    //   451: aload 13
    //   453: monitorexit
    //   454: iload 4
    //   456: iconst_1
    //   457: isub
    //   458: istore 4
    //   460: aload 14
    //   462: astore 13
    //   464: goto -441 -> 23
    //   467: astore_1
    //   468: aload 13
    //   470: monitorexit
    //   471: aload_1
    //   472: athrow
    //   473: astore_1
    //   474: goto -139 -> 335
    //   477: astore_1
    //   478: goto -156 -> 322
    //   481: astore_1
    //   482: goto -178 -> 304
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	485	0	this	NameServiceClient
    //   0	485	1	paramNameServicePacket1	NameServicePacket
    //   0	485	2	paramNameServicePacket2	NameServicePacket
    //   0	485	3	paramInt	int
    //   11	448	4	i	int
    //   7	277	5	j	int
    //   277	7	6	k	int
    //   216	171	7	l1	long
    //   367	16	9	l2	long
    //   380	5	11	l3	long
    //   56	405	14	localInteger	Integer
    //   60	312	15	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   62	73	299	finally
    //   77	93	299	finally
    //   97	102	299	finally
    //   106	117	299	finally
    //   121	130	299	finally
    //   134	145	299	finally
    //   149	154	299	finally
    //   158	165	299	finally
    //   169	176	299	finally
    //   180	198	299	finally
    //   202	205	299	finally
    //   308	311	299	finally
    //   213	218	317	java/lang/InterruptedException
    //   230	236	317	java/lang/InterruptedException
    //   244	251	317	java/lang/InterruptedException
    //   259	265	317	java/lang/InterruptedException
    //   273	279	317	java/lang/InterruptedException
    //   315	317	317	java/lang/InterruptedException
    //   360	365	317	java/lang/InterruptedException
    //   377	382	317	java/lang/InterruptedException
    //   213	218	334	finally
    //   230	236	334	finally
    //   244	251	334	finally
    //   259	265	334	finally
    //   273	279	334	finally
    //   315	317	334	finally
    //   322	334	334	finally
    //   360	365	334	finally
    //   377	382	334	finally
    //   286	298	347	finally
    //   335	347	347	finally
    //   348	350	347	finally
    //   395	414	347	finally
    //   427	429	347	finally
    //   471	473	347	finally
    //   414	427	467	finally
    //   430	444	467	finally
    //   444	454	467	finally
    //   468	471	467	finally
    //   28	37	473	finally
    //   28	37	477	java/lang/InterruptedException
    //   37	58	481	finally
  }
  
  void tryClose()
  {
    synchronized (LOCK)
    {
      if (socket != null)
      {
        socket.close();
        socket = null;
      }
      thread = null;
      responseTable.clear();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     jcifs.netbios.NameServiceClient
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
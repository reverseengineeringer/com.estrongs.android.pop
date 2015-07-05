package jcifs.smb;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.ConnectException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.NoRouteToHostException;
import java.net.Socket;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.ListIterator;
import jcifs.UniAddress;
import jcifs.netbios.Name;
import jcifs.netbios.NbtAddress;
import jcifs.netbios.NbtException;
import jcifs.netbios.SessionRequestPacket;
import jcifs.netbios.SessionServicePacket;
import jcifs.util.Encdec;
import jcifs.util.Hexdump;
import jcifs.util.LogStream;
import jcifs.util.transport.Request;
import jcifs.util.transport.Response;
import jcifs.util.transport.Transport;
import jcifs.util.transport.TransportException;

public class SmbTransport
  extends Transport
  implements SmbConstants
{
  static final byte[] BUF = new byte[65535];
  static final SmbComNegotiate NEGOTIATE_REQUEST = new SmbComNegotiate();
  static HashMap dfsRoots = null;
  static LogStream log = LogStream.getInstance();
  UniAddress address;
  int capabilities = CAPABILITIES;
  SigningDigest digest = null;
  int flags2 = FLAGS2;
  InputStream in;
  SmbComBlankResponse key = new SmbComBlankResponse();
  InetAddress localAddr;
  int localPort;
  int maxMpxCount = MAX_MPX_COUNT;
  int mid;
  OutputStream out;
  int port;
  int rcv_buf_size = RCV_BUF_SIZE;
  LinkedList referrals = new LinkedList();
  byte[] sbuf = new byte['Ȁ'];
  SmbTransport.ServerData server = new SmbTransport.ServerData(this);
  long sessionExpiration = System.currentTimeMillis() + SO_TIMEOUT;
  int sessionKey = 0;
  LinkedList sessions = new LinkedList();
  int snd_buf_size = SND_BUF_SIZE;
  Socket socket;
  String tconHostName = null;
  boolean useUnicode = USE_UNICODE;
  
  SmbTransport(UniAddress paramUniAddress, int paramInt1, InetAddress paramInetAddress, int paramInt2)
  {
    address = paramUniAddress;
    port = paramInt1;
    localAddr = paramInetAddress;
    localPort = paramInt2;
  }
  
  static SmbTransport getSmbTransport(UniAddress paramUniAddress, int paramInt)
  {
    try
    {
      paramUniAddress = getSmbTransport(paramUniAddress, paramInt, LADDR, LPORT, null);
      return paramUniAddress;
    }
    finally
    {
      paramUniAddress = finally;
      throw paramUniAddress;
    }
  }
  
  /* Error */
  static SmbTransport getSmbTransport(UniAddress paramUniAddress, int paramInt1, InetAddress paramInetAddress, int paramInt2, String paramString)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 165	jcifs/smb/SmbTransport:CONNECTIONS	Ljava/util/LinkedList;
    //   6: astore 6
    //   8: aload 6
    //   10: monitorenter
    //   11: getstatic 168	jcifs/smb/SmbTransport:SSN_LIMIT	I
    //   14: iconst_1
    //   15: if_icmpeq +78 -> 93
    //   18: getstatic 165	jcifs/smb/SmbTransport:CONNECTIONS	Ljava/util/LinkedList;
    //   21: invokevirtual 172	java/util/LinkedList:listIterator	()Ljava/util/ListIterator;
    //   24: astore 7
    //   26: aload 7
    //   28: invokeinterface 178 1 0
    //   33: ifeq +60 -> 93
    //   36: aload 7
    //   38: invokeinterface 182 1 0
    //   43: checkcast 2	jcifs/smb/SmbTransport
    //   46: astore 5
    //   48: aload 5
    //   50: aload_0
    //   51: iload_1
    //   52: aload_2
    //   53: iload_3
    //   54: aload 4
    //   56: invokevirtual 186	jcifs/smb/SmbTransport:matches	(Ljcifs/UniAddress;ILjava/net/InetAddress;ILjava/lang/String;)Z
    //   59: ifeq -33 -> 26
    //   62: getstatic 168	jcifs/smb/SmbTransport:SSN_LIMIT	I
    //   65: ifeq +17 -> 82
    //   68: aload 5
    //   70: getfield 102	jcifs/smb/SmbTransport:sessions	Ljava/util/LinkedList;
    //   73: invokevirtual 190	java/util/LinkedList:size	()I
    //   76: getstatic 168	jcifs/smb/SmbTransport:SSN_LIMIT	I
    //   79: if_icmpge -53 -> 26
    //   82: aload 6
    //   84: monitorexit
    //   85: aload 5
    //   87: astore_0
    //   88: ldc 2
    //   90: monitorexit
    //   91: aload_0
    //   92: areturn
    //   93: new 2	jcifs/smb/SmbTransport
    //   96: dup
    //   97: aload_0
    //   98: iload_1
    //   99: aload_2
    //   100: iload_3
    //   101: invokespecial 192	jcifs/smb/SmbTransport:<init>	(Ljcifs/UniAddress;ILjava/net/InetAddress;I)V
    //   104: astore_0
    //   105: getstatic 165	jcifs/smb/SmbTransport:CONNECTIONS	Ljava/util/LinkedList;
    //   108: iconst_0
    //   109: aload_0
    //   110: invokevirtual 196	java/util/LinkedList:add	(ILjava/lang/Object;)V
    //   113: aload 6
    //   115: monitorexit
    //   116: goto -28 -> 88
    //   119: astore_0
    //   120: aload 6
    //   122: monitorexit
    //   123: aload_0
    //   124: athrow
    //   125: astore_0
    //   126: ldc 2
    //   128: monitorexit
    //   129: aload_0
    //   130: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	131	0	paramUniAddress	UniAddress
    //   0	131	1	paramInt1	int
    //   0	131	2	paramInetAddress	InetAddress
    //   0	131	3	paramInt2	int
    //   0	131	4	paramString	String
    //   46	40	5	localSmbTransport	SmbTransport
    //   24	13	7	localListIterator	ListIterator
    // Exception table:
    //   from	to	target	type
    //   11	26	119	finally
    //   26	82	119	finally
    //   82	85	119	finally
    //   93	116	119	finally
    //   120	123	119	finally
    //   3	11	125	finally
    //   123	125	125	finally
  }
  
  private void negotiate(int paramInt, ServerMessageBlock paramServerMessageBlock)
  {
    byte[] arrayOfByte = sbuf;
    if (paramInt == 139) {}
    for (;;)
    {
      try
      {
        ssn139();
        paramInt = mid + 1;
        mid = paramInt;
        if (paramInt == 32000) {
          mid = 1;
        }
        NEGOTIATE_REQUESTmid = mid;
        paramInt = NEGOTIATE_REQUEST.encode(sbuf, 4);
        Encdec.enc_uint32be(paramInt & 0xFFFF, sbuf, 0);
        localLogStream = log;
        if (LogStream.level >= 4)
        {
          log.println(NEGOTIATE_REQUEST);
          localLogStream = log;
          if (LogStream.level >= 6) {
            Hexdump.hexdump(log, sbuf, 4, paramInt);
          }
        }
        out.write(sbuf, 0, paramInt + 4);
        out.flush();
        if (peekKey() != null) {
          break;
        }
        throw new IOException("transport closed in negotiate");
      }
      finally {}
      i = paramInt;
      if (paramInt == 0) {
        i = 445;
      }
      socket = new Socket();
      if (localAddr != null) {
        socket.bind(new InetSocketAddress(localAddr, localPort));
      }
      socket.connect(new InetSocketAddress(address.getHostAddress(), i), CONN_TIMEOUT);
      socket.setSoTimeout(SO_TIMEOUT);
      out = socket.getOutputStream();
      in = socket.getInputStream();
    }
    int i = Encdec.dec_uint16be(sbuf, 2) & 0xFFFF;
    if ((i < 33) || (i + 4 > sbuf.length)) {
      throw new IOException("Invalid payload size: " + i);
    }
    readn(in, sbuf, 36, i - 32);
    paramServerMessageBlock.decode(sbuf, 4);
    LogStream localLogStream = log;
    if (LogStream.level >= 4)
    {
      log.println(paramServerMessageBlock);
      paramServerMessageBlock = log;
      if (LogStream.level >= 6) {
        Hexdump.hexdump(log, sbuf, 4, paramInt);
      }
    }
  }
  
  DfsReferral[] __getDfsReferrals(NtlmPasswordAuthentication paramNtlmPasswordAuthentication, String paramString, int paramInt)
  {
    Object localObject = getSmbSession(paramNtlmPasswordAuthentication).getSmbTree("IPC$", null);
    Trans2GetDfsReferralResponse localTrans2GetDfsReferralResponse = new Trans2GetDfsReferralResponse();
    ((SmbTree)localObject).send(new Trans2GetDfsReferral(paramString), localTrans2GetDfsReferralResponse);
    int i;
    if (paramInt != 0)
    {
      i = paramInt;
      if (numReferrals >= paramInt) {}
    }
    else
    {
      i = numReferrals;
    }
    localObject = new DfsReferral[i];
    String[] arrayOfString = new String[4];
    long l1 = System.currentTimeMillis();
    long l2 = Dfs.TTL;
    paramInt = 0;
    if (paramInt < localObject.length)
    {
      DfsReferral localDfsReferral = new DfsReferral();
      resolveHashes = hashesExternal;
      ttl = referrals[paramInt].ttl;
      expiration = (l1 + l2 * 1000L);
      if (paramString.equals("")) {
        server = referrals[paramInt].path.substring(1).toLowerCase();
      }
      for (;;)
      {
        pathConsumed = pathConsumed;
        localObject[paramInt] = localDfsReferral;
        paramInt += 1;
        break;
        dfsPathSplit(referrals[paramInt].node, arrayOfString);
        server = arrayOfString[1];
        share = arrayOfString[2];
        path = arrayOfString[3];
      }
    }
    return (DfsReferral[])localObject;
  }
  
  void checkStatus(ServerMessageBlock paramServerMessageBlock1, ServerMessageBlock paramServerMessageBlock2)
  {
    errorCode = SmbException.getStatusByCode(errorCode);
    switch (errorCode)
    {
    default: 
      throw new SmbException(errorCode, null);
    case -1073741790: 
    case -1073741718: 
    case -1073741715: 
    case -1073741714: 
    case -1073741713: 
    case -1073741712: 
    case -1073741711: 
    case -1073741710: 
    case -1073741428: 
    case -1073741260: 
      throw new SmbAuthException(errorCode);
    case -1073741225: 
      if (auth == null) {
        throw new SmbException(errorCode, null);
      }
      DfsReferral localDfsReferral = getDfsReferrals(auth, path, 1);
      if (localDfsReferral == null) {
        throw new SmbException(errorCode, null);
      }
      SmbFile.dfs.insert(path, localDfsReferral);
      throw localDfsReferral;
    }
    if (verifyFailed) {
      throw new SmbException("Signature verification failed.");
    }
  }
  
  public void connect()
  {
    try
    {
      super.connect(RESPONSE_TIMEOUT);
      return;
    }
    catch (TransportException localTransportException)
    {
      throw new SmbException("Failed to connect: " + address, localTransportException);
    }
  }
  
  void dfsPathSplit(String paramString, String[] paramArrayOfString)
  {
    int i = 0;
    int n = paramArrayOfString.length - 1;
    int i1 = paramString.length();
    int k = 0;
    int j = 0;
    if (j == n)
    {
      paramArrayOfString[n] = paramString.substring(i);
      label36:
      return;
    }
    int m;
    if ((k == i1) || (paramString.charAt(k) == '\\'))
    {
      paramArrayOfString[j] = paramString.substring(i, k);
      i = k + 1;
      m = j + 1;
      j = i;
      i = m;
    }
    for (;;)
    {
      if (k >= i1)
      {
        while (i < paramArrayOfString.length)
        {
          paramArrayOfString[i] = "";
          i += 1;
        }
        break label36;
      }
      m = k + 1;
      k = i;
      i = j;
      j = k;
      k = m;
      break;
      m = i;
      i = j;
      j = m;
    }
  }
  
  protected void doConnect()
  {
    int i = 445;
    SmbComNegotiateResponse localSmbComNegotiateResponse = new SmbComNegotiateResponse(server);
    try
    {
      negotiate(port, localSmbComNegotiateResponse);
      if (dialectIndex > 10) {
        throw new SmbException("This client does not support the negotiated dialect.");
      }
    }
    catch (ConnectException localConnectException)
    {
      for (;;)
      {
        if ((port == 0) || (port == 445)) {
          i = 139;
        }
        port = i;
        negotiate(port, localSmbComNegotiateResponse);
      }
    }
    catch (NoRouteToHostException localNoRouteToHostException)
    {
      for (;;)
      {
        if ((port == 0) || (port == 445)) {
          i = 139;
        }
        port = i;
        negotiate(port, localSmbComNegotiateResponse);
      }
      if (((server.capabilities & 0x80000000) != Integer.MIN_VALUE) && (server.encryptionKeyLength != 8) && (LM_COMPATIBILITY == 0)) {
        throw new SmbException("Unexpected encryption key length: " + server.encryptionKeyLength);
      }
      tconHostName = address.getHostName();
      if ((server.signaturesRequired) || ((server.signaturesEnabled) && (SIGNPREF))) {}
      for (flags2 |= 0x4;; flags2 &= 0xFFFB)
      {
        maxMpxCount = Math.min(maxMpxCount, server.maxMpxCount);
        if (maxMpxCount < 1) {
          maxMpxCount = 1;
        }
        snd_buf_size = Math.min(snd_buf_size, server.maxBufferSize);
        capabilities &= server.capabilities;
        if ((server.capabilities & 0x80000000) == Integer.MIN_VALUE) {
          capabilities |= 0x80000000;
        }
        if ((capabilities & 0x4) == 0)
        {
          if (!FORCE_UNICODE) {
            break;
          }
          capabilities |= 0x4;
        }
        return;
      }
      useUnicode = false;
      flags2 &= 0x7FFF;
    }
  }
  
  protected void doDisconnect(boolean paramBoolean)
  {
    ListIterator localListIterator = sessions.listIterator();
    try
    {
      while (localListIterator.hasNext()) {
        ((SmbSession)localListIterator.next()).logoff(paramBoolean);
      }
      socket.shutdownOutput();
    }
    finally
    {
      digest = null;
      socket = null;
      tconHostName = null;
    }
    out.close();
    in.close();
    socket.close();
    digest = null;
    socket = null;
    tconHostName = null;
  }
  
  protected void doRecv(Response paramResponse)
  {
    boolean bool = false;
    Object localObject = (ServerMessageBlock)paramResponse;
    useUnicode = useUnicode;
    if ((capabilities & 0x80000000) == Integer.MIN_VALUE) {
      bool = true;
    }
    extendedSecurity = bool;
    int i;
    synchronized (BUF)
    {
      System.arraycopy(sbuf, 0, BUF, 0, 36);
      i = 0xFFFF & Encdec.dec_uint16be(BUF, 2);
      if ((i < 33) || (i + 4 > rcv_buf_size)) {
        throw new IOException("Invalid payload size: " + i);
      }
    }
    int j = Encdec.dec_uint32le(BUF, 9) & 0xFFFFFFFF;
    if ((command == 46) && ((j == 0) || (j == -2147483643)))
    {
      SmbComReadAndXResponse localSmbComReadAndXResponse = (SmbComReadAndXResponse)localObject;
      readn(in, BUF, 36, 27);
      ((ServerMessageBlock)localObject).decode(BUF, 4);
      j = dataOffset - 59;
      if ((byteCount > 0) && (j > 0) && (j < 4)) {
        readn(in, BUF, 63, j);
      }
      if (dataLength > 0) {
        readn(in, b, off, dataLength);
      }
    }
    for (;;)
    {
      if ((digest != null) && (errorCode == 0)) {
        digest.verify(BUF, 4, (ServerMessageBlock)localObject);
      }
      localObject = log;
      if (LogStream.level >= 4)
      {
        log.println(paramResponse);
        paramResponse = log;
        if (LogStream.level >= 6) {
          Hexdump.hexdump(log, BUF, 4, i);
        }
      }
      return;
      readn(in, BUF, 36, i - 32);
      ((ServerMessageBlock)localObject).decode(BUF, 4);
      if ((localObject instanceof SmbComTransactionResponse)) {
        ((SmbComTransactionResponse)localObject).nextElement();
      }
    }
  }
  
  protected void doSend(Request paramRequest)
  {
    synchronized (BUF)
    {
      paramRequest = (ServerMessageBlock)paramRequest;
      int i = paramRequest.encode(BUF, 4);
      Encdec.enc_uint32be(0xFFFF & i, BUF, 0);
      Object localObject = log;
      if (LogStream.level >= 4)
      {
        do
        {
          log.println(paramRequest);
          if (!(paramRequest instanceof AndXServerMessageBlock)) {
            break;
          }
          localObject = andx;
          paramRequest = (Request)localObject;
        } while (localObject != null);
        paramRequest = log;
        if (LogStream.level >= 6) {
          Hexdump.hexdump(log, BUF, 4, i);
        }
      }
      out.write(BUF, 0, i + 4);
      return;
    }
  }
  
  protected void doSend0(Request paramRequest)
  {
    try
    {
      doSend(paramRequest);
      return;
    }
    catch (IOException paramRequest)
    {
      LogStream localLogStream = log;
      if (LogStream.level > 2) {
        paramRequest.printStackTrace(log);
      }
    }
    try
    {
      disconnect(true);
      throw paramRequest;
    }
    catch (IOException localIOException)
    {
      for (;;)
      {
        localIOException.printStackTrace(log);
      }
    }
  }
  
  protected void doSkip()
  {
    int i = Encdec.dec_uint16be(sbuf, 2) & 0xFFFF;
    if ((i < 33) || (i + 4 > rcv_buf_size))
    {
      in.skip(in.available());
      return;
    }
    in.skip(i - 32);
  }
  
  DfsReferral getDfsReferrals(NtlmPasswordAuthentication paramNtlmPasswordAuthentication, String paramString, int paramInt)
  {
    Object localObject = getSmbSession(paramNtlmPasswordAuthentication).getSmbTree("IPC$", null);
    Trans2GetDfsReferralResponse localTrans2GetDfsReferralResponse = new Trans2GetDfsReferralResponse();
    ((SmbTree)localObject).send(new Trans2GetDfsReferral(paramString), localTrans2GetDfsReferralResponse);
    if (numReferrals == 0) {
      return null;
    }
    int i;
    if (paramInt != 0)
    {
      i = paramInt;
      if (numReferrals >= paramInt) {}
    }
    else
    {
      i = numReferrals;
    }
    localObject = new DfsReferral();
    String[] arrayOfString = new String[4];
    long l1 = System.currentTimeMillis();
    long l2 = Dfs.TTL;
    paramInt = 0;
    for (;;)
    {
      resolveHashes = hashesExternal;
      ttl = referrals[paramInt].ttl;
      expiration = (l1 + l2 * 1000L);
      if (paramString.equals("")) {
        server = referrals[paramInt].path.substring(1).toLowerCase();
      }
      for (;;)
      {
        pathConsumed = pathConsumed;
        paramInt += 1;
        if (paramInt != i) {
          break;
        }
        return next;
        dfsPathSplit(referrals[paramInt].node, arrayOfString);
        server = arrayOfString[1];
        share = arrayOfString[2];
        path = arrayOfString[3];
      }
      ((DfsReferral)localObject).append(new DfsReferral());
      localObject = next;
    }
  }
  
  SmbSession getSmbSession()
  {
    try
    {
      SmbSession localSmbSession = getSmbSession(new NtlmPasswordAuthentication(null, null, null));
      return localSmbSession;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  SmbSession getSmbSession(NtlmPasswordAuthentication paramNtlmPasswordAuthentication)
  {
    for (;;)
    {
      try
      {
        Object localObject2 = sessions.listIterator();
        Object localObject1;
        if (((ListIterator)localObject2).hasNext())
        {
          localObject1 = (SmbSession)((ListIterator)localObject2).next();
          if (!((SmbSession)localObject1).matches(paramNtlmPasswordAuthentication)) {
            continue;
          }
          auth = paramNtlmPasswordAuthentication;
          paramNtlmPasswordAuthentication = (NtlmPasswordAuthentication)localObject1;
          return paramNtlmPasswordAuthentication;
        }
        if (SO_TIMEOUT > 0)
        {
          long l1 = sessionExpiration;
          long l2 = System.currentTimeMillis();
          if (l1 < l2)
          {
            sessionExpiration = (SO_TIMEOUT + l2);
            localObject1 = sessions.listIterator();
            if (((ListIterator)localObject1).hasNext())
            {
              localObject2 = (SmbSession)((ListIterator)localObject1).next();
              if (expiration >= l2) {
                continue;
              }
              ((SmbSession)localObject2).logoff(false);
              continue;
            }
          }
        }
        paramNtlmPasswordAuthentication = new SmbSession(address, port, localAddr, localPort, paramNtlmPasswordAuthentication);
      }
      finally {}
      transport = this;
      sessions.add(paramNtlmPasswordAuthentication);
    }
  }
  
  boolean hasCapability(int paramInt)
  {
    try
    {
      connect(RESPONSE_TIMEOUT);
      if ((capabilities & paramInt) == paramInt) {
        return true;
      }
    }
    catch (IOException localIOException)
    {
      throw new SmbException(localIOException.getMessage(), localIOException);
    }
    return false;
  }
  
  boolean isSignatureSetupRequired(NtlmPasswordAuthentication paramNtlmPasswordAuthentication)
  {
    return ((flags2 & 0x4) != 0) && (digest == null) && (paramNtlmPasswordAuthentication != NtlmPasswordAuthentication.NULL) && (!NtlmPasswordAuthentication.NULL.equals(paramNtlmPasswordAuthentication));
  }
  
  protected void makeKey(Request paramRequest)
  {
    int i = mid + 1;
    mid = i;
    if (i == 32000) {
      mid = 1;
    }
    mid = mid;
  }
  
  boolean matches(UniAddress paramUniAddress, int paramInt1, InetAddress paramInetAddress, int paramInt2, String paramString)
  {
    String str = paramString;
    if (paramString == null) {
      str = paramUniAddress.getHostName();
    }
    return ((tconHostName == null) || (str.equalsIgnoreCase(tconHostName))) && (paramUniAddress.equals(address)) && ((paramInt1 == 0) || (paramInt1 == port) || ((paramInt1 == 445) && (port == 139))) && ((paramInetAddress == localAddr) || ((paramInetAddress != null) && (paramInetAddress.equals(localAddr)))) && (paramInt2 == localPort);
  }
  
  protected Request peekKey()
  {
    if (readn(in, sbuf, 0, 4) < 4) {}
    do
    {
      return null;
      if (sbuf[0] == -123) {
        break;
      }
    } while (readn(in, sbuf, 4, 32) < 32);
    LogStream localLogStream = log;
    if (LogStream.level >= 4)
    {
      log.println("New data read: " + this);
      Hexdump.hexdump(log, sbuf, 4, 32);
    }
    for (;;)
    {
      if ((sbuf[0] == 0) && (sbuf[1] == 0) && (sbuf[4] == -1) && (sbuf[5] == 83) && (sbuf[6] == 77) && (sbuf[7] == 66))
      {
        key.mid = (Encdec.dec_uint16le(sbuf, 34) & 0xFFFF);
        return key;
      }
      int i = 0;
      while (i < 35)
      {
        sbuf[i] = sbuf[(i + 1)];
        i += 1;
      }
      i = in.read();
      if (i == -1) {
        break;
      }
      sbuf[35] = ((byte)i);
    }
  }
  
  /* Error */
  void send(ServerMessageBlock paramServerMessageBlock1, ServerMessageBlock paramServerMessageBlock2)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 685	jcifs/smb/SmbTransport:connect	()V
    //   4: aload_1
    //   5: aload_1
    //   6: getfield 686	jcifs/smb/ServerMessageBlock:flags2	I
    //   9: aload_0
    //   10: getfield 114	jcifs/smb/SmbTransport:flags2	I
    //   13: ior
    //   14: putfield 686	jcifs/smb/ServerMessageBlock:flags2	I
    //   17: aload_1
    //   18: aload_0
    //   19: getfield 141	jcifs/smb/SmbTransport:useUnicode	Z
    //   22: putfield 555	jcifs/smb/ServerMessageBlock:useUnicode	Z
    //   25: aload_1
    //   26: aload_2
    //   27: putfield 689	jcifs/smb/ServerMessageBlock:response	Ljcifs/smb/ServerMessageBlock;
    //   30: aload_1
    //   31: getfield 690	jcifs/smb/ServerMessageBlock:digest	Ljcifs/smb/SigningDigest;
    //   34: ifnonnull +11 -> 45
    //   37: aload_1
    //   38: aload_0
    //   39: getfield 100	jcifs/smb/SmbTransport:digest	Ljcifs/smb/SigningDigest;
    //   42: putfield 690	jcifs/smb/ServerMessageBlock:digest	Ljcifs/smb/SigningDigest;
    //   45: aload_2
    //   46: ifnonnull +9 -> 55
    //   49: aload_0
    //   50: aload_1
    //   51: invokevirtual 692	jcifs/smb/SmbTransport:doSend0	(Ljcifs/util/transport/Request;)V
    //   54: return
    //   55: aload_1
    //   56: instanceof 694
    //   59: ifeq +339 -> 398
    //   62: aload_2
    //   63: aload_1
    //   64: getfield 569	jcifs/smb/ServerMessageBlock:command	B
    //   67: putfield 569	jcifs/smb/ServerMessageBlock:command	B
    //   70: aload_1
    //   71: checkcast 694	jcifs/smb/SmbComTransaction
    //   74: astore 7
    //   76: aload_2
    //   77: checkcast 595	jcifs/smb/SmbComTransactionResponse
    //   80: astore 8
    //   82: aload 7
    //   84: aload_0
    //   85: getfield 124	jcifs/smb/SmbTransport:snd_buf_size	I
    //   88: putfield 695	jcifs/smb/SmbComTransaction:maxBufferSize	I
    //   91: aload 8
    //   93: invokevirtual 698	jcifs/smb/SmbComTransactionResponse:reset	()V
    //   96: aload 7
    //   98: aload 8
    //   100: invokestatic 704	jcifs/smb/BufferCache:getBuffers	(Ljcifs/smb/SmbComTransaction;Ljcifs/smb/SmbComTransactionResponse;)V
    //   103: aload 7
    //   105: invokevirtual 705	jcifs/smb/SmbComTransaction:nextElement	()Ljava/lang/Object;
    //   108: pop
    //   109: aload 7
    //   111: invokevirtual 708	jcifs/smb/SmbComTransaction:hasMoreElements	()Z
    //   114: ifeq +225 -> 339
    //   117: new 79	jcifs/smb/SmbComBlankResponse
    //   120: dup
    //   121: invokespecial 80	jcifs/smb/SmbComBlankResponse:<init>	()V
    //   124: astore 9
    //   126: aload_0
    //   127: aload 7
    //   129: aload 9
    //   131: getstatic 463	jcifs/smb/SmbTransport:RESPONSE_TIMEOUT	I
    //   134: i2l
    //   135: invokespecial 712	jcifs/util/transport/Transport:sendrecv	(Ljcifs/util/transport/Request;Ljcifs/util/transport/Response;J)V
    //   138: aload 9
    //   140: getfield 713	jcifs/smb/SmbComBlankResponse:errorCode	I
    //   143: ifeq +11 -> 154
    //   146: aload_0
    //   147: aload 7
    //   149: aload 9
    //   151: invokevirtual 715	jcifs/smb/SmbTransport:checkStatus	(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    //   154: aload 7
    //   156: invokevirtual 705	jcifs/smb/SmbComTransaction:nextElement	()Ljava/lang/Object;
    //   159: pop
    //   160: aload_0
    //   161: monitorenter
    //   162: aload_2
    //   163: iconst_0
    //   164: putfield 718	jcifs/smb/ServerMessageBlock:received	Z
    //   167: aload 8
    //   169: iconst_0
    //   170: putfield 721	jcifs/smb/SmbComTransactionResponse:isReceived	Z
    //   173: aload_0
    //   174: getfield 724	jcifs/smb/SmbTransport:response_map	Ljava/util/HashMap;
    //   177: aload 7
    //   179: aload 8
    //   181: invokevirtual 730	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   184: pop
    //   185: aload_0
    //   186: aload 7
    //   188: invokevirtual 692	jcifs/smb/SmbTransport:doSend0	(Ljcifs/util/transport/Request;)V
    //   191: aload 7
    //   193: invokevirtual 708	jcifs/smb/SmbComTransaction:hasMoreElements	()Z
    //   196: ifeq +11 -> 207
    //   199: aload 7
    //   201: invokevirtual 705	jcifs/smb/SmbComTransaction:nextElement	()Ljava/lang/Object;
    //   204: ifnonnull -19 -> 185
    //   207: getstatic 463	jcifs/smb/SmbTransport:RESPONSE_TIMEOUT	I
    //   210: i2l
    //   211: lstore_3
    //   212: aload 8
    //   214: invokestatic 88	java/lang/System:currentTimeMillis	()J
    //   217: lload_3
    //   218: ladd
    //   219: putfield 731	jcifs/smb/SmbComTransactionResponse:expiration	J
    //   222: aload 8
    //   224: invokevirtual 732	jcifs/smb/SmbComTransactionResponse:hasMoreElements	()Z
    //   227: ifeq +121 -> 348
    //   230: aload_0
    //   231: lload_3
    //   232: invokevirtual 737	java/lang/Object:wait	(J)V
    //   235: aload 8
    //   237: getfield 731	jcifs/smb/SmbComTransactionResponse:expiration	J
    //   240: invokestatic 88	java/lang/System:currentTimeMillis	()J
    //   243: lsub
    //   244: lstore 5
    //   246: lload 5
    //   248: lstore_3
    //   249: lload 5
    //   251: lconst_0
    //   252: lcmp
    //   253: ifgt -31 -> 222
    //   256: new 460	jcifs/util/transport/TransportException
    //   259: dup
    //   260: new 299	java/lang/StringBuilder
    //   263: dup
    //   264: invokespecial 300	java/lang/StringBuilder:<init>	()V
    //   267: aload_0
    //   268: invokevirtual 471	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   271: ldc_w 739
    //   274: invokevirtual 306	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   277: aload 7
    //   279: invokevirtual 471	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   282: invokevirtual 312	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   285: invokespecial 740	jcifs/util/transport/TransportException:<init>	(Ljava/lang/String;)V
    //   288: athrow
    //   289: astore_1
    //   290: new 460	jcifs/util/transport/TransportException
    //   293: dup
    //   294: aload_1
    //   295: invokespecial 743	jcifs/util/transport/TransportException:<init>	(Ljava/lang/Throwable;)V
    //   298: athrow
    //   299: astore_1
    //   300: aload_0
    //   301: getfield 724	jcifs/smb/SmbTransport:response_map	Ljava/util/HashMap;
    //   304: aload 7
    //   306: invokevirtual 747	java/util/HashMap:remove	(Ljava/lang/Object;)Ljava/lang/Object;
    //   309: pop
    //   310: aload_1
    //   311: athrow
    //   312: astore_1
    //   313: aload_0
    //   314: monitorexit
    //   315: aload_1
    //   316: athrow
    //   317: astore_1
    //   318: aload 7
    //   320: getfield 750	jcifs/smb/SmbComTransaction:txn_buf	[B
    //   323: invokestatic 754	jcifs/smb/BufferCache:releaseBuffer	([B)V
    //   326: aload 8
    //   328: getfield 755	jcifs/smb/SmbComTransactionResponse:txn_buf	[B
    //   331: invokestatic 754	jcifs/smb/BufferCache:releaseBuffer	([B)V
    //   334: aload_1
    //   335: athrow
    //   336: astore_1
    //   337: aload_1
    //   338: athrow
    //   339: aload_0
    //   340: aload 7
    //   342: invokevirtual 757	jcifs/smb/SmbTransport:makeKey	(Ljcifs/util/transport/Request;)V
    //   345: goto -185 -> 160
    //   348: aload_2
    //   349: getfield 420	jcifs/smb/ServerMessageBlock:errorCode	I
    //   352: ifeq +11 -> 363
    //   355: aload_0
    //   356: aload 7
    //   358: aload 8
    //   360: invokevirtual 715	jcifs/smb/SmbTransport:checkStatus	(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    //   363: aload_0
    //   364: getfield 724	jcifs/smb/SmbTransport:response_map	Ljava/util/HashMap;
    //   367: aload 7
    //   369: invokevirtual 747	java/util/HashMap:remove	(Ljava/lang/Object;)Ljava/lang/Object;
    //   372: pop
    //   373: aload_0
    //   374: monitorexit
    //   375: aload 7
    //   377: getfield 750	jcifs/smb/SmbComTransaction:txn_buf	[B
    //   380: invokestatic 754	jcifs/smb/BufferCache:releaseBuffer	([B)V
    //   383: aload 8
    //   385: getfield 755	jcifs/smb/SmbComTransactionResponse:txn_buf	[B
    //   388: invokestatic 754	jcifs/smb/BufferCache:releaseBuffer	([B)V
    //   391: aload_0
    //   392: aload_1
    //   393: aload_2
    //   394: invokevirtual 715	jcifs/smb/SmbTransport:checkStatus	(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    //   397: return
    //   398: aload_2
    //   399: aload_1
    //   400: getfield 569	jcifs/smb/ServerMessageBlock:command	B
    //   403: putfield 569	jcifs/smb/ServerMessageBlock:command	B
    //   406: aload_0
    //   407: aload_1
    //   408: aload_2
    //   409: getstatic 463	jcifs/smb/SmbTransport:RESPONSE_TIMEOUT	I
    //   412: i2l
    //   413: invokespecial 712	jcifs/util/transport/Transport:sendrecv	(Ljcifs/util/transport/Request;Ljcifs/util/transport/Response;J)V
    //   416: goto -25 -> 391
    //   419: astore_1
    //   420: new 422	jcifs/smb/SmbException
    //   423: dup
    //   424: aload_1
    //   425: invokevirtual 655	java/io/IOException:getMessage	()Ljava/lang/String;
    //   428: aload_1
    //   429: invokespecial 474	jcifs/smb/SmbException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   432: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	433	0	this	SmbTransport
    //   0	433	1	paramServerMessageBlock1	ServerMessageBlock
    //   0	433	2	paramServerMessageBlock2	ServerMessageBlock
    //   211	38	3	l1	long
    //   244	6	5	l2	long
    //   74	302	7	localSmbComTransaction	SmbComTransaction
    //   80	304	8	localSmbComTransactionResponse	SmbComTransactionResponse
    //   124	26	9	localSmbComBlankResponse	SmbComBlankResponse
    // Exception table:
    //   from	to	target	type
    //   173	185	289	java/lang/InterruptedException
    //   185	207	289	java/lang/InterruptedException
    //   207	222	289	java/lang/InterruptedException
    //   222	246	289	java/lang/InterruptedException
    //   256	289	289	java/lang/InterruptedException
    //   348	363	289	java/lang/InterruptedException
    //   173	185	299	finally
    //   185	207	299	finally
    //   207	222	299	finally
    //   222	246	299	finally
    //   256	289	299	finally
    //   290	299	299	finally
    //   348	363	299	finally
    //   162	173	312	finally
    //   300	312	312	finally
    //   313	315	312	finally
    //   363	375	312	finally
    //   96	154	317	finally
    //   154	160	317	finally
    //   160	162	317	finally
    //   315	317	317	finally
    //   339	345	317	finally
    //   49	54	336	jcifs/smb/SmbException
    //   55	96	336	jcifs/smb/SmbException
    //   318	336	336	jcifs/smb/SmbException
    //   375	391	336	jcifs/smb/SmbException
    //   398	416	336	jcifs/smb/SmbException
    //   49	54	419	java/io/IOException
    //   55	96	419	java/io/IOException
    //   318	336	419	java/io/IOException
    //   375	391	419	java/io/IOException
    //   398	416	419	java/io/IOException
  }
  
  void ssn139()
  {
    Object localObject1 = new Name(address.firstCalledName(), 32, null);
    for (;;)
    {
      socket = new Socket();
      if (localAddr != null) {
        socket.bind(new InetSocketAddress(localAddr, localPort));
      }
      socket.connect(new InetSocketAddress(address.getHostAddress(), 139), CONN_TIMEOUT);
      socket.setSoTimeout(SO_TIMEOUT);
      out = socket.getOutputStream();
      in = socket.getInputStream();
      Object localObject2 = new SessionRequestPacket((Name)localObject1, NbtAddress.getLocalName());
      out.write(sbuf, 0, ((SessionServicePacket)localObject2).writeWireFormat(sbuf, 0));
      if (readn(in, sbuf, 0, 4) < 4) {}
      try
      {
        socket.close();
        throw new SmbException("EOF during NetBIOS session request");
        switch (sbuf[0] & 0xFF)
        {
        default: 
          disconnect(true);
          throw new NbtException(2, 0);
        case 130: 
          localObject1 = log;
          if (LogStream.level >= 4) {
            log.println("session established ok with " + address);
          }
          return;
        case 131: 
          int i = in.read() & 0xFF;
          switch (i)
          {
          case 129: 
          default: 
            disconnect(true);
            throw new NbtException(2, i);
          }
          socket.close();
          localObject2 = address.nextCalledName();
          name = ((String)localObject2);
          if (localObject2 != null) {
            continue;
          }
          throw new IOException("Failed to establish session with " + address);
        case -1: 
          disconnect(true);
          throw new NbtException(2, -1);
        }
      }
      catch (IOException localIOException)
      {
        for (;;) {}
      }
    }
  }
  
  public String toString()
  {
    return super.toString() + "[" + address + ":" + port + "]";
  }
}

/* Location:
 * Qualified Name:     jcifs.smb.SmbTransport
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
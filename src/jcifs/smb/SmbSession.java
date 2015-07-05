package jcifs.smb;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.Enumeration;
import java.util.Vector;
import jcifs.Config;
import jcifs.UniAddress;
import jcifs.netbios.NbtAddress;
import jcifs.util.LogStream;

public final class SmbSession
{
  private static final int CACHE_POLICY = Config.getInt("jcifs.netbios.cachePolicy", 600) * 60;
  private static final String DOMAIN;
  private static final String LOGON_SHARE = Config.getProperty("jcifs.smb.client.logonShare", null);
  private static final int LOOKUP_RESP_LIMIT = Config.getInt("jcifs.netbios.lookupRespLimit", 3);
  private static final String USERNAME;
  static NbtAddress[] dc_list = null;
  static int dc_list_counter;
  static long dc_list_expiration;
  private UniAddress address;
  NtlmPasswordAuthentication auth;
  int connectionState;
  long expiration;
  private InetAddress localAddr;
  private int localPort;
  String netbiosName = null;
  private int port;
  public boolean server_is_windows = false;
  SmbTransport transport = null;
  Vector trees;
  int uid;
  
  static
  {
    DOMAIN = Config.getProperty("jcifs.smb.client.domain", null);
    USERNAME = Config.getProperty("jcifs.smb.client.username", null);
  }
  
  SmbSession(UniAddress paramUniAddress, int paramInt1, InetAddress paramInetAddress, int paramInt2, NtlmPasswordAuthentication paramNtlmPasswordAuthentication)
  {
    address = paramUniAddress;
    port = paramInt1;
    localAddr = paramInetAddress;
    localPort = paramInt2;
    auth = paramNtlmPasswordAuthentication;
    trees = new Vector();
    connectionState = 0;
  }
  
  public static byte[] getChallenge(UniAddress paramUniAddress)
  {
    return getChallenge(paramUniAddress, 0);
  }
  
  public static byte[] getChallenge(UniAddress paramUniAddress, int paramInt)
  {
    paramUniAddress = SmbTransport.getSmbTransport(paramUniAddress, paramInt);
    paramUniAddress.connect();
    return server.encryptionKey;
  }
  
  public static NtlmChallenge getChallengeForDomain()
  {
    if (DOMAIN == null) {
      throw new SmbException("A domain was not specified");
    }
    for (;;)
    {
      long l;
      int i;
      int j;
      int m;
      synchronized (DOMAIN)
      {
        l = System.currentTimeMillis();
        i = 1;
        if (dc_list_expiration < l)
        {
          localObject1 = NbtAddress.getAllByName(DOMAIN, 28, null, null);
          dc_list_expiration = CACHE_POLICY * 1000L + l;
          if ((localObject1 != null) && (localObject1.length > 0)) {
            dc_list = (NbtAddress[])localObject1;
          }
        }
        else
        {
          int k = Math.min(dc_list.length, LOOKUP_RESP_LIMIT);
          j = 0;
          if (j >= k) {
            break label254;
          }
          m = dc_list_counter;
          dc_list_counter = m + 1;
          m %= k;
          localObject1 = dc_list[m];
          if (localObject1 == null) {
            break label310;
          }
        }
        try
        {
          localObject1 = interrogate(dc_list[m]);
          return (NtlmChallenge)localObject1;
        }
        catch (SmbException localSmbException)
        {
          LogStream localLogStream = SmbTransport.log;
          if (LogStream.level < 2) {
            break label245;
          }
          SmbTransport.log.println("Failed validate DC: " + dc_list[m]);
          localLogStream = SmbTransport.log;
          if (LogStream.level <= 2) {
            break label245;
          }
          localSmbException.printStackTrace(SmbTransport.log);
          dc_list[m] = null;
        }
        dc_list_expiration = l + 900000L;
        Object localObject1 = SmbTransport.log;
        if (LogStream.level < 2) {
          continue;
        }
        SmbTransport.log.println("Failed to retrieve DC list from WINS");
      }
      label245:
      label254:
      dc_list_expiration = 0L;
      if (i <= 0)
      {
        dc_list_expiration = l + 900000L;
        throw new UnknownHostException("Failed to negotiate with a suitable domain controller for " + DOMAIN);
      }
      i -= 1;
      continue;
      label310:
      j += 1;
    }
  }
  
  private static NtlmChallenge interrogate(NbtAddress paramNbtAddress)
  {
    paramNbtAddress = new UniAddress(paramNbtAddress);
    SmbTransport localSmbTransport = SmbTransport.getSmbTransport(paramNbtAddress, 0);
    if (USERNAME == null)
    {
      localSmbTransport.connect();
      LogStream localLogStream = SmbTransport.log;
      if (LogStream.level >= 3) {
        SmbTransport.log.println("Default credentials (jcifs.smb.client.username/password) not specified. SMB signing may not work propertly.  Skipping DC interrogation.");
      }
    }
    for (;;)
    {
      return new NtlmChallenge(server.encryptionKey, paramNbtAddress);
      localSmbTransport.getSmbSession(NtlmPasswordAuthentication.DEFAULT).getSmbTree(LOGON_SHARE, null).treeConnect(null, null);
    }
  }
  
  public static void logon(UniAddress paramUniAddress, int paramInt, NtlmPasswordAuthentication paramNtlmPasswordAuthentication)
  {
    paramUniAddress = SmbTransport.getSmbTransport(paramUniAddress, paramInt).getSmbSession(paramNtlmPasswordAuthentication).getSmbTree(LOGON_SHARE, null);
    if (LOGON_SHARE == null)
    {
      paramUniAddress.treeConnect(null, null);
      return;
    }
    paramUniAddress.send(new Trans2FindFirst2("\\", "*", 16), new Trans2FindFirst2Response());
  }
  
  public static void logon(UniAddress paramUniAddress, NtlmPasswordAuthentication paramNtlmPasswordAuthentication)
  {
    logon(paramUniAddress, 0, paramNtlmPasswordAuthentication);
  }
  
  /* Error */
  SmbTree getSmbTree(String paramString1, String paramString2)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_1
    //   3: astore 4
    //   5: aload_1
    //   6: ifnonnull +7 -> 13
    //   9: ldc -5
    //   11: astore 4
    //   13: aload_0
    //   14: getfield 94	jcifs/smb/SmbSession:trees	Ljava/util/Vector;
    //   17: invokevirtual 255	java/util/Vector:elements	()Ljava/util/Enumeration;
    //   20: astore 5
    //   22: aload 5
    //   24: invokeinterface 261 1 0
    //   29: ifeq +30 -> 59
    //   32: aload 5
    //   34: invokeinterface 265 1 0
    //   39: checkcast 225	jcifs/smb/SmbTree
    //   42: astore_1
    //   43: aload_1
    //   44: aload 4
    //   46: aload_2
    //   47: invokevirtual 269	jcifs/smb/SmbTree:matches	(Ljava/lang/String;Ljava/lang/String;)Z
    //   50: istore_3
    //   51: iload_3
    //   52: ifeq -30 -> 22
    //   55: aload_0
    //   56: monitorexit
    //   57: aload_1
    //   58: areturn
    //   59: new 225	jcifs/smb/SmbTree
    //   62: dup
    //   63: aload_0
    //   64: aload 4
    //   66: aload_2
    //   67: invokespecial 272	jcifs/smb/SmbTree:<init>	(Ljcifs/smb/SmbSession;Ljava/lang/String;Ljava/lang/String;)V
    //   70: astore_1
    //   71: aload_0
    //   72: getfield 94	jcifs/smb/SmbSession:trees	Ljava/util/Vector;
    //   75: aload_1
    //   76: invokevirtual 275	java/util/Vector:addElement	(Ljava/lang/Object;)V
    //   79: goto -24 -> 55
    //   82: astore_1
    //   83: aload_0
    //   84: monitorexit
    //   85: aload_1
    //   86: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	87	0	this	SmbSession
    //   0	87	1	paramString1	String
    //   0	87	2	paramString2	String
    //   50	2	3	bool	boolean
    //   3	62	4	str	String
    //   20	13	5	localEnumeration	Enumeration
    // Exception table:
    //   from	to	target	type
    //   13	22	82	finally
    //   22	51	82	finally
    //   59	79	82	finally
  }
  
  void logoff(boolean paramBoolean)
  {
    synchronized (transport())
    {
      if (connectionState != 2) {
        return;
      }
      connectionState = 3;
      netbiosName = null;
      Enumeration localEnumeration = trees.elements();
      if (localEnumeration.hasMoreElements()) {
        ((SmbTree)localEnumeration.nextElement()).treeDisconnect(paramBoolean);
      }
    }
    SmbComLogoffAndX localSmbComLogoffAndX;
    if ((!paramBoolean) && (transport.server.security != 0))
    {
      localSmbComLogoffAndX = new SmbComLogoffAndX(null);
      uid = uid;
    }
    try
    {
      transport.send(localSmbComLogoffAndX, null);
      uid = 0;
      connectionState = 0;
      transport.notifyAll();
      return;
    }
    catch (SmbException localSmbException)
    {
      for (;;) {}
    }
  }
  
  boolean matches(NtlmPasswordAuthentication paramNtlmPasswordAuthentication)
  {
    return (auth == paramNtlmPasswordAuthentication) || (auth.equals(paramNtlmPasswordAuthentication));
  }
  
  /* Error */
  void send(ServerMessageBlock paramServerMessageBlock1, ServerMessageBlock paramServerMessageBlock2)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 280	jcifs/smb/SmbSession:transport	()Ljcifs/smb/SmbTransport;
    //   4: astore_3
    //   5: aload_3
    //   6: monitorenter
    //   7: aload_2
    //   8: ifnull +8 -> 16
    //   11: aload_2
    //   12: iconst_0
    //   13: putfield 308	jcifs/smb/ServerMessageBlock:received	Z
    //   16: aload_0
    //   17: invokestatic 135	java/lang/System:currentTimeMillis	()J
    //   20: getstatic 311	jcifs/smb/SmbTransport:SO_TIMEOUT	I
    //   23: i2l
    //   24: ladd
    //   25: putfield 313	jcifs/smb/SmbSession:expiration	J
    //   28: aload_0
    //   29: aload_1
    //   30: aload_2
    //   31: invokevirtual 316	jcifs/smb/SmbSession:sessionSetup	(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    //   34: aload_2
    //   35: ifnull +13 -> 48
    //   38: aload_2
    //   39: getfield 308	jcifs/smb/ServerMessageBlock:received	Z
    //   42: ifeq +6 -> 48
    //   45: aload_3
    //   46: monitorexit
    //   47: return
    //   48: aload_1
    //   49: instanceof 318
    //   52: ifeq +64 -> 116
    //   55: aload_1
    //   56: checkcast 318	jcifs/smb/SmbComTreeConnectAndX
    //   59: astore 4
    //   61: aload_0
    //   62: getfield 79	jcifs/smb/SmbSession:netbiosName	Ljava/lang/String;
    //   65: ifnull +51 -> 116
    //   68: aload 4
    //   70: getfield 321	jcifs/smb/SmbComTreeConnectAndX:path	Ljava/lang/String;
    //   73: ldc_w 323
    //   76: invokevirtual 329	java/lang/String:endsWith	(Ljava/lang/String;)Z
    //   79: ifeq +37 -> 116
    //   82: aload 4
    //   84: new 175	java/lang/StringBuilder
    //   87: dup
    //   88: invokespecial 176	java/lang/StringBuilder:<init>	()V
    //   91: ldc_w 331
    //   94: invokevirtual 182	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   97: aload_0
    //   98: getfield 79	jcifs/smb/SmbSession:netbiosName	Ljava/lang/String;
    //   101: invokevirtual 182	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   104: ldc_w 323
    //   107: invokevirtual 182	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   110: invokevirtual 189	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   113: putfield 321	jcifs/smb/SmbComTreeConnectAndX:path	Ljava/lang/String;
    //   116: aload_1
    //   117: aload_0
    //   118: getfield 293	jcifs/smb/SmbSession:uid	I
    //   121: putfield 332	jcifs/smb/ServerMessageBlock:uid	I
    //   124: aload_1
    //   125: aload_0
    //   126: getfield 89	jcifs/smb/SmbSession:auth	Ljcifs/smb/NtlmPasswordAuthentication;
    //   129: putfield 333	jcifs/smb/ServerMessageBlock:auth	Ljcifs/smb/NtlmPasswordAuthentication;
    //   132: aload_0
    //   133: getfield 77	jcifs/smb/SmbSession:transport	Ljcifs/smb/SmbTransport;
    //   136: aload_1
    //   137: aload_2
    //   138: invokevirtual 295	jcifs/smb/SmbTransport:send	(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    //   141: aload_3
    //   142: monitorexit
    //   143: return
    //   144: astore_1
    //   145: aload_3
    //   146: monitorexit
    //   147: aload_1
    //   148: athrow
    //   149: astore_2
    //   150: aload_1
    //   151: instanceof 318
    //   154: ifeq +8 -> 162
    //   157: aload_0
    //   158: iconst_1
    //   159: invokevirtual 335	jcifs/smb/SmbSession:logoff	(Z)V
    //   162: aload_1
    //   163: aconst_null
    //   164: putfield 339	jcifs/smb/ServerMessageBlock:digest	Ljcifs/smb/SigningDigest;
    //   167: aload_2
    //   168: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	169	0	this	SmbSession
    //   0	169	1	paramServerMessageBlock1	ServerMessageBlock
    //   0	169	2	paramServerMessageBlock2	ServerMessageBlock
    //   4	142	3	localSmbTransport	SmbTransport
    //   59	24	4	localSmbComTreeConnectAndX	SmbComTreeConnectAndX
    // Exception table:
    //   from	to	target	type
    //   11	16	144	finally
    //   16	34	144	finally
    //   38	47	144	finally
    //   48	116	144	finally
    //   116	132	144	finally
    //   132	141	144	finally
    //   141	143	144	finally
    //   145	147	144	finally
    //   150	162	144	finally
    //   162	169	144	finally
    //   132	141	149	jcifs/smb/SmbException
  }
  
  /* Error */
  void sessionSetup(ServerMessageBlock paramServerMessageBlock1, ServerMessageBlock paramServerMessageBlock2)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 8
    //   3: aload_0
    //   4: invokevirtual 280	jcifs/smb/SmbSession:transport	()Ljcifs/smb/SmbTransport;
    //   7: astore 9
    //   9: aload 9
    //   11: monitorenter
    //   12: aload_0
    //   13: getfield 96	jcifs/smb/SmbSession:connectionState	I
    //   16: ifeq +53 -> 69
    //   19: aload_0
    //   20: getfield 96	jcifs/smb/SmbSession:connectionState	I
    //   23: iconst_2
    //   24: if_icmpeq +11 -> 35
    //   27: aload_0
    //   28: getfield 96	jcifs/smb/SmbSession:connectionState	I
    //   31: iconst_3
    //   32: if_icmpne +7 -> 39
    //   35: aload 9
    //   37: monitorexit
    //   38: return
    //   39: aload_0
    //   40: getfield 77	jcifs/smb/SmbSession:transport	Ljcifs/smb/SmbTransport;
    //   43: invokevirtual 350	java/lang/Object:wait	()V
    //   46: goto -34 -> 12
    //   49: astore_1
    //   50: new 124	jcifs/smb/SmbException
    //   53: dup
    //   54: aload_1
    //   55: invokevirtual 353	java/lang/InterruptedException:getMessage	()Ljava/lang/String;
    //   58: aload_1
    //   59: invokespecial 356	jcifs/smb/SmbException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   62: athrow
    //   63: astore_1
    //   64: aload 9
    //   66: monitorexit
    //   67: aload_1
    //   68: athrow
    //   69: aload_0
    //   70: iconst_1
    //   71: putfield 96	jcifs/smb/SmbSession:connectionState	I
    //   74: aload_0
    //   75: getfield 77	jcifs/smb/SmbSession:transport	Ljcifs/smb/SmbTransport;
    //   78: invokevirtual 110	jcifs/smb/SmbTransport:connect	()V
    //   81: aload_0
    //   82: getfield 77	jcifs/smb/SmbSession:transport	Ljcifs/smb/SmbTransport;
    //   85: astore 5
    //   87: getstatic 163	jcifs/smb/SmbTransport:log	Ljcifs/util/LogStream;
    //   90: astore 5
    //   92: getstatic 168	jcifs/util/LogStream:level	I
    //   95: iconst_4
    //   96: if_icmplt +57 -> 153
    //   99: aload_0
    //   100: getfield 77	jcifs/smb/SmbSession:transport	Ljcifs/smb/SmbTransport;
    //   103: astore 5
    //   105: getstatic 163	jcifs/smb/SmbTransport:log	Ljcifs/util/LogStream;
    //   108: new 175	java/lang/StringBuilder
    //   111: dup
    //   112: invokespecial 176	java/lang/StringBuilder:<init>	()V
    //   115: ldc_w 358
    //   118: invokevirtual 182	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   121: aload_0
    //   122: getfield 89	jcifs/smb/SmbSession:auth	Ljcifs/smb/NtlmPasswordAuthentication;
    //   125: getfield 361	jcifs/smb/NtlmPasswordAuthentication:username	Ljava/lang/String;
    //   128: invokevirtual 182	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   131: ldc_w 363
    //   134: invokevirtual 182	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   137: aload_0
    //   138: getfield 89	jcifs/smb/SmbSession:auth	Ljcifs/smb/NtlmPasswordAuthentication;
    //   141: getfield 366	jcifs/smb/NtlmPasswordAuthentication:domain	Ljava/lang/String;
    //   144: invokevirtual 182	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   147: invokevirtual 189	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   150: invokevirtual 173	jcifs/util/LogStream:println	(Ljava/lang/String;)V
    //   153: aload_0
    //   154: iconst_0
    //   155: putfield 293	jcifs/smb/SmbSession:uid	I
    //   158: bipush 10
    //   160: istore_3
    //   161: iconst_0
    //   162: newarray <illegal type>
    //   164: astore 5
    //   166: aconst_null
    //   167: astore 7
    //   169: goto +781 -> 950
    //   172: new 124	jcifs/smb/SmbException
    //   175: dup
    //   176: new 175	java/lang/StringBuilder
    //   179: dup
    //   180: invokespecial 176	java/lang/StringBuilder:<init>	()V
    //   183: ldc_w 368
    //   186: invokevirtual 182	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   189: iload_3
    //   190: invokevirtual 371	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   193: invokevirtual 189	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   196: invokespecial 129	jcifs/smb/SmbException:<init>	(Ljava/lang/String;)V
    //   199: athrow
    //   200: astore_1
    //   201: aload_0
    //   202: iconst_1
    //   203: invokevirtual 335	jcifs/smb/SmbSession:logoff	(Z)V
    //   206: aload_0
    //   207: iconst_0
    //   208: putfield 96	jcifs/smb/SmbSession:connectionState	I
    //   211: aload_1
    //   212: athrow
    //   213: astore_1
    //   214: aload_0
    //   215: getfield 77	jcifs/smb/SmbSession:transport	Ljcifs/smb/SmbTransport;
    //   218: invokevirtual 298	java/lang/Object:notifyAll	()V
    //   221: aload_1
    //   222: athrow
    //   223: aload_0
    //   224: getfield 89	jcifs/smb/SmbSession:auth	Ljcifs/smb/NtlmPasswordAuthentication;
    //   227: getstatic 374	jcifs/smb/NtlmPasswordAuthentication:ANONYMOUS	Ljcifs/smb/NtlmPasswordAuthentication;
    //   230: if_acmpeq +42 -> 272
    //   233: aload_0
    //   234: getfield 77	jcifs/smb/SmbSession:transport	Ljcifs/smb/SmbTransport;
    //   237: ldc_w 375
    //   240: invokevirtual 379	jcifs/smb/SmbTransport:hasCapability	(I)Z
    //   243: istore 4
    //   245: iload 4
    //   247: ifeq +25 -> 272
    //   250: bipush 20
    //   252: istore_3
    //   253: aload 7
    //   255: astore 6
    //   257: iload_3
    //   258: ifne +688 -> 946
    //   261: aload_0
    //   262: getfield 77	jcifs/smb/SmbSession:transport	Ljcifs/smb/SmbTransport;
    //   265: invokevirtual 298	java/lang/Object:notifyAll	()V
    //   268: aload 9
    //   270: monitorexit
    //   271: return
    //   272: new 381	jcifs/smb/SmbComSessionSetupAndX
    //   275: dup
    //   276: aload_0
    //   277: aload_1
    //   278: aload_0
    //   279: getfield 89	jcifs/smb/SmbSession:auth	Ljcifs/smb/NtlmPasswordAuthentication;
    //   282: invokespecial 384	jcifs/smb/SmbComSessionSetupAndX:<init>	(Ljcifs/smb/SmbSession;Ljcifs/smb/ServerMessageBlock;Ljava/lang/Object;)V
    //   285: astore 6
    //   287: new 386	jcifs/smb/SmbComSessionSetupAndXResponse
    //   290: dup
    //   291: aload_2
    //   292: invokespecial 387	jcifs/smb/SmbComSessionSetupAndXResponse:<init>	(Ljcifs/smb/ServerMessageBlock;)V
    //   295: astore 10
    //   297: aload_0
    //   298: getfield 77	jcifs/smb/SmbSession:transport	Ljcifs/smb/SmbTransport;
    //   301: aload_0
    //   302: getfield 89	jcifs/smb/SmbSession:auth	Ljcifs/smb/NtlmPasswordAuthentication;
    //   305: invokevirtual 390	jcifs/smb/SmbTransport:isSignatureSetupRequired	(Ljcifs/smb/NtlmPasswordAuthentication;)Z
    //   308: ifeq +44 -> 352
    //   311: aload_0
    //   312: getfield 89	jcifs/smb/SmbSession:auth	Ljcifs/smb/NtlmPasswordAuthentication;
    //   315: getfield 393	jcifs/smb/NtlmPasswordAuthentication:hashesExternal	Z
    //   318: ifeq +112 -> 430
    //   321: getstatic 396	jcifs/smb/NtlmPasswordAuthentication:DEFAULT_PASSWORD	Ljava/lang/String;
    //   324: ldc_w 398
    //   327: if_acmpeq +103 -> 430
    //   330: aload_0
    //   331: getfield 77	jcifs/smb/SmbSession:transport	Ljcifs/smb/SmbTransport;
    //   334: getstatic 215	jcifs/smb/NtlmPasswordAuthentication:DEFAULT	Ljcifs/smb/NtlmPasswordAuthentication;
    //   337: invokevirtual 219	jcifs/smb/SmbTransport:getSmbSession	(Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/SmbSession;
    //   340: getstatic 46	jcifs/smb/SmbSession:LOGON_SHARE	Ljava/lang/String;
    //   343: aconst_null
    //   344: invokevirtual 223	jcifs/smb/SmbSession:getSmbTree	(Ljava/lang/String;Ljava/lang/String;)Ljcifs/smb/SmbTree;
    //   347: aconst_null
    //   348: aconst_null
    //   349: invokevirtual 229	jcifs/smb/SmbTree:treeConnect	(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    //   352: aload 6
    //   354: aload_0
    //   355: getfield 89	jcifs/smb/SmbSession:auth	Ljcifs/smb/NtlmPasswordAuthentication;
    //   358: putfield 399	jcifs/smb/SmbComSessionSetupAndX:auth	Ljcifs/smb/NtlmPasswordAuthentication;
    //   361: aload_0
    //   362: getfield 77	jcifs/smb/SmbSession:transport	Ljcifs/smb/SmbTransport;
    //   365: aload 6
    //   367: aload 10
    //   369: invokevirtual 295	jcifs/smb/SmbTransport:send	(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    //   372: aload 10
    //   374: getfield 402	jcifs/smb/SmbComSessionSetupAndXResponse:isLoggedInAsGuest	Z
    //   377: ifeq +89 -> 466
    //   380: ldc_w 404
    //   383: aload_0
    //   384: getfield 89	jcifs/smb/SmbSession:auth	Ljcifs/smb/NtlmPasswordAuthentication;
    //   387: getfield 361	jcifs/smb/NtlmPasswordAuthentication:username	Ljava/lang/String;
    //   390: invokevirtual 407	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   393: ifne +73 -> 466
    //   396: aload_0
    //   397: getfield 77	jcifs/smb/SmbSession:transport	Ljcifs/smb/SmbTransport;
    //   400: getfield 114	jcifs/smb/SmbTransport:server	Ljcifs/smb/SmbTransport$ServerData;
    //   403: getfield 286	jcifs/smb/SmbTransport$ServerData:security	I
    //   406: ifeq +60 -> 466
    //   409: aload_0
    //   410: getfield 89	jcifs/smb/SmbSession:auth	Ljcifs/smb/NtlmPasswordAuthentication;
    //   413: getstatic 374	jcifs/smb/NtlmPasswordAuthentication:ANONYMOUS	Ljcifs/smb/NtlmPasswordAuthentication;
    //   416: if_acmpeq +50 -> 466
    //   419: new 343	jcifs/smb/SmbAuthException
    //   422: dup
    //   423: ldc_w 408
    //   426: invokespecial 411	jcifs/smb/SmbAuthException:<init>	(I)V
    //   429: athrow
    //   430: aload 6
    //   432: new 413	jcifs/smb/SigningDigest
    //   435: dup
    //   436: aload_0
    //   437: getfield 89	jcifs/smb/SmbSession:auth	Ljcifs/smb/NtlmPasswordAuthentication;
    //   440: aload_0
    //   441: getfield 77	jcifs/smb/SmbSession:transport	Ljcifs/smb/SmbTransport;
    //   444: getfield 114	jcifs/smb/SmbTransport:server	Ljcifs/smb/SmbTransport$ServerData;
    //   447: getfield 120	jcifs/smb/SmbTransport$ServerData:encryptionKey	[B
    //   450: invokevirtual 417	jcifs/smb/NtlmPasswordAuthentication:getSigningKey	([B)[B
    //   453: iconst_0
    //   454: invokespecial 420	jcifs/smb/SigningDigest:<init>	([BZ)V
    //   457: putfield 421	jcifs/smb/SmbComSessionSetupAndX:digest	Ljcifs/smb/SigningDigest;
    //   460: goto -108 -> 352
    //   463: astore_1
    //   464: aload_1
    //   465: athrow
    //   466: aload 8
    //   468: ifnull +6 -> 474
    //   471: aload 8
    //   473: athrow
    //   474: aload_0
    //   475: aload 10
    //   477: getfield 422	jcifs/smb/SmbComSessionSetupAndXResponse:uid	I
    //   480: putfield 293	jcifs/smb/SmbSession:uid	I
    //   483: aload 6
    //   485: getfield 421	jcifs/smb/SmbComSessionSetupAndX:digest	Ljcifs/smb/SigningDigest;
    //   488: ifnull +15 -> 503
    //   491: aload_0
    //   492: getfield 77	jcifs/smb/SmbSession:transport	Ljcifs/smb/SmbTransport;
    //   495: aload 6
    //   497: getfield 421	jcifs/smb/SmbComSessionSetupAndX:digest	Ljcifs/smb/SigningDigest;
    //   500: putfield 423	jcifs/smb/SmbTransport:digest	Ljcifs/smb/SigningDigest;
    //   503: aload_0
    //   504: iconst_2
    //   505: putfield 96	jcifs/smb/SmbSession:connectionState	I
    //   508: aload 10
    //   510: getfield 426	jcifs/smb/SmbComSessionSetupAndXResponse:nativeOs	Ljava/lang/String;
    //   513: ifnull +471 -> 984
    //   516: aload 10
    //   518: getfield 426	jcifs/smb/SmbComSessionSetupAndXResponse:nativeOs	Ljava/lang/String;
    //   521: invokevirtual 429	java/lang/String:toLowerCase	()Ljava/lang/String;
    //   524: ldc_w 431
    //   527: invokevirtual 435	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   530: ifne +454 -> 984
    //   533: aload 10
    //   535: getfield 426	jcifs/smb/SmbComSessionSetupAndXResponse:nativeOs	Ljava/lang/String;
    //   538: invokevirtual 439	java/lang/String:length	()I
    //   541: ifne +449 -> 990
    //   544: goto +440 -> 984
    //   547: aload_0
    //   548: iload 4
    //   550: putfield 75	jcifs/smb/SmbSession:server_is_windows	Z
    //   553: iconst_0
    //   554: istore_3
    //   555: aload 7
    //   557: astore 6
    //   559: goto -302 -> 257
    //   562: aload 7
    //   564: astore 6
    //   566: aload 7
    //   568: ifnonnull +33 -> 601
    //   571: aload_0
    //   572: getfield 77	jcifs/smb/SmbSession:transport	Ljcifs/smb/SmbTransport;
    //   575: getfield 442	jcifs/smb/SmbTransport:flags2	I
    //   578: iconst_4
    //   579: iand
    //   580: ifeq +68 -> 648
    //   583: iconst_1
    //   584: istore 4
    //   586: new 444	jcifs/smb/NtlmContext
    //   589: dup
    //   590: aload_0
    //   591: getfield 89	jcifs/smb/SmbSession:auth	Ljcifs/smb/NtlmPasswordAuthentication;
    //   594: iload 4
    //   596: invokespecial 447	jcifs/smb/NtlmContext:<init>	(Ljcifs/smb/NtlmPasswordAuthentication;Z)V
    //   599: astore 6
    //   601: getstatic 163	jcifs/smb/SmbTransport:log	Ljcifs/util/LogStream;
    //   604: astore 7
    //   606: getstatic 168	jcifs/util/LogStream:level	I
    //   609: iconst_4
    //   610: if_icmplt +11 -> 621
    //   613: getstatic 163	jcifs/smb/SmbTransport:log	Ljcifs/util/LogStream;
    //   616: aload 6
    //   618: invokevirtual 449	jcifs/util/LogStream:println	(Ljava/lang/Object;)V
    //   621: aload 6
    //   623: invokevirtual 452	jcifs/smb/NtlmContext:isEstablished	()Z
    //   626: ifeq +28 -> 654
    //   629: aload_0
    //   630: aload 6
    //   632: invokevirtual 455	jcifs/smb/NtlmContext:getNetbiosName	()Ljava/lang/String;
    //   635: putfield 79	jcifs/smb/SmbSession:netbiosName	Ljava/lang/String;
    //   638: aload_0
    //   639: iconst_2
    //   640: putfield 96	jcifs/smb/SmbSession:connectionState	I
    //   643: iconst_0
    //   644: istore_3
    //   645: goto -388 -> 257
    //   648: iconst_0
    //   649: istore 4
    //   651: goto -65 -> 586
    //   654: aload 6
    //   656: aload 5
    //   658: iconst_0
    //   659: aload 5
    //   661: arraylength
    //   662: invokevirtual 459	jcifs/smb/NtlmContext:initSecContext	([BII)[B
    //   665: astore 5
    //   667: aload 5
    //   669: ifnull +274 -> 943
    //   672: new 381	jcifs/smb/SmbComSessionSetupAndX
    //   675: dup
    //   676: aload_0
    //   677: aconst_null
    //   678: aload 5
    //   680: invokespecial 384	jcifs/smb/SmbComSessionSetupAndX:<init>	(Ljcifs/smb/SmbSession;Ljcifs/smb/ServerMessageBlock;Ljava/lang/Object;)V
    //   683: astore 10
    //   685: new 386	jcifs/smb/SmbComSessionSetupAndXResponse
    //   688: dup
    //   689: aconst_null
    //   690: invokespecial 387	jcifs/smb/SmbComSessionSetupAndXResponse:<init>	(Ljcifs/smb/ServerMessageBlock;)V
    //   693: astore 7
    //   695: aload_0
    //   696: getfield 77	jcifs/smb/SmbSession:transport	Ljcifs/smb/SmbTransport;
    //   699: aload_0
    //   700: getfield 89	jcifs/smb/SmbSession:auth	Ljcifs/smb/NtlmPasswordAuthentication;
    //   703: invokevirtual 390	jcifs/smb/SmbTransport:isSignatureSetupRequired	(Ljcifs/smb/NtlmPasswordAuthentication;)Z
    //   706: ifeq +30 -> 736
    //   709: aload 6
    //   711: invokevirtual 462	jcifs/smb/NtlmContext:getSigningKey	()[B
    //   714: astore 5
    //   716: aload 5
    //   718: ifnull +18 -> 736
    //   721: aload 10
    //   723: new 413	jcifs/smb/SigningDigest
    //   726: dup
    //   727: aload 5
    //   729: iconst_1
    //   730: invokespecial 420	jcifs/smb/SigningDigest:<init>	([BZ)V
    //   733: putfield 421	jcifs/smb/SmbComSessionSetupAndX:digest	Ljcifs/smb/SigningDigest;
    //   736: aload 10
    //   738: aload_0
    //   739: getfield 293	jcifs/smb/SmbSession:uid	I
    //   742: putfield 463	jcifs/smb/SmbComSessionSetupAndX:uid	I
    //   745: aload_0
    //   746: iconst_0
    //   747: putfield 293	jcifs/smb/SmbSession:uid	I
    //   750: aload_0
    //   751: getfield 77	jcifs/smb/SmbSession:transport	Ljcifs/smb/SmbTransport;
    //   754: aload 10
    //   756: aload 7
    //   758: invokevirtual 295	jcifs/smb/SmbTransport:send	(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    //   761: aload 7
    //   763: getfield 402	jcifs/smb/SmbComSessionSetupAndXResponse:isLoggedInAsGuest	Z
    //   766: ifeq +75 -> 841
    //   769: ldc_w 404
    //   772: aload_0
    //   773: getfield 89	jcifs/smb/SmbSession:auth	Ljcifs/smb/NtlmPasswordAuthentication;
    //   776: getfield 361	jcifs/smb/NtlmPasswordAuthentication:username	Ljava/lang/String;
    //   779: invokevirtual 407	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   782: ifne +59 -> 841
    //   785: new 343	jcifs/smb/SmbAuthException
    //   788: dup
    //   789: ldc_w 408
    //   792: invokespecial 411	jcifs/smb/SmbAuthException:<init>	(I)V
    //   795: athrow
    //   796: astore_1
    //   797: aload_0
    //   798: getfield 77	jcifs/smb/SmbSession:transport	Ljcifs/smb/SmbTransport;
    //   801: iconst_1
    //   802: invokevirtual 466	jcifs/smb/SmbTransport:disconnect	(Z)V
    //   805: aload_0
    //   806: iconst_0
    //   807: putfield 293	jcifs/smb/SmbSession:uid	I
    //   810: aload_1
    //   811: athrow
    //   812: astore_1
    //   813: aload_1
    //   814: athrow
    //   815: astore 5
    //   817: aload_0
    //   818: getfield 77	jcifs/smb/SmbSession:transport	Ljcifs/smb/SmbTransport;
    //   821: iconst_1
    //   822: invokevirtual 466	jcifs/smb/SmbTransport:disconnect	(Z)V
    //   825: aload 5
    //   827: astore 8
    //   829: goto -68 -> 761
    //   832: astore 8
    //   834: aload 5
    //   836: astore 8
    //   838: goto -77 -> 761
    //   841: aload 8
    //   843: ifnull +6 -> 849
    //   846: aload 8
    //   848: athrow
    //   849: aload_0
    //   850: aload 7
    //   852: getfield 422	jcifs/smb/SmbComSessionSetupAndXResponse:uid	I
    //   855: putfield 293	jcifs/smb/SmbSession:uid	I
    //   858: aload 10
    //   860: getfield 421	jcifs/smb/SmbComSessionSetupAndX:digest	Ljcifs/smb/SigningDigest;
    //   863: ifnull +15 -> 878
    //   866: aload_0
    //   867: getfield 77	jcifs/smb/SmbSession:transport	Ljcifs/smb/SmbTransport;
    //   870: aload 10
    //   872: getfield 421	jcifs/smb/SmbComSessionSetupAndX:digest	Ljcifs/smb/SigningDigest;
    //   875: putfield 423	jcifs/smb/SmbTransport:digest	Ljcifs/smb/SigningDigest;
    //   878: aload 7
    //   880: getfield 469	jcifs/smb/SmbComSessionSetupAndXResponse:blob	[B
    //   883: astore 5
    //   885: aload 7
    //   887: getfield 426	jcifs/smb/SmbComSessionSetupAndXResponse:nativeOs	Ljava/lang/String;
    //   890: ifnull +106 -> 996
    //   893: aload 7
    //   895: getfield 426	jcifs/smb/SmbComSessionSetupAndXResponse:nativeOs	Ljava/lang/String;
    //   898: invokevirtual 429	java/lang/String:toLowerCase	()Ljava/lang/String;
    //   901: ldc_w 431
    //   904: invokevirtual 435	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   907: ifne +89 -> 996
    //   910: aload 7
    //   912: getfield 426	jcifs/smb/SmbComSessionSetupAndXResponse:nativeOs	Ljava/lang/String;
    //   915: invokevirtual 439	java/lang/String:length	()I
    //   918: ifne +15 -> 933
    //   921: goto +75 -> 996
    //   924: aload_0
    //   925: iload 4
    //   927: putfield 75	jcifs/smb/SmbSession:server_is_windows	Z
    //   930: goto -673 -> 257
    //   933: iconst_0
    //   934: istore 4
    //   936: goto -12 -> 924
    //   939: astore_2
    //   940: goto -135 -> 805
    //   943: goto -686 -> 257
    //   946: aload 6
    //   948: astore 7
    //   950: iload_3
    //   951: lookupswitch	default:+25->976, 10:+-728->223, 20:+-389->562
    //   976: goto -804 -> 172
    //   979: astore 8
    //   981: goto -609 -> 372
    //   984: iconst_1
    //   985: istore 4
    //   987: goto -440 -> 547
    //   990: iconst_0
    //   991: istore 4
    //   993: goto -446 -> 547
    //   996: iconst_1
    //   997: istore 4
    //   999: goto -75 -> 924
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	1002	0	this	SmbSession
    //   0	1002	1	paramServerMessageBlock1	ServerMessageBlock
    //   0	1002	2	paramServerMessageBlock2	ServerMessageBlock
    //   160	791	3	i	int
    //   243	755	4	bool	boolean
    //   85	643	5	localObject1	Object
    //   815	20	5	localSmbException1	SmbException
    //   883	1	5	arrayOfByte	byte[]
    //   255	692	6	localObject2	Object
    //   167	782	7	localObject3	Object
    //   1	827	8	localObject4	Object
    //   832	1	8	localException	Exception
    //   836	11	8	localObject5	Object
    //   979	1	8	localSmbException2	SmbException
    //   7	262	9	localSmbTransport	SmbTransport
    //   295	576	10	localObject6	Object
    // Exception table:
    //   from	to	target	type
    //   39	46	49	java/lang/InterruptedException
    //   12	35	63	finally
    //   35	38	63	finally
    //   39	46	63	finally
    //   50	63	63	finally
    //   64	67	63	finally
    //   69	74	63	finally
    //   214	223	63	finally
    //   261	271	63	finally
    //   74	153	200	jcifs/smb/SmbException
    //   153	158	200	jcifs/smb/SmbException
    //   161	166	200	jcifs/smb/SmbException
    //   172	200	200	jcifs/smb/SmbException
    //   223	245	200	jcifs/smb/SmbException
    //   272	352	200	jcifs/smb/SmbException
    //   352	361	200	jcifs/smb/SmbException
    //   372	430	200	jcifs/smb/SmbException
    //   430	460	200	jcifs/smb/SmbException
    //   464	466	200	jcifs/smb/SmbException
    //   471	474	200	jcifs/smb/SmbException
    //   474	503	200	jcifs/smb/SmbException
    //   503	544	200	jcifs/smb/SmbException
    //   547	553	200	jcifs/smb/SmbException
    //   571	583	200	jcifs/smb/SmbException
    //   586	601	200	jcifs/smb/SmbException
    //   601	621	200	jcifs/smb/SmbException
    //   621	643	200	jcifs/smb/SmbException
    //   672	716	200	jcifs/smb/SmbException
    //   721	736	200	jcifs/smb/SmbException
    //   736	750	200	jcifs/smb/SmbException
    //   761	796	200	jcifs/smb/SmbException
    //   797	805	200	jcifs/smb/SmbException
    //   805	812	200	jcifs/smb/SmbException
    //   813	815	200	jcifs/smb/SmbException
    //   817	825	200	jcifs/smb/SmbException
    //   846	849	200	jcifs/smb/SmbException
    //   849	878	200	jcifs/smb/SmbException
    //   878	921	200	jcifs/smb/SmbException
    //   924	930	200	jcifs/smb/SmbException
    //   74	153	213	finally
    //   153	158	213	finally
    //   161	166	213	finally
    //   172	200	213	finally
    //   201	213	213	finally
    //   223	245	213	finally
    //   272	352	213	finally
    //   352	361	213	finally
    //   361	372	213	finally
    //   372	430	213	finally
    //   430	460	213	finally
    //   464	466	213	finally
    //   471	474	213	finally
    //   474	503	213	finally
    //   503	544	213	finally
    //   547	553	213	finally
    //   571	583	213	finally
    //   586	601	213	finally
    //   601	621	213	finally
    //   621	643	213	finally
    //   654	667	213	finally
    //   672	716	213	finally
    //   721	736	213	finally
    //   736	750	213	finally
    //   750	761	213	finally
    //   761	796	213	finally
    //   797	805	213	finally
    //   805	812	213	finally
    //   813	815	213	finally
    //   817	825	213	finally
    //   846	849	213	finally
    //   849	878	213	finally
    //   878	921	213	finally
    //   924	930	213	finally
    //   361	372	463	jcifs/smb/SmbAuthException
    //   654	667	796	jcifs/smb/SmbException
    //   750	761	812	jcifs/smb/SmbAuthException
    //   750	761	815	jcifs/smb/SmbException
    //   817	825	832	java/lang/Exception
    //   797	805	939	java/io/IOException
    //   361	372	979	jcifs/smb/SmbException
  }
  
  public String toString()
  {
    return "SmbSession[accountName=" + auth.username + ",primaryDomain=" + auth.domain + ",uid=" + uid + ",connectionState=" + connectionState + "]";
  }
  
  SmbTransport transport()
  {
    try
    {
      if (transport == null) {
        transport = SmbTransport.getSmbTransport(address, port, localAddr, localPort, null);
      }
      SmbTransport localSmbTransport = transport;
      return localSmbTransport;
    }
    finally {}
  }
}

/* Location:
 * Qualified Name:     jcifs.smb.SmbSession
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
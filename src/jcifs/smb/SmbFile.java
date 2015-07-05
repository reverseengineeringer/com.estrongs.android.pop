package jcifs.smb;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.reflect.Array;
import java.net.InetAddress;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.net.UnknownHostException;
import java.security.Principal;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import jcifs.Config;
import jcifs.UniAddress;
import jcifs.dcerpc.DcerpcHandle;
import jcifs.dcerpc.msrpc.MsrpcDfsRootEnum;
import jcifs.dcerpc.msrpc.MsrpcShareEnum;
import jcifs.dcerpc.msrpc.MsrpcShareGetInfo;
import jcifs.netbios.NbtAddress;
import jcifs.util.LogStream;

public class SmbFile
  extends URLConnection
  implements SmbConstants
{
  public static final int ATTR_ARCHIVE = 32;
  static final int ATTR_COMPRESSED = 2048;
  public static final int ATTR_DIRECTORY = 16;
  static final int ATTR_GET_MASK = 32767;
  public static final int ATTR_HIDDEN = 2;
  static final int ATTR_NORMAL = 128;
  public static final int ATTR_READONLY = 1;
  static final int ATTR_SET_MASK = 12455;
  public static final int ATTR_SYSTEM = 4;
  static final int ATTR_TEMPORARY = 256;
  public static final int ATTR_VOLUME = 8;
  static final int DEFAULT_ATTR_EXPIRATION_PERIOD = 5000;
  public static final int FILE_NO_SHARE = 0;
  public static final int FILE_SHARE_DELETE = 4;
  public static final int FILE_SHARE_READ = 1;
  public static final int FILE_SHARE_WRITE = 2;
  static final int HASH_DOT = ".".hashCode();
  static final int HASH_DOT_DOT = "..".hashCode();
  static final int O_APPEND = 4;
  static final int O_CREAT = 16;
  static final int O_EXCL = 32;
  static final int O_RDONLY = 1;
  static final int O_RDWR = 3;
  static final int O_TRUNC = 64;
  static final int O_WRONLY = 2;
  public static final int TYPE_COMM = 64;
  public static final int TYPE_FILESYSTEM = 1;
  public static final int TYPE_NAMED_PIPE = 16;
  public static final int TYPE_PRINTER = 32;
  public static final int TYPE_SERVER = 4;
  public static final int TYPE_SHARE = 8;
  public static final int TYPE_WORKGROUP = 2;
  static long attrExpirationPeriod;
  protected static Dfs dfs;
  static boolean ignoreCopyToException;
  static LogStream log = LogStream.getInstance();
  int addressIndex;
  UniAddress[] addresses;
  private long attrExpiration;
  private int attributes;
  NtlmPasswordAuthentication auth;
  private SmbComBlankResponse blank_resp = null;
  private String canon;
  private long createTime;
  private DfsReferral dfsReferral = null;
  int fid;
  private boolean isExists;
  private long lastModified;
  boolean opened;
  private String share;
  private int shareAccess = 7;
  private long size;
  private long sizeExpiration;
  SmbTree tree = null;
  int tree_num;
  int type;
  String unc;
  
  static
  {
    try
    {
      Class.forName("jcifs.Config");
      attrExpirationPeriod = Config.getLong("jcifs.smb.client.attrExpirationPeriod", 5000L);
      ignoreCopyToException = Config.getBoolean("jcifs.smb.client.ignoreCopyToException", true);
      dfs = new Dfs();
      return;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      for (;;)
      {
        localClassNotFoundException.printStackTrace();
      }
    }
  }
  
  public SmbFile(String paramString)
  {
    this(new URL(null, paramString, Handler.SMB_HANDLER));
  }
  
  public SmbFile(String paramString1, String paramString2)
  {
    this(new URL(new URL(null, paramString1, Handler.SMB_HANDLER), paramString2, Handler.SMB_HANDLER));
  }
  
  public SmbFile(String paramString1, String paramString2, NtlmPasswordAuthentication paramNtlmPasswordAuthentication)
  {
    this(new URL(new URL(null, paramString1, Handler.SMB_HANDLER), paramString2, Handler.SMB_HANDLER), paramNtlmPasswordAuthentication);
  }
  
  public SmbFile(String paramString1, String paramString2, NtlmPasswordAuthentication paramNtlmPasswordAuthentication, int paramInt)
  {
    this(new URL(new URL(null, paramString1, Handler.SMB_HANDLER), paramString2, Handler.SMB_HANDLER), paramNtlmPasswordAuthentication);
    if ((paramInt & 0xFFFFFFF8) != 0) {
      throw new RuntimeException("Illegal shareAccess parameter");
    }
  }
  
  public SmbFile(String paramString, NtlmPasswordAuthentication paramNtlmPasswordAuthentication)
  {
    this(new URL(null, paramString, Handler.SMB_HANDLER), paramNtlmPasswordAuthentication);
  }
  
  public SmbFile(String paramString, NtlmPasswordAuthentication paramNtlmPasswordAuthentication, int paramInt)
  {
    this(new URL(null, paramString, Handler.SMB_HANDLER), paramNtlmPasswordAuthentication);
    if ((paramInt & 0xFFFFFFF8) != 0) {
      throw new RuntimeException("Illegal shareAccess parameter");
    }
  }
  
  public SmbFile(URL paramURL)
  {
    this(paramURL, new NtlmPasswordAuthentication(paramURL.getUserInfo()));
  }
  
  public SmbFile(URL paramURL, NtlmPasswordAuthentication paramNtlmPasswordAuthentication)
  {
    super(paramURL);
    NtlmPasswordAuthentication localNtlmPasswordAuthentication = paramNtlmPasswordAuthentication;
    if (paramNtlmPasswordAuthentication == null) {
      localNtlmPasswordAuthentication = new NtlmPasswordAuthentication(paramURL.getUserInfo());
    }
    auth = localNtlmPasswordAuthentication;
    getUncPath0();
  }
  
  public SmbFile(SmbFile paramSmbFile, String paramString) {}
  
  public SmbFile(SmbFile paramSmbFile, String paramString, int paramInt) {}
  
  SmbFile(SmbFile paramSmbFile, String paramString, int paramInt1, int paramInt2, long paramLong1, long paramLong2, long paramLong3) {}
  
  private SmbComBlankResponse blank_resp()
  {
    if (blank_resp == null) {
      blank_resp = new SmbComBlankResponse();
    }
    return blank_resp;
  }
  
  private void processAces(ACE[] paramArrayOfACE, boolean paramBoolean)
  {
    int i = 0;
    int k = 0;
    String str = getServerWithDfs();
    if (paramBoolean)
    {
      SID[] arrayOfSID = new SID[paramArrayOfACE.length];
      int j = 0;
      for (;;)
      {
        i = k;
        if (j >= paramArrayOfACE.length) {
          break;
        }
        arrayOfSID[j] = sid;
        j += 1;
      }
      while (i < arrayOfSID.length)
      {
        k = arrayOfSID.length - i;
        j = k;
        if (k > 64) {
          j = 64;
        }
        SID.resolveSids(str, auth, arrayOfSID, i, j);
        i += 64;
      }
    }
    while (i < paramArrayOfACE.length)
    {
      sid.origin_server = str;
      sid.origin_auth = auth;
      i += 1;
    }
  }
  
  private long queryFSInformation(int paramInt)
  {
    Trans2QueryFSInformationResponse localTrans2QueryFSInformationResponse = new Trans2QueryFSInformationResponse(paramInt);
    send(new Trans2QueryFSInformation(paramInt), localTrans2QueryFSInformationResponse);
    if (type == 8)
    {
      size = info.getCapacity();
      sizeExpiration = (System.currentTimeMillis() + attrExpirationPeriod);
    }
    return info.getFree();
  }
  
  static String queryLookup(String paramString1, String paramString2)
  {
    int k = 0;
    paramString1 = paramString1.toCharArray();
    int j = 0;
    int i = 0;
    if (i < paramString1.length)
    {
      int n = paramString1[i];
      int m;
      if (n == 38)
      {
        if ((k > j) && (new String(paramString1, j, k - j).equalsIgnoreCase(paramString2)))
        {
          j = k + 1;
          return new String(paramString1, j, i - j);
        }
        m = i + 1;
      }
      for (;;)
      {
        i += 1;
        j = m;
        break;
        m = j;
        if (n == 61)
        {
          k = i;
          m = j;
        }
      }
    }
    if ((k > j) && (new String(paramString1, j, k - j).equalsIgnoreCase(paramString2)))
    {
      i = k + 1;
      return new String(paramString1, i, paramString1.length - i);
    }
    return null;
  }
  
  public boolean canRead()
  {
    if (getType() == 16) {
      return true;
    }
    return exists();
  }
  
  public boolean canWrite()
  {
    if (getType() == 16) {}
    while ((exists()) && ((attributes & 0x1) == 0)) {
      return true;
    }
    return false;
  }
  
  void close()
  {
    close(0L);
  }
  
  void close(int paramInt, long paramLong)
  {
    LogStream localLogStream = log;
    if (LogStream.level >= 3) {
      log.println("close: " + paramInt);
    }
    send(new SmbComClose(paramInt, paramLong), blank_resp());
  }
  
  void close(long paramLong)
  {
    if (!isOpen()) {
      return;
    }
    close(fid, paramLong);
    opened = false;
  }
  
  public void connect()
  {
    if (isConnected()) {
      return;
    }
    getUncPath0();
    getFirstAddress();
    for (;;)
    {
      try
      {
        doConnect();
        return;
      }
      catch (SmbAuthException localSmbAuthException)
      {
        throw localSmbAuthException;
      }
      catch (SmbException localSmbException)
      {
        if (getNextAddress() == null) {
          throw localSmbException;
        }
        LogStream localLogStream = log;
      }
      if (LogStream.level >= 3) {
        localSmbException.printStackTrace(log);
      }
    }
  }
  
  void connect0()
  {
    try
    {
      connect();
      return;
    }
    catch (UnknownHostException localUnknownHostException)
    {
      throw new SmbException("Failed to connect to server", localUnknownHostException);
    }
    catch (SmbException localSmbException)
    {
      throw localSmbException;
    }
    catch (IOException localIOException)
    {
      throw new SmbException("Failed to connect to server", localIOException);
    }
  }
  
  public void copyTo(SmbFile paramSmbFile)
  {
    if ((share == null) || (share == null)) {
      throw new SmbException("Invalid operation for workgroups or servers");
    }
    SmbComReadAndX localSmbComReadAndX = new SmbComReadAndX();
    SmbComReadAndXResponse localSmbComReadAndXResponse = new SmbComReadAndXResponse();
    connect0();
    paramSmbFile.connect0();
    resolveDfs(null);
    try
    {
      if ((getAddress().equals(paramSmbFile.getAddress())) && (canon.regionMatches(true, 0, canon, 0, Math.min(canon.length(), canon.length())))) {
        throw new SmbException("Source and destination paths overlap.");
      }
    }
    catch (UnknownHostException localUnknownHostException)
    {
      localWriterThread = new SmbFile.WriterThread(this);
      localWriterThread.setDaemon(true);
      localWriterThread.start();
      Object localObject = tree.session.transport;
      SmbTransport localSmbTransport = tree.session.transport;
      if (snd_buf_size < snd_buf_size) {}
      for (snd_buf_size = snd_buf_size;; snd_buf_size = snd_buf_size)
      {
        int i = Math.min(rcv_buf_size - 70, snd_buf_size - 70);
        localObject = (byte[][])Array.newInstance(Byte.TYPE, new int[] { 2, i });
        try
        {
          copyTo0(paramSmbFile, (byte[][])localObject, i, localWriterThread, localSmbComReadAndX, localSmbComReadAndXResponse);
          return;
        }
        finally
        {
          localWriterThread.write(null, -1, null, 0L);
        }
      }
    }
  }
  
  /* Error */
  void copyTo0(SmbFile paramSmbFile, byte[][] paramArrayOfByte, int paramInt, SmbFile.WriterThread paramWriterThread, SmbComReadAndX paramSmbComReadAndX, SmbComReadAndXResponse paramSmbComReadAndXResponse)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 268	jcifs/smb/SmbFile:attrExpiration	J
    //   4: invokestatic 264	java/lang/System:currentTimeMillis	()J
    //   7: lcmp
    //   8: ifge +86 -> 94
    //   11: aload_0
    //   12: bipush 17
    //   14: putfield 250	jcifs/smb/SmbFile:attributes	I
    //   17: aload_0
    //   18: lconst_0
    //   19: putfield 252	jcifs/smb/SmbFile:createTime	J
    //   22: aload_0
    //   23: lconst_0
    //   24: putfield 254	jcifs/smb/SmbFile:lastModified	J
    //   27: aload_0
    //   28: iconst_0
    //   29: putfield 258	jcifs/smb/SmbFile:isExists	Z
    //   32: aload_0
    //   33: aload_0
    //   34: invokevirtual 204	jcifs/smb/SmbFile:getUncPath0	()Ljava/lang/String;
    //   37: sipush 257
    //   40: invokevirtual 516	jcifs/smb/SmbFile:queryPath	(Ljava/lang/String;I)Ljcifs/smb/Info;
    //   43: astore 12
    //   45: aload_0
    //   46: aload 12
    //   48: invokeinterface 521 1 0
    //   53: putfield 250	jcifs/smb/SmbFile:attributes	I
    //   56: aload_0
    //   57: aload 12
    //   59: invokeinterface 524 1 0
    //   64: putfield 252	jcifs/smb/SmbFile:createTime	J
    //   67: aload_0
    //   68: aload 12
    //   70: invokeinterface 527 1 0
    //   75: putfield 254	jcifs/smb/SmbFile:lastModified	J
    //   78: aload_0
    //   79: iconst_1
    //   80: putfield 258	jcifs/smb/SmbFile:isExists	Z
    //   83: aload_0
    //   84: invokestatic 264	java/lang/System:currentTimeMillis	()J
    //   87: getstatic 135	jcifs/smb/SmbFile:attrExpirationPeriod	J
    //   90: ladd
    //   91: putfield 268	jcifs/smb/SmbFile:attrExpiration	J
    //   94: aload_0
    //   95: invokevirtual 530	jcifs/smb/SmbFile:isDirectory	()Z
    //   98: ifeq +204 -> 302
    //   101: aload_1
    //   102: invokevirtual 204	jcifs/smb/SmbFile:getUncPath0	()Ljava/lang/String;
    //   105: invokevirtual 234	java/lang/String:length	()I
    //   108: iconst_1
    //   109: if_icmple +23 -> 132
    //   112: aload_1
    //   113: invokevirtual 533	jcifs/smb/SmbFile:mkdir	()V
    //   116: aload_1
    //   117: aload_0
    //   118: getfield 250	jcifs/smb/SmbFile:attributes	I
    //   121: aload_0
    //   122: getfield 252	jcifs/smb/SmbFile:createTime	J
    //   125: aload_0
    //   126: getfield 254	jcifs/smb/SmbFile:lastModified	J
    //   129: invokevirtual 537	jcifs/smb/SmbFile:setPathInformation	(IJJ)V
    //   132: aload_0
    //   133: ldc_w 539
    //   136: bipush 22
    //   138: aconst_null
    //   139: aconst_null
    //   140: invokevirtual 543	jcifs/smb/SmbFile:listFiles	(Ljava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)[Ljcifs/smb/SmbFile;
    //   143: astore 12
    //   145: iconst_0
    //   146: istore 7
    //   148: iload 7
    //   150: aload 12
    //   152: arraylength
    //   153: if_icmpge +446 -> 599
    //   156: new 2	jcifs/smb/SmbFile
    //   159: dup
    //   160: aload_1
    //   161: aload 12
    //   163: iload 7
    //   165: aaload
    //   166: invokevirtual 546	jcifs/smb/SmbFile:getName	()Ljava/lang/String;
    //   169: aload 12
    //   171: iload 7
    //   173: aaload
    //   174: getfield 248	jcifs/smb/SmbFile:type	I
    //   177: aload 12
    //   179: iload 7
    //   181: aaload
    //   182: getfield 250	jcifs/smb/SmbFile:attributes	I
    //   185: aload 12
    //   187: iload 7
    //   189: aaload
    //   190: getfield 252	jcifs/smb/SmbFile:createTime	J
    //   193: aload 12
    //   195: iload 7
    //   197: aaload
    //   198: getfield 254	jcifs/smb/SmbFile:lastModified	J
    //   201: aload 12
    //   203: iload 7
    //   205: aaload
    //   206: getfield 256	jcifs/smb/SmbFile:size	J
    //   209: invokespecial 548	jcifs/smb/SmbFile:<init>	(Ljcifs/smb/SmbFile;Ljava/lang/String;IIJJJ)V
    //   212: astore 13
    //   214: aload 12
    //   216: iload 7
    //   218: aaload
    //   219: aload 13
    //   221: aload_2
    //   222: iload_3
    //   223: aload 4
    //   225: aload 5
    //   227: aload 6
    //   229: invokevirtual 504	jcifs/smb/SmbFile:copyTo0	(Ljcifs/smb/SmbFile;[[BILjcifs/smb/SmbFile$WriterThread;Ljcifs/smb/SmbComReadAndX;Ljcifs/smb/SmbComReadAndXResponse;)V
    //   232: iload 7
    //   234: iconst_1
    //   235: iadd
    //   236: istore 7
    //   238: goto -90 -> 148
    //   241: astore 12
    //   243: aload 12
    //   245: invokevirtual 551	jcifs/smb/SmbException:getNtStatus	()I
    //   248: ldc_w 552
    //   251: if_icmpeq -119 -> 132
    //   254: aload 12
    //   256: invokevirtual 551	jcifs/smb/SmbException:getNtStatus	()I
    //   259: ldc_w 553
    //   262: if_icmpeq -130 -> 132
    //   265: aload 12
    //   267: athrow
    //   268: astore_1
    //   269: new 390	jcifs/smb/SmbException
    //   272: dup
    //   273: aload_0
    //   274: getfield 225	jcifs/smb/SmbFile:url	Ljava/net/URL;
    //   277: invokevirtual 554	java/net/URL:toString	()Ljava/lang/String;
    //   280: aload_1
    //   281: invokespecial 418	jcifs/smb/SmbException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   284: athrow
    //   285: astore_1
    //   286: new 390	jcifs/smb/SmbException
    //   289: dup
    //   290: aload_0
    //   291: getfield 225	jcifs/smb/SmbFile:url	Ljava/net/URL;
    //   294: invokevirtual 554	java/net/URL:toString	()Ljava/lang/String;
    //   297: aload_1
    //   298: invokespecial 418	jcifs/smb/SmbException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   301: athrow
    //   302: aload_0
    //   303: iconst_1
    //   304: iconst_0
    //   305: sipush 128
    //   308: iconst_0
    //   309: invokevirtual 558	jcifs/smb/SmbFile:open	(IIII)V
    //   312: aload_1
    //   313: bipush 82
    //   315: sipush 258
    //   318: aload_0
    //   319: getfield 250	jcifs/smb/SmbFile:attributes	I
    //   322: iconst_0
    //   323: invokevirtual 558	jcifs/smb/SmbFile:open	(IIII)V
    //   326: lconst_0
    //   327: lstore 9
    //   329: iconst_0
    //   330: istore 7
    //   332: aload 5
    //   334: aload_0
    //   335: getfield 381	jcifs/smb/SmbFile:fid	I
    //   338: lload 9
    //   340: iload_3
    //   341: invokevirtual 562	jcifs/smb/SmbComReadAndX:setParam	(IJI)V
    //   344: aload 6
    //   346: aload_2
    //   347: iload 7
    //   349: aaload
    //   350: iconst_0
    //   351: invokevirtual 565	jcifs/smb/SmbComReadAndXResponse:setParam	([BI)V
    //   354: aload_0
    //   355: aload 5
    //   357: aload 6
    //   359: invokevirtual 321	jcifs/smb/SmbFile:send	(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    //   362: aload 4
    //   364: monitorenter
    //   365: aload 4
    //   367: getfield 569	jcifs/smb/SmbFile$WriterThread:e	Ljcifs/smb/SmbException;
    //   370: ifnull +124 -> 494
    //   373: aload 4
    //   375: getfield 569	jcifs/smb/SmbFile$WriterThread:e	Ljcifs/smb/SmbException;
    //   378: athrow
    //   379: astore_2
    //   380: aload 4
    //   382: monitorexit
    //   383: aload_2
    //   384: athrow
    //   385: astore_2
    //   386: getstatic 143	jcifs/smb/SmbFile:ignoreCopyToException	Z
    //   389: ifne +264 -> 653
    //   392: new 390	jcifs/smb/SmbException
    //   395: dup
    //   396: new 211	java/lang/StringBuilder
    //   399: dup
    //   400: invokespecial 212	java/lang/StringBuilder:<init>	()V
    //   403: ldc_w 571
    //   406: invokevirtual 218	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   409: aload_0
    //   410: invokevirtual 572	jcifs/smb/SmbFile:toString	()Ljava/lang/String;
    //   413: invokevirtual 218	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   416: ldc_w 574
    //   419: invokevirtual 218	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   422: aload_1
    //   423: invokevirtual 572	jcifs/smb/SmbFile:toString	()Ljava/lang/String;
    //   426: invokevirtual 218	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   429: ldc_w 576
    //   432: invokevirtual 218	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   435: invokevirtual 221	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   438: aload_2
    //   439: invokespecial 418	jcifs/smb/SmbException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   442: athrow
    //   443: astore_1
    //   444: aload_0
    //   445: invokevirtual 578	jcifs/smb/SmbFile:close	()V
    //   448: aload_1
    //   449: athrow
    //   450: astore 12
    //   452: aload_1
    //   453: getfield 250	jcifs/smb/SmbFile:attributes	I
    //   456: iconst_1
    //   457: iand
    //   458: ifeq +33 -> 491
    //   461: aload_1
    //   462: aload_1
    //   463: getfield 250	jcifs/smb/SmbFile:attributes	I
    //   466: bipush -2
    //   468: iand
    //   469: lconst_0
    //   470: lconst_0
    //   471: invokevirtual 537	jcifs/smb/SmbFile:setPathInformation	(IJJ)V
    //   474: aload_1
    //   475: bipush 82
    //   477: sipush 258
    //   480: aload_0
    //   481: getfield 250	jcifs/smb/SmbFile:attributes	I
    //   484: iconst_0
    //   485: invokevirtual 558	jcifs/smb/SmbFile:open	(IIII)V
    //   488: goto -162 -> 326
    //   491: aload 12
    //   493: athrow
    //   494: aload 4
    //   496: getfield 581	jcifs/smb/SmbFile$WriterThread:ready	Z
    //   499: istore 11
    //   501: iload 11
    //   503: ifne +28 -> 531
    //   506: aload 4
    //   508: invokevirtual 586	java/lang/Object:wait	()V
    //   511: goto -17 -> 494
    //   514: astore_2
    //   515: new 390	jcifs/smb/SmbException
    //   518: dup
    //   519: aload_1
    //   520: getfield 225	jcifs/smb/SmbFile:url	Ljava/net/URL;
    //   523: invokevirtual 554	java/net/URL:toString	()Ljava/lang/String;
    //   526: aload_2
    //   527: invokespecial 418	jcifs/smb/SmbException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   530: athrow
    //   531: aload 4
    //   533: getfield 569	jcifs/smb/SmbFile$WriterThread:e	Ljcifs/smb/SmbException;
    //   536: ifnull +9 -> 545
    //   539: aload 4
    //   541: getfield 569	jcifs/smb/SmbFile$WriterThread:e	Ljcifs/smb/SmbException;
    //   544: athrow
    //   545: aload 6
    //   547: getfield 589	jcifs/smb/SmbComReadAndXResponse:dataLength	I
    //   550: ifgt +50 -> 600
    //   553: aload 4
    //   555: monitorexit
    //   556: aload_1
    //   557: new 591	jcifs/smb/Trans2SetFileInformation
    //   560: dup
    //   561: aload_1
    //   562: getfield 381	jcifs/smb/SmbFile:fid	I
    //   565: aload_0
    //   566: getfield 250	jcifs/smb/SmbFile:attributes	I
    //   569: aload_0
    //   570: getfield 252	jcifs/smb/SmbFile:createTime	J
    //   573: aload_0
    //   574: getfield 254	jcifs/smb/SmbFile:lastModified	J
    //   577: invokespecial 594	jcifs/smb/Trans2SetFileInformation:<init>	(IIJJ)V
    //   580: new 596	jcifs/smb/Trans2SetFileInformationResponse
    //   583: dup
    //   584: invokespecial 597	jcifs/smb/Trans2SetFileInformationResponse:<init>	()V
    //   587: invokevirtual 321	jcifs/smb/SmbFile:send	(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    //   590: aload_1
    //   591: lconst_0
    //   592: invokevirtual 358	jcifs/smb/SmbFile:close	(J)V
    //   595: aload_0
    //   596: invokevirtual 578	jcifs/smb/SmbFile:close	()V
    //   599: return
    //   600: aload 4
    //   602: aload_2
    //   603: iload 7
    //   605: aaload
    //   606: aload 6
    //   608: getfield 589	jcifs/smb/SmbComReadAndXResponse:dataLength	I
    //   611: aload_1
    //   612: lload 9
    //   614: invokevirtual 508	jcifs/smb/SmbFile$WriterThread:write	([BILjcifs/smb/SmbFile;J)V
    //   617: aload 4
    //   619: monitorexit
    //   620: iload 7
    //   622: iconst_1
    //   623: if_icmpne +24 -> 647
    //   626: iconst_0
    //   627: istore 7
    //   629: aload 6
    //   631: getfield 589	jcifs/smb/SmbComReadAndXResponse:dataLength	I
    //   634: istore 8
    //   636: lload 9
    //   638: iload 8
    //   640: i2l
    //   641: ladd
    //   642: lstore 9
    //   644: goto -312 -> 332
    //   647: iconst_1
    //   648: istore 7
    //   650: goto -21 -> 629
    //   653: getstatic 115	jcifs/smb/SmbFile:log	Ljcifs/util/LogStream;
    //   656: astore_1
    //   657: getstatic 362	jcifs/util/LogStream:level	I
    //   660: iconst_1
    //   661: if_icmple +10 -> 671
    //   664: aload_2
    //   665: getstatic 115	jcifs/smb/SmbFile:log	Ljcifs/util/LogStream;
    //   668: invokevirtual 406	jcifs/smb/SmbException:printStackTrace	(Ljava/io/PrintStream;)V
    //   671: aload_0
    //   672: invokevirtual 578	jcifs/smb/SmbFile:close	()V
    //   675: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	676	0	this	SmbFile
    //   0	676	1	paramSmbFile	SmbFile
    //   0	676	2	paramArrayOfByte	byte[][]
    //   0	676	3	paramInt	int
    //   0	676	4	paramWriterThread	SmbFile.WriterThread
    //   0	676	5	paramSmbComReadAndX	SmbComReadAndX
    //   0	676	6	paramSmbComReadAndXResponse	SmbComReadAndXResponse
    //   146	503	7	i	int
    //   634	5	8	j	int
    //   327	316	9	l	long
    //   499	3	11	bool	boolean
    //   43	172	12	localObject	Object
    //   241	25	12	localSmbException	SmbException
    //   450	42	12	localSmbAuthException	SmbAuthException
    //   212	8	13	localSmbFile	SmbFile
    // Exception table:
    //   from	to	target	type
    //   112	132	241	jcifs/smb/SmbException
    //   148	232	268	java/net/UnknownHostException
    //   148	232	285	java/net/MalformedURLException
    //   365	379	379	finally
    //   380	383	379	finally
    //   494	501	379	finally
    //   506	511	379	finally
    //   515	531	379	finally
    //   531	545	379	finally
    //   545	556	379	finally
    //   600	620	379	finally
    //   302	312	385	jcifs/smb/SmbException
    //   312	326	385	jcifs/smb/SmbException
    //   332	365	385	jcifs/smb/SmbException
    //   383	385	385	jcifs/smb/SmbException
    //   452	488	385	jcifs/smb/SmbException
    //   491	494	385	jcifs/smb/SmbException
    //   556	595	385	jcifs/smb/SmbException
    //   629	636	385	jcifs/smb/SmbException
    //   302	312	443	finally
    //   312	326	443	finally
    //   332	365	443	finally
    //   383	385	443	finally
    //   386	443	443	finally
    //   452	488	443	finally
    //   491	494	443	finally
    //   556	595	443	finally
    //   629	636	443	finally
    //   653	671	443	finally
    //   312	326	450	jcifs/smb/SmbAuthException
    //   506	511	514	java/lang/InterruptedException
  }
  
  public void createNewFile()
  {
    if (getUncPath0().length() == 1) {
      throw new SmbException("Invalid operation for workgroups, servers, or shares");
    }
    close(open0(51, 0, 128, 0), 0L);
  }
  
  public long createTime()
  {
    if (getUncPath0().length() > 1)
    {
      exists();
      return createTime;
    }
    return 0L;
  }
  
  public void delete()
  {
    exists();
    getUncPath0();
    delete(unc);
  }
  
  void delete(String paramString)
  {
    int i = 0;
    if (getUncPath0().length() == 1) {
      throw new SmbException("Invalid operation for workgroups, servers, or shares");
    }
    if (System.currentTimeMillis() > attrExpiration)
    {
      attributes = 17;
      createTime = 0L;
      lastModified = 0L;
      isExists = false;
      localObject = queryPath(getUncPath0(), 257);
      attributes = ((Info)localObject).getAttributes();
      createTime = ((Info)localObject).getCreateTime();
      lastModified = ((Info)localObject).getLastWriteTime();
      attrExpiration = (System.currentTimeMillis() + attrExpirationPeriod);
      isExists = true;
    }
    if ((attributes & 0x1) != 0) {
      setReadWrite();
    }
    Object localObject = log;
    if (LogStream.level >= 3) {
      log.println("delete: " + paramString);
    }
    if ((attributes & 0x10) != 0) {
      try
      {
        localObject = listFiles("*", 22, null, null);
        while (i < localObject.length)
        {
          localObject[i].delete();
          i += 1;
        }
        sizeExpiration = 0L;
      }
      catch (SmbException localSmbException)
      {
        if (localSmbException.getNtStatus() != -1073741809) {
          throw localSmbException;
        }
        send(new SmbComDeleteDirectory(paramString), blank_resp());
      }
    }
    for (;;)
    {
      attrExpiration = 0L;
      return;
      send(new SmbComDelete(paramString), blank_resp());
    }
  }
  
  void doConnect()
  {
    bool2 = true;
    UniAddress localUniAddress = getAddress();
    if (tree != null)
    {
      localObject1 = tree.session.transport;
      str = getServerWithDfs();
      localObject2 = tree;
      if (dfs.resolve(str, tree.share, null, auth) == null) {
        break label172;
      }
    }
    label172:
    for (bool1 = true;; bool1 = false)
    {
      inDomainDfs = bool1;
      if (tree.inDomainDfs) {
        tree.connectionState = 2;
      }
      try
      {
        localObject2 = log;
        if (LogStream.level >= 3) {
          log.println("doConnect: " + localUniAddress);
        }
        tree.treeConnect(null, null);
        return;
      }
      catch (SmbAuthException localSmbAuthException)
      {
        if (share != null) {
          break label212;
        }
        tree = ((SmbTransport)localObject1).getSmbSession(NtlmPasswordAuthentication.NULL).getSmbTree(null, null);
        tree.treeConnect(null, null);
        return;
        localObject2 = NtlmAuthenticator.requestNtlmPasswordAuthentication(url.toString(), localSmbAuthException);
        if (localObject2 == null) {
          break label325;
        }
        auth = ((NtlmPasswordAuthentication)localObject2);
        tree = ((SmbTransport)localObject1).getSmbSession(auth).getSmbTree(share, null);
        localObject1 = tree;
        if (dfs.resolve(str, tree.share, null, auth) == null) {
          break label320;
        }
        for (bool1 = bool2;; bool1 = false)
        {
          inDomainDfs = bool1;
          if (tree.inDomainDfs) {
            tree.connectionState = 2;
          }
          tree.treeConnect(null, null);
          return;
        }
        localObject1 = log;
        if ((LogStream.level < 1) || (!hasNextAddress())) {
          break label351;
        }
        localSmbAuthException.printStackTrace(log);
        throw localSmbAuthException;
      }
      localObject1 = SmbTransport.getSmbTransport(localUniAddress, url.getPort());
      tree = ((SmbTransport)localObject1).getSmbSession(auth).getSmbTree(share, null);
      break;
    }
  }
  
  FileEntry[] doDfsRootEnum()
  {
    DcerpcHandle localDcerpcHandle = DcerpcHandle.getHandle("ncacn_np:" + getAddress().getHostAddress() + "[\\PIPE\\netdfs]", auth);
    try
    {
      MsrpcDfsRootEnum localMsrpcDfsRootEnum = new MsrpcDfsRootEnum(getServer());
      localDcerpcHandle.sendrecv(localMsrpcDfsRootEnum);
      if (retval != 0) {
        throw new SmbException(retval, true);
      }
    }
    finally {}
    try
    {
      localDcerpcHandle.close();
      throw ((Throwable)localObject);
      FileEntry[] arrayOfFileEntry = ((MsrpcDfsRootEnum)localObject).getEntries();
      try
      {
        localDcerpcHandle.close();
        return arrayOfFileEntry;
      }
      catch (IOException localIOException1)
      {
        do
        {
          localLogStream = log;
        } while (LogStream.level < 4);
        localIOException1.printStackTrace(log);
        return arrayOfFileEntry;
      }
    }
    catch (IOException localIOException2)
    {
      for (;;)
      {
        LogStream localLogStream = log;
        if (LogStream.level >= 4) {
          localIOException2.printStackTrace(log);
        }
      }
    }
  }
  
  void doEnum(ArrayList paramArrayList, boolean paramBoolean, String paramString, int paramInt, SmbFilenameFilter paramSmbFilenameFilter, SmbFileFilter paramSmbFileFilter)
  {
    if ((paramSmbFileFilter != null) && ((paramSmbFileFilter instanceof DosFileFilter)))
    {
      DosFileFilter localDosFileFilter = (DosFileFilter)paramSmbFileFilter;
      if (wildcard != null) {
        paramString = wildcard;
      }
      paramInt = attributes;
    }
    for (;;)
    {
      try
      {
        if ((url.getHost().length() == 0) || (getType() == 2))
        {
          doNetServerEnum(paramArrayList, paramBoolean, paramString, paramInt, paramSmbFilenameFilter, paramSmbFileFilter);
          return;
        }
        if (share == null)
        {
          doShareEnum(paramArrayList, paramBoolean, paramString, paramInt, paramSmbFilenameFilter, paramSmbFileFilter);
          return;
        }
      }
      catch (UnknownHostException paramArrayList)
      {
        throw new SmbException(url.toString(), paramArrayList);
        doFindFirstNext(paramArrayList, paramBoolean, paramString, paramInt, paramSmbFilenameFilter, paramSmbFileFilter);
        return;
      }
      catch (MalformedURLException paramArrayList)
      {
        throw new SmbException(url.toString(), paramArrayList);
      }
    }
  }
  
  void doFindFirstNext(ArrayList paramArrayList, boolean paramBoolean, String paramString, int paramInt, SmbFilenameFilter paramSmbFilenameFilter, SmbFileFilter paramSmbFileFilter)
  {
    Object localObject1 = getUncPath0();
    Object localObject2 = url.getPath();
    if (((String)localObject2).lastIndexOf('/') != ((String)localObject2).length() - 1) {
      throw new SmbException(url.toString() + " directory must end with '/'");
    }
    localObject1 = new Trans2FindFirst2((String)localObject1, paramString, paramInt);
    paramString = new Trans2FindFirst2Response();
    localObject2 = log;
    if (LogStream.level >= 3) {
      log.println("doFindFirstNext: " + path);
    }
    send((ServerMessageBlock)localObject1, paramString);
    int i = sid;
    localObject1 = new Trans2FindNext2(i, resumeKey, lastName);
    subCommand = 2;
    for (;;)
    {
      paramInt = 0;
      if (paramInt < numEntries)
      {
        Object localObject3 = results[paramInt];
        localObject2 = ((FileEntry)localObject3).getName();
        if (((String)localObject2).length() < 3)
        {
          int j = ((String)localObject2).hashCode();
          if (((j != HASH_DOT) && (j != HASH_DOT_DOT)) || ((!((String)localObject2).equals(".")) && (!((String)localObject2).equals("..")))) {}
        }
        for (;;)
        {
          paramInt += 1;
          break;
          if (((paramSmbFilenameFilter == null) || (paramSmbFilenameFilter.accept(this, (String)localObject2))) && (((String)localObject2).length() > 0))
          {
            localObject3 = new SmbFile(this, (String)localObject2, 1, ((FileEntry)localObject3).getAttributes(), ((FileEntry)localObject3).createTime(), ((FileEntry)localObject3).lastModified(), ((FileEntry)localObject3).length());
            if ((paramSmbFileFilter == null) || (paramSmbFileFilter.accept((SmbFile)localObject3))) {
              if (paramBoolean) {
                paramArrayList.add(localObject3);
              } else {
                paramArrayList.add(localObject2);
              }
            }
          }
        }
      }
      if ((isEndOfSearch) || (numEntries == 0)) {}
      try
      {
        send(new SmbComFindClose2(i), blank_resp());
        return;
        ((SmbComTransaction)localObject1).reset(resumeKey, lastName);
        paramString.reset();
        send((ServerMessageBlock)localObject1, paramString);
      }
      catch (SmbException paramArrayList)
      {
        do
        {
          paramString = log;
        } while (LogStream.level < 4);
        paramArrayList.printStackTrace(log);
      }
    }
  }
  
  FileEntry[] doMsrpcShareEnum()
  {
    MsrpcShareEnum localMsrpcShareEnum = new MsrpcShareEnum(url.getHost());
    DcerpcHandle localDcerpcHandle = DcerpcHandle.getHandle("ncacn_np:" + getAddress().getHostAddress() + "[\\PIPE\\srvsvc]", auth);
    try
    {
      localDcerpcHandle.sendrecv(localMsrpcShareEnum);
      if (retval != 0) {
        throw new SmbException(retval, true);
      }
    }
    finally {}
    try
    {
      localDcerpcHandle.close();
      throw ((Throwable)localObject);
      FileEntry[] arrayOfFileEntry = ((MsrpcShareEnum)localObject).getEntries();
      try
      {
        localDcerpcHandle.close();
        return arrayOfFileEntry;
      }
      catch (IOException localIOException1)
      {
        do
        {
          localLogStream = log;
        } while (LogStream.level < 4);
        localIOException1.printStackTrace(log);
        return arrayOfFileEntry;
      }
    }
    catch (IOException localIOException2)
    {
      for (;;)
      {
        LogStream localLogStream = log;
        if (LogStream.level >= 4) {
          localIOException2.printStackTrace(log);
        }
      }
    }
  }
  
  void doNetServerEnum(ArrayList paramArrayList, boolean paramBoolean, String paramString, int paramInt, SmbFilenameFilter paramSmbFilenameFilter, SmbFileFilter paramSmbFileFilter)
  {
    NetServerEnum2 localNetServerEnum2;
    if (url.getHost().length() == 0)
    {
      paramInt = 0;
      if (paramInt != 0) {
        break label107;
      }
      connect0();
      localNetServerEnum2 = new NetServerEnum2(tree.session.transport.server.oemDomainName, Integer.MIN_VALUE);
      paramString = new NetServerEnum2Response();
    }
    label107:
    label141:
    label175:
    label201:
    label204:
    label262:
    label271:
    label344:
    do
    {
      for (;;)
      {
        send(localNetServerEnum2, paramString);
        if ((status == 0) || (status == 234)) {
          break label175;
        }
        throw new SmbException(status, true);
        paramInt = getType();
        break;
        if (paramInt != 2) {
          break label141;
        }
        localNetServerEnum2 = new NetServerEnum2(url.getHost(), -1);
        paramString = new NetServerEnum2Response();
      }
      throw new SmbException("The requested list operations is invalid: " + url.toString());
      int i;
      int j;
      Object localObject;
      String str;
      if (status == 234)
      {
        paramInt = 1;
        if (paramInt == 0) {
          break label262;
        }
        i = numEntries - 1;
        j = 0;
        if (j >= i) {
          break label344;
        }
        localObject = results[j];
        str = ((FileEntry)localObject).getName();
        if ((paramSmbFilenameFilter == null) || (paramSmbFilenameFilter.accept(this, str))) {
          break label271;
        }
      }
      for (;;)
      {
        j += 1;
        break label204;
        paramInt = 0;
        break;
        i = numEntries;
        break label201;
        if (str.length() > 0)
        {
          localObject = new SmbFile(this, str, ((FileEntry)localObject).getType(), 17, 0L, 0L, 0L);
          if ((paramSmbFileFilter == null) || (paramSmbFileFilter.accept((SmbFile)localObject))) {
            if (paramBoolean) {
              paramArrayList.add(localObject);
            } else {
              paramArrayList.add(str);
            }
          }
        }
      }
      if (getType() != 2) {
        return;
      }
      subCommand = -41;
      localNetServerEnum2.reset(0, lastName);
      paramString.reset();
    } while (paramInt != 0);
  }
  
  FileEntry[] doNetShareEnum()
  {
    NetShareEnum localNetShareEnum = new NetShareEnum();
    NetShareEnumResponse localNetShareEnumResponse = new NetShareEnumResponse();
    send(localNetShareEnum, localNetShareEnumResponse);
    if (status != 0) {
      throw new SmbException(status, true);
    }
    return results;
  }
  
  void doShareEnum(ArrayList paramArrayList, boolean paramBoolean, String paramString, int paramInt, SmbFilenameFilter paramSmbFilenameFilter, SmbFileFilter paramSmbFileFilter)
  {
    paramString = url.getPath();
    if (paramString.lastIndexOf('/') != paramString.length() - 1) {
      throw new SmbException(url.toString() + " directory must end with '/'");
    }
    if (getType() != 4) {
      throw new SmbException("The requested list operations is invalid: " + url.toString());
    }
    Object localObject3 = new HashMap();
    Object localObject1;
    if (dfs.isTrustedDomain(getServer(), auth)) {
      try
      {
        paramString = doDfsRootEnum();
        paramInt = 0;
        while (paramInt < paramString.length)
        {
          localObject1 = paramString[paramInt];
          if (!((HashMap)localObject3).containsKey(localObject1)) {
            ((HashMap)localObject3).put(localObject1, localObject1);
          }
          paramInt += 1;
        }
        localObject1 = getFirstAddress();
      }
      catch (IOException paramString)
      {
        localObject1 = log;
        if (LogStream.level >= 4) {
          paramString.printStackTrace(log);
        }
      }
    }
    paramString = null;
    if (localObject1 != null) {}
    for (;;)
    {
      Object localObject2;
      try
      {
        doConnect();
        try
        {
          localObject1 = doMsrpcShareEnum();
          paramInt = 0;
          if (paramInt < localObject1.length)
          {
            localObject4 = localObject1[paramInt];
            if (((HashMap)localObject3).containsKey(localObject4)) {
              break label491;
            }
            ((HashMap)localObject3).put(localObject4, localObject4);
          }
        }
        catch (IOException localIOException)
        {
          Object localObject4 = log;
          if (LogStream.level >= 3) {
            localIOException.printStackTrace(log);
          }
          localObject2 = doNetShareEnum();
          continue;
        }
      }
      catch (IOException paramString)
      {
        localObject2 = log;
        if (LogStream.level >= 3) {
          paramString.printStackTrace(log);
        }
        localObject2 = getNextAddress();
      }
      if ((paramString != null) && (((HashMap)localObject3).isEmpty()))
      {
        if (!(paramString instanceof SmbException)) {
          throw new SmbException(url.toString(), paramString);
        }
        throw ((SmbException)paramString);
      }
      paramString = ((HashMap)localObject3).keySet().iterator();
      while (paramString.hasNext())
      {
        localObject3 = (FileEntry)paramString.next();
        localObject2 = ((FileEntry)localObject3).getName();
        if (((paramSmbFilenameFilter == null) || (paramSmbFilenameFilter.accept(this, (String)localObject2))) && (((String)localObject2).length() > 0))
        {
          localObject3 = new SmbFile(this, (String)localObject2, ((FileEntry)localObject3).getType(), 17, 0L, 0L, 0L);
          if ((paramSmbFileFilter == null) || (paramSmbFileFilter.accept((SmbFile)localObject3))) {
            if (paramBoolean) {
              paramArrayList.add(localObject3);
            } else {
              paramArrayList.add(localObject2);
            }
          }
        }
      }
      return;
      label491:
      paramInt += 1;
    }
  }
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject instanceof SmbFile))
    {
      paramObject = (SmbFile)paramObject;
      if (this == paramObject) {
        return true;
      }
      if (pathNamesPossiblyEqual(url.getPath(), url.getPath()))
      {
        getUncPath0();
        ((SmbFile)paramObject).getUncPath0();
        if (canon.equalsIgnoreCase(canon)) {
          try
          {
            boolean bool = getAddress().equals(((SmbFile)paramObject).getAddress());
            return bool;
          }
          catch (UnknownHostException localUnknownHostException)
          {
            return getServer().equalsIgnoreCase(((SmbFile)paramObject).getServer());
          }
        }
      }
    }
    return false;
  }
  
  public boolean exists()
  {
    if (attrExpiration > System.currentTimeMillis()) {
      return isExists;
    }
    attributes = 17;
    createTime = 0L;
    lastModified = 0L;
    isExists = false;
    try
    {
      if (url.getHost().length() == 0) {}
      for (;;)
      {
        isExists = true;
        attrExpiration = (System.currentTimeMillis() + attrExpirationPeriod);
        return isExists;
        if (share != null) {
          break;
        }
        if (getType() == 2) {
          UniAddress.getByName(url.getHost(), true);
        } else {
          UniAddress.getByName(url.getHost()).getHostName();
        }
      }
    }
    catch (SmbException localSmbException)
    {
      for (;;)
      {
        switch (localSmbException.getNtStatus())
        {
        }
        throw localSmbException;
        if ((getUncPath0().length() == 1) || (share.equalsIgnoreCase("IPC$")))
        {
          connect0();
        }
        else
        {
          Info localInfo = queryPath(getUncPath0(), 257);
          attributes = localInfo.getAttributes();
          createTime = localInfo.getCreateTime();
          lastModified = localInfo.getLastWriteTime();
        }
      }
    }
    catch (UnknownHostException localUnknownHostException)
    {
      for (;;) {}
    }
  }
  
  UniAddress getAddress()
  {
    if (addressIndex == 0) {
      return getFirstAddress();
    }
    return addresses[(addressIndex - 1)];
  }
  
  public int getAttributes()
  {
    if (getUncPath0().length() == 1) {
      return 0;
    }
    exists();
    return attributes & 0x7FFF;
  }
  
  public String getCanonicalPath()
  {
    String str = url.getAuthority();
    getUncPath0();
    if (str.length() > 0) {
      return "smb://" + url.getAuthority() + canon;
    }
    return "smb://";
  }
  
  public int getContentLength()
  {
    try
    {
      long l = length();
      return (int)(l & 0xFFFFFFFF);
    }
    catch (SmbException localSmbException) {}
    return 0;
  }
  
  public long getDate()
  {
    try
    {
      long l = lastModified();
      return l;
    }
    catch (SmbException localSmbException) {}
    return 0L;
  }
  
  public String getDfsPath()
  {
    Object localObject = null;
    resolveDfs(null);
    if (dfsReferral == null) {}
    String str;
    do
    {
      return (String)localObject;
      str = ("smb:/" + dfsReferral.server + "/" + dfsReferral.share + unc).replace('\\', '/');
      localObject = str;
    } while (!isDirectory());
    return str + '/';
  }
  
  public long getDiskFreeSpace()
  {
    if ((getType() == 8) || (type == 1))
    {
      try
      {
        long l = queryFSInformation(1007);
        return l;
      }
      catch (SmbException localSmbException)
      {
        switch (localSmbException.getNtStatus())
        {
        case -1073741822: 
        default: 
          throw localSmbException;
        }
      }
      return queryFSInformation(1);
    }
    return 0L;
  }
  
  UniAddress getFirstAddress()
  {
    addressIndex = 0;
    Object localObject1 = url.getHost();
    Object localObject2 = url.getPath();
    String str1 = url.getQuery();
    if (str1 != null)
    {
      String str2 = queryLookup(str1, "server");
      if ((str2 != null) && (str2.length() > 0))
      {
        addresses = new UniAddress[1];
        addresses[0] = UniAddress.getByName(str2);
        return getNextAddress();
      }
      str1 = queryLookup(str1, "address");
      if ((str1 != null) && (str1.length() > 0))
      {
        localObject2 = InetAddress.getByName(str1).getAddress();
        addresses = new UniAddress[1];
        addresses[0] = new UniAddress(InetAddress.getByAddress((String)localObject1, (byte[])localObject2));
        return getNextAddress();
      }
    }
    if (((String)localObject1).length() == 0) {}
    for (;;)
    {
      try
      {
        localObject1 = NbtAddress.getByName("\001\002__MSBROWSE__\002", 1, null);
        addresses = new UniAddress[1];
        addresses[0] = UniAddress.getByName(((NbtAddress)localObject1).getHostAddress());
        return getNextAddress();
      }
      catch (UnknownHostException localUnknownHostException)
      {
        NtlmPasswordAuthentication.initDefaults();
        if (NtlmPasswordAuthentication.DEFAULT_DOMAIN.equals("?")) {
          throw localUnknownHostException;
        }
        addresses = UniAddress.getAllByName(NtlmPasswordAuthentication.DEFAULT_DOMAIN, true);
        continue;
      }
      if ((((String)localObject2).length() == 0) || (((String)localObject2).equals("/"))) {
        addresses = UniAddress.getAllByName(localUnknownHostException, true);
      } else {
        addresses = UniAddress.getAllByName(localUnknownHostException, false);
      }
    }
  }
  
  public InputStream getInputStream()
  {
    return new SmbFileInputStream(this);
  }
  
  public long getLastModified()
  {
    try
    {
      long l = lastModified();
      return l;
    }
    catch (SmbException localSmbException) {}
    return 0L;
  }
  
  public String getName()
  {
    getUncPath0();
    if (canon.length() > 1)
    {
      int i = canon.length() - 2;
      while (canon.charAt(i) != '/') {
        i -= 1;
      }
      return canon.substring(i + 1);
    }
    if (share != null) {
      return share + '/';
    }
    if (url.getHost().length() > 0) {
      return url.getHost() + '/';
    }
    return "smb://";
  }
  
  UniAddress getNextAddress()
  {
    Object localObject = null;
    if (addressIndex < addresses.length)
    {
      localObject = addresses;
      int i = addressIndex;
      addressIndex = (i + 1);
      localObject = localObject[i];
    }
    return (UniAddress)localObject;
  }
  
  public OutputStream getOutputStream()
  {
    return new SmbFileOutputStream(this);
  }
  
  public String getParent()
  {
    String str = url.getAuthority();
    if (str.length() > 0)
    {
      StringBuffer localStringBuffer = new StringBuffer("smb://");
      localStringBuffer.append(str);
      getUncPath0();
      if (canon.length() > 1) {
        localStringBuffer.append(canon);
      }
      int i;
      for (;;)
      {
        str = localStringBuffer.toString();
        i = str.length() - 2;
        while (str.charAt(i) != '/') {
          i -= 1;
        }
        localStringBuffer.append('/');
      }
      return str.substring(0, i + 1);
    }
    return "smb://";
  }
  
  public String getPath()
  {
    return url.toString();
  }
  
  public Principal getPrincipal()
  {
    return auth;
  }
  
  public ACE[] getSecurity()
  {
    return getSecurity(false);
  }
  
  /* Error */
  public ACE[] getSecurity(boolean paramBoolean)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 530	jcifs/smb/SmbFile:isDirectory	()Z
    //   4: ifeq +69 -> 73
    //   7: iconst_1
    //   8: istore_2
    //   9: aload_0
    //   10: iconst_1
    //   11: ldc_w 1019
    //   14: iconst_0
    //   15: iload_2
    //   16: invokevirtual 604	jcifs/smb/SmbFile:open0	(IIII)I
    //   19: istore_2
    //   20: new 1021	jcifs/smb/NtTransQuerySecurityDesc
    //   23: dup
    //   24: iload_2
    //   25: iconst_4
    //   26: invokespecial 1024	jcifs/smb/NtTransQuerySecurityDesc:<init>	(II)V
    //   29: astore_3
    //   30: new 1026	jcifs/smb/NtTransQuerySecurityDescResponse
    //   33: dup
    //   34: invokespecial 1027	jcifs/smb/NtTransQuerySecurityDescResponse:<init>	()V
    //   37: astore 4
    //   39: aload_0
    //   40: aload_3
    //   41: aload 4
    //   43: invokevirtual 321	jcifs/smb/SmbFile:send	(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    //   46: aload_0
    //   47: iload_2
    //   48: lconst_0
    //   49: invokevirtual 383	jcifs/smb/SmbFile:close	(IJ)V
    //   52: aload 4
    //   54: getfield 1031	jcifs/smb/NtTransQuerySecurityDescResponse:securityDescriptor	Ljcifs/smb/SecurityDescriptor;
    //   57: getfield 1037	jcifs/smb/SecurityDescriptor:aces	[Ljcifs/smb/ACE;
    //   60: astore_3
    //   61: aload_3
    //   62: ifnull +9 -> 71
    //   65: aload_0
    //   66: aload_3
    //   67: iload_1
    //   68: invokespecial 1039	jcifs/smb/SmbFile:processAces	([Ljcifs/smb/ACE;Z)V
    //   71: aload_3
    //   72: areturn
    //   73: iconst_0
    //   74: istore_2
    //   75: goto -66 -> 9
    //   78: astore_3
    //   79: aload_0
    //   80: iload_2
    //   81: lconst_0
    //   82: invokevirtual 383	jcifs/smb/SmbFile:close	(IJ)V
    //   85: aload_3
    //   86: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	87	0	this	SmbFile
    //   0	87	1	paramBoolean	boolean
    //   8	73	2	i	int
    //   29	43	3	localObject1	Object
    //   78	8	3	localObject2	Object
    //   37	16	4	localNtTransQuerySecurityDescResponse	NtTransQuerySecurityDescResponse
    // Exception table:
    //   from	to	target	type
    //   39	46	78	finally
  }
  
  public String getServer()
  {
    String str2 = url.getHost();
    String str1 = str2;
    if (str2.length() == 0) {
      str1 = null;
    }
    return str1;
  }
  
  String getServerWithDfs()
  {
    if (dfsReferral != null) {
      return dfsReferral.server;
    }
    return getServer();
  }
  
  public String getShare()
  {
    return share;
  }
  
  public ACE[] getShareSecurity(boolean paramBoolean)
  {
    url.getPath();
    resolveDfs(null);
    Object localObject1 = getServerWithDfs();
    MsrpcShareGetInfo localMsrpcShareGetInfo = new MsrpcShareGetInfo((String)localObject1, tree.share);
    localObject1 = DcerpcHandle.getHandle("ncacn_np:" + (String)localObject1 + "[\\PIPE\\srvsvc]", auth);
    try
    {
      ((DcerpcHandle)localObject1).sendrecv(localMsrpcShareGetInfo);
      if (retval != 0) {
        throw new SmbException(retval, true);
      }
    }
    finally {}
    try
    {
      ((DcerpcHandle)localObject1).close();
      throw ((Throwable)localObject2);
      ACE[] arrayOfACE = ((MsrpcShareGetInfo)localObject2).getSecurity();
      if (arrayOfACE != null) {
        processAces(arrayOfACE, paramBoolean);
      }
      try
      {
        ((DcerpcHandle)localObject1).close();
        return arrayOfACE;
      }
      catch (IOException localIOException1)
      {
        do
        {
          localLogStream = log;
        } while (LogStream.level < 1);
        localIOException1.printStackTrace(log);
        return arrayOfACE;
      }
    }
    catch (IOException localIOException2)
    {
      for (;;)
      {
        LogStream localLogStream = log;
        if (LogStream.level >= 1) {
          localIOException2.printStackTrace(log);
        }
      }
    }
  }
  
  public int getType()
  {
    if (type == 0)
    {
      if (getUncPath0().length() <= 1) {
        break label28;
      }
      type = 1;
    }
    for (;;)
    {
      return type;
      label28:
      if (share != null)
      {
        connect0();
        if (share.equals("IPC$")) {
          type = 16;
        } else if (tree.service.equals("LPT1:")) {
          type = 32;
        } else if (tree.service.equals("COMM")) {
          type = 64;
        } else {
          type = 8;
        }
      }
      else if ((url.getAuthority() == null) || (url.getAuthority().length() == 0))
      {
        type = 2;
      }
      else
      {
        try
        {
          UniAddress localUniAddress = getAddress();
          if ((localUniAddress.getAddress() instanceof NbtAddress))
          {
            int i = ((NbtAddress)localUniAddress.getAddress()).getNameType();
            if ((i == 29) || (i == 27))
            {
              type = 2;
              return type;
            }
          }
        }
        catch (UnknownHostException localUnknownHostException)
        {
          throw new SmbException(url.toString(), localUnknownHostException);
        }
        type = 4;
      }
    }
  }
  
  public String getUncPath()
  {
    getUncPath0();
    if (share == null) {
      return "\\\\" + url.getHost();
    }
    return "\\\\" + url.getHost() + canon.replace('/', '\\');
  }
  
  String getUncPath0()
  {
    Object localObject;
    char[] arrayOfChar;
    int i;
    int j;
    if (unc == null)
    {
      localObject = url.getPath().toCharArray();
      arrayOfChar = new char[localObject.length];
      int i2 = localObject.length;
      int m = 0;
      int k = 0;
      i = 0;
      if (i < i2)
      {
        int n = m;
        switch (m)
        {
        default: 
          j = k;
          n = m;
        }
        for (;;)
        {
          i += 1;
          m = n;
          k = j;
          break;
          if (localObject[i] != '/') {
            return null;
          }
          arrayOfChar[k] = localObject[i];
          j = k + 1;
          n = 1;
          continue;
          if (localObject[i] == '/')
          {
            n = m;
            j = k;
          }
          else if ((localObject[i] == '.') && ((i + 1 >= i2) || (localObject[(i + 1)] == '/')))
          {
            i += 1;
            n = m;
            j = k;
          }
          else if ((i + 1 < i2) && (localObject[i] == '.') && (localObject[(i + 1)] == '.') && ((i + 2 >= i2) || (localObject[(i + 2)] == '/')))
          {
            int i1 = i + 2;
            n = m;
            j = k;
            i = i1;
            if (k != 1)
            {
              i = k;
              do
              {
                k = i - 1;
                n = m;
                j = k;
                i = i1;
                if (k <= 1) {
                  break;
                }
                i = k;
              } while (arrayOfChar[(k - 1)] != '/');
              n = m;
              j = k;
              i = i1;
            }
          }
          else
          {
            n = 2;
            if (localObject[i] == '/') {
              n = 1;
            }
            arrayOfChar[k] = localObject[i];
            j = k + 1;
          }
        }
      }
      canon = new String(arrayOfChar, 0, k);
      if (k <= 1) {
        break label477;
      }
      i = k - 1;
      j = canon.indexOf('/', 1);
      if (j >= 0) {
        break label386;
      }
      share = canon.substring(1);
      unc = "\\";
    }
    for (;;)
    {
      return unc;
      label386:
      if (j == i)
      {
        share = canon.substring(1, j);
        unc = "\\";
      }
      else
      {
        share = canon.substring(1, j);
        localObject = canon;
        if (arrayOfChar[i] == '/') {}
        for (;;)
        {
          unc = ((String)localObject).substring(j, i);
          unc = unc.replace('/', '\\');
          break;
          i += 1;
        }
        label477:
        share = null;
        unc = "\\";
      }
    }
  }
  
  boolean hasNextAddress()
  {
    return addressIndex < addresses.length;
  }
  
  public int hashCode()
  {
    try
    {
      i = getAddress().hashCode();
      getUncPath0();
      return i + canon.toUpperCase().hashCode();
    }
    catch (UnknownHostException localUnknownHostException)
    {
      for (;;)
      {
        int i = getServer().toUpperCase().hashCode();
      }
    }
  }
  
  boolean isConnected()
  {
    return (tree != null) && (tree.connectionState == 2);
  }
  
  public boolean isDirectory()
  {
    if (getUncPath0().length() == 1) {}
    do
    {
      return true;
      if (!exists()) {
        return false;
      }
    } while ((attributes & 0x10) == 16);
    return false;
  }
  
  public boolean isFile()
  {
    boolean bool = true;
    if (getUncPath0().length() == 1) {
      return false;
    }
    exists();
    if ((attributes & 0x10) == 0) {}
    for (;;)
    {
      return bool;
      bool = false;
    }
  }
  
  public boolean isHidden()
  {
    boolean bool = true;
    if (share == null) {}
    do
    {
      return false;
      if (getUncPath0().length() != 1) {
        break;
      }
    } while (!share.endsWith("$"));
    return true;
    exists();
    if ((attributes & 0x2) == 2) {}
    for (;;)
    {
      return bool;
      bool = false;
    }
  }
  
  boolean isOpen()
  {
    return (opened) && (isConnected()) && (tree_num == tree.tree_num);
  }
  
  boolean isWorkgroup0()
  {
    if ((type == 2) || (url.getHost().length() == 0))
    {
      type = 2;
      return true;
    }
    getUncPath0();
    if (share == null)
    {
      UniAddress localUniAddress = getAddress();
      if ((localUniAddress.getAddress() instanceof NbtAddress))
      {
        int i = ((NbtAddress)localUniAddress.getAddress()).getNameType();
        if ((i == 29) || (i == 27))
        {
          type = 2;
          return true;
        }
      }
      type = 4;
    }
    return false;
  }
  
  public long lastModified()
  {
    if (getUncPath0().length() > 1)
    {
      exists();
      return lastModified;
    }
    return 0L;
  }
  
  public long length()
  {
    if (sizeExpiration > System.currentTimeMillis()) {
      return size;
    }
    if (getType() == 8)
    {
      Trans2QueryFSInformationResponse localTrans2QueryFSInformationResponse = new Trans2QueryFSInformationResponse(1);
      send(new Trans2QueryFSInformation(1), localTrans2QueryFSInformationResponse);
      size = info.getCapacity();
    }
    for (;;)
    {
      sizeExpiration = (System.currentTimeMillis() + attrExpirationPeriod);
      return size;
      if ((getUncPath0().length() > 1) && (type != 16)) {
        size = queryPath(getUncPath0(), 258).getSize();
      } else {
        size = 0L;
      }
    }
  }
  
  public String[] list()
  {
    return list("*", 22, null, null);
  }
  
  String[] list(String paramString, int paramInt, SmbFilenameFilter paramSmbFilenameFilter, SmbFileFilter paramSmbFileFilter)
  {
    ArrayList localArrayList = new ArrayList();
    doEnum(localArrayList, false, paramString, paramInt, paramSmbFilenameFilter, paramSmbFileFilter);
    return (String[])localArrayList.toArray(new String[localArrayList.size()]);
  }
  
  public String[] list(SmbFilenameFilter paramSmbFilenameFilter)
  {
    return list("*", 22, paramSmbFilenameFilter, null);
  }
  
  public SmbFile[] listFiles()
  {
    return listFiles("*", 22, null, null);
  }
  
  public SmbFile[] listFiles(String paramString)
  {
    return listFiles(paramString, 22, null, null);
  }
  
  SmbFile[] listFiles(String paramString, int paramInt, SmbFilenameFilter paramSmbFilenameFilter, SmbFileFilter paramSmbFileFilter)
  {
    ArrayList localArrayList = new ArrayList();
    doEnum(localArrayList, true, paramString, paramInt, paramSmbFilenameFilter, paramSmbFileFilter);
    return (SmbFile[])localArrayList.toArray(new SmbFile[localArrayList.size()]);
  }
  
  public SmbFile[] listFiles(SmbFileFilter paramSmbFileFilter)
  {
    return listFiles("*", 22, null, paramSmbFileFilter);
  }
  
  public SmbFile[] listFiles(SmbFilenameFilter paramSmbFilenameFilter)
  {
    return listFiles("*", 22, paramSmbFilenameFilter, null);
  }
  
  public void mkdir()
  {
    String str = getUncPath0();
    if (str.length() == 1) {
      throw new SmbException("Invalid operation for workgroups, servers, or shares");
    }
    LogStream localLogStream = log;
    if (LogStream.level >= 3) {
      log.println("mkdir: " + str);
    }
    send(new SmbComCreateDirectory(str), blank_resp());
    sizeExpiration = 0L;
    attrExpiration = 0L;
  }
  
  public void mkdirs()
  {
    try
    {
      SmbFile localSmbFile = new SmbFile(getParent(), auth);
      if (!localSmbFile.exists()) {
        localSmbFile.mkdirs();
      }
      mkdir();
      return;
    }
    catch (IOException localIOException) {}
  }
  
  void open(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (isOpen()) {
      return;
    }
    fid = open0(paramInt1, paramInt2, paramInt3, paramInt4);
    opened = true;
    tree_num = tree.tree_num;
  }
  
  int open0(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    connect0();
    Object localObject = log;
    if (LogStream.level >= 3) {
      log.println("open0: " + unc);
    }
    if (tree.session.transport.hasCapability(16))
    {
      localObject = new SmbComNTCreateAndXResponse();
      SmbComNTCreateAndX localSmbComNTCreateAndX = new SmbComNTCreateAndX(unc, paramInt1, paramInt2, shareAccess, paramInt3, paramInt4, null);
      if ((this instanceof SmbNamedPipe))
      {
        flags0 |= 0x16;
        desiredAccess |= 0x20000;
        isExtended = true;
      }
      send(localSmbComNTCreateAndX, (ServerMessageBlock)localObject);
      paramInt1 = fid;
      attributes = (extFileAttributes & 0x7FFF);
      attrExpiration = (System.currentTimeMillis() + attrExpirationPeriod);
      isExists = true;
      return paramInt1;
    }
    localObject = new SmbComOpenAndXResponse();
    send(new SmbComOpenAndX(unc, paramInt2, paramInt1, null), (ServerMessageBlock)localObject);
    return fid;
  }
  
  protected boolean pathNamesPossiblyEqual(String paramString1, String paramString2)
  {
    int i = paramString1.lastIndexOf('/');
    int j = paramString2.lastIndexOf('/');
    int k = paramString1.length() - i;
    int m = paramString2.length() - j;
    if ((k > 1) && (paramString1.charAt(i + 1) == '.')) {}
    while (((m > 1) && (paramString2.charAt(j + 1) == '.')) || ((k == m) && (paramString1.regionMatches(true, i, paramString2, j, k)))) {
      return true;
    }
    return false;
  }
  
  Info queryPath(String paramString, int paramInt)
  {
    connect0();
    Object localObject = log;
    if (LogStream.level >= 3) {
      log.println("queryPath: " + paramString);
    }
    if (tree.session.transport.hasCapability(16))
    {
      localObject = new Trans2QueryPathInformationResponse(paramInt);
      send(new Trans2QueryPathInformation(paramString, paramInt), (ServerMessageBlock)localObject);
      return info;
    }
    localObject = new SmbComQueryInformationResponse(tree.session.transport.server.serverTimeZone * 1000 * 60L);
    send(new SmbComQueryInformation(paramString), (ServerMessageBlock)localObject);
    return (Info)localObject;
  }
  
  public void renameTo(SmbFile paramSmbFile)
  {
    if ((getUncPath0().length() == 1) || (paramSmbFile.getUncPath0().length() == 1)) {
      throw new SmbException("Invalid operation for workgroups, servers, or shares");
    }
    resolveDfs(null);
    paramSmbFile.resolveDfs(null);
    if (!tree.equals(tree)) {
      throw new SmbException("Invalid operation for workgroups, servers, or shares");
    }
    LogStream localLogStream = log;
    if (LogStream.level >= 3) {
      log.println("renameTo: " + unc + " -> " + unc);
    }
    sizeExpiration = 0L;
    attrExpiration = 0L;
    attrExpiration = 0L;
    send(new SmbComRename(unc, unc), blank_resp());
  }
  
  void resolveDfs(ServerMessageBlock paramServerMessageBlock)
  {
    Object localObject5 = null;
    if ((paramServerMessageBlock instanceof SmbComClose)) {
      return;
    }
    connect0();
    DfsReferral localDfsReferral = dfs.resolve(tree.session.transport.tconHostName, tree.share, unc, auth);
    Object localObject1;
    if (localDfsReferral != null)
    {
      if (paramServerMessageBlock == null) {
        break label610;
      }
      switch (command)
      {
      default: 
        localObject1 = "A:";
      }
    }
    for (;;)
    {
      Object localObject2 = localDfsReferral;
      label517:
      label607:
      for (;;)
      {
        Object localObject4;
        try
        {
          Object localObject3 = log;
          if (LogStream.level >= 2) {
            log.println("DFS redirect: " + localObject2);
          }
          localObject3 = SmbTransport.getSmbTransport(UniAddress.getByName(server), url.getPort());
          ((SmbTransport)localObject3).connect();
          tree = ((SmbTransport)localObject3).getSmbSession(auth).getSmbTree(share, (String)localObject1);
          if ((localObject2 != localDfsReferral) && (key != null)) {
            map.put(key, localObject2);
          }
          localObject1 = localObject5;
          localObject3 = localObject2;
        }
        catch (IOException localIOException)
        {
          if (!(localIOException instanceof SmbException)) {
            continue;
          }
          localObject4 = (SmbException)localIOException;
          localObject2 = next;
          if (localObject2 != localDfsReferral) {
            break label607;
          }
          localObject1 = localObject4;
          localObject4 = localObject2;
          continue;
          localObject4 = new SmbException(server, (Throwable)localObject4);
          continue;
          localObject1 = log;
          if (LogStream.level < 3) {
            continue;
          }
          log.println(localObject4);
          dfsReferral = ((DfsReferral)localObject4);
          if (pathConsumed >= 0) {
            break label517;
          }
        }
        if (localObject1 != null)
        {
          throw ((Throwable)localObject1);
          switch (subCommand & 0xFF)
          {
          default: 
            localObject1 = "A:";
            break;
          case 16: 
            localObject1 = null;
            break;
          }
        }
        pathConsumed = 0;
        for (;;)
        {
          localObject2 = unc.substring(pathConsumed);
          localObject1 = localObject2;
          if (((String)localObject2).equals("")) {
            localObject1 = "\\";
          }
          localObject2 = localObject1;
          if (!path.equals("")) {
            localObject2 = "\\" + path + (String)localObject1;
          }
          unc = ((String)localObject2);
          localObject1 = localObject2;
          if (paramServerMessageBlock != null)
          {
            localObject1 = localObject2;
            if (path != null)
            {
              localObject1 = localObject2;
              if (path.endsWith("\\"))
              {
                localObject1 = localObject2;
                if (!((String)localObject2).endsWith("\\")) {
                  localObject1 = (String)localObject2 + "\\";
                }
              }
            }
          }
          if (paramServerMessageBlock == null) {
            break;
          }
          path = ((String)localObject1);
          flags2 |= 0x1000;
          return;
          if (pathConsumed > unc.length()) {
            pathConsumed = unc.length();
          }
        }
        if ((tree.inDomainDfs) && (!(paramServerMessageBlock instanceof NtTransQuerySecurityDesc)) && (!(paramServerMessageBlock instanceof SmbComClose)) && (!(paramServerMessageBlock instanceof SmbComFindClose2))) {
          throw new SmbException(-1073741275, false);
        }
        if (paramServerMessageBlock == null) {
          break;
        }
        flags2 &= 0xEFFF;
        return;
      }
      label610:
      localObject1 = null;
    }
  }
  
  void send(ServerMessageBlock paramServerMessageBlock1, ServerMessageBlock paramServerMessageBlock2)
  {
    for (;;)
    {
      resolveDfs(paramServerMessageBlock1);
      try
      {
        tree.send(paramServerMessageBlock1, paramServerMessageBlock2);
        return;
      }
      catch (DfsReferral localDfsReferral)
      {
        if (resolveHashes) {
          throw localDfsReferral;
        }
        paramServerMessageBlock1.reset();
      }
    }
  }
  
  public void setAttributes(int paramInt)
  {
    if (getUncPath0().length() == 1) {
      throw new SmbException("Invalid operation for workgroups, servers, or shares");
    }
    setPathInformation(paramInt & 0x30A7, 0L, 0L);
  }
  
  public void setCreateTime(long paramLong)
  {
    if (getUncPath0().length() == 1) {
      throw new SmbException("Invalid operation for workgroups, servers, or shares");
    }
    setPathInformation(0, paramLong, 0L);
  }
  
  public void setLastModified(long paramLong)
  {
    if (getUncPath0().length() == 1) {
      throw new SmbException("Invalid operation for workgroups, servers, or shares");
    }
    setPathInformation(0, 0L, paramLong);
  }
  
  void setPathInformation(int paramInt, long paramLong1, long paramLong2)
  {
    exists();
    int j = attributes & 0x10;
    if (j != 0) {}
    for (int i = 1;; i = 64)
    {
      i = open0(1, 256, j, i);
      send(new Trans2SetFileInformation(i, j | paramInt, paramLong1, paramLong2), new Trans2SetFileInformationResponse());
      close(i, 0L);
      attrExpiration = 0L;
      return;
    }
  }
  
  public void setReadOnly()
  {
    setAttributes(getAttributes() | 0x1);
  }
  
  public void setReadWrite()
  {
    setAttributes(getAttributes() & 0xFFFFFFFE);
  }
  
  public String toString()
  {
    return url.toString();
  }
  
  public URL toURL()
  {
    return url;
  }
}

/* Location:
 * Qualified Name:     jcifs.smb.SmbFile
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
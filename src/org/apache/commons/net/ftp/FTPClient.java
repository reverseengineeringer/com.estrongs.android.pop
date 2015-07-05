package org.apache.commons.net.ftp;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Locale;
import java.util.Properties;
import java.util.Random;
import java.util.Set;
import java.util.regex.Pattern;
import javax.net.ServerSocketFactory;
import javax.net.SocketFactory;
import org.apache.commons.net.MalformedServerReplyException;
import org.apache.commons.net.ftp.parser.DefaultFTPFileEntryParserFactory;
import org.apache.commons.net.ftp.parser.FTPFileEntryParserFactory;
import org.apache.commons.net.ftp.parser.MLSxEntryParser;
import org.apache.commons.net.io.CRLFLineReader;
import org.apache.commons.net.io.CopyStreamAdapter;
import org.apache.commons.net.io.CopyStreamListener;
import org.apache.commons.net.io.FromNetASCIIInputStream;
import org.apache.commons.net.io.SocketInputStream;
import org.apache.commons.net.io.SocketOutputStream;
import org.apache.commons.net.io.ToNetASCIIOutputStream;
import org.apache.commons.net.io.Util;

public class FTPClient
  extends FTP
  implements Configurable
{
  public static final int ACTIVE_LOCAL_DATA_CONNECTION_MODE = 0;
  public static final int ACTIVE_REMOTE_DATA_CONNECTION_MODE = 1;
  public static final String FTP_SYSTEM_TYPE = "org.apache.commons.net.ftp.systemType";
  public static final int PASSIVE_LOCAL_DATA_CONNECTION_MODE = 2;
  public static final int PASSIVE_REMOTE_DATA_CONNECTION_MODE = 3;
  public static final String SYSTEM_TYPE_PROPERTIES = "/systemType.properties";
  private static final Pattern __PARMS_PAT = Pattern.compile("(\\d{1,3},\\d{1,3},\\d{1,3},\\d{1,3}),(\\d{1,3}),(\\d{1,3})");
  private InetAddress __activeExternalHost;
  private int __activeMaxPort;
  private int __activeMinPort;
  private boolean __autodetectEncoding = false;
  private int __bufferSize;
  private FTPClientConfig __configuration;
  private int __controlKeepAliveReplyTimeout = 1000;
  private long __controlKeepAliveTimeout;
  private CopyStreamListener __copyStreamListener;
  private int __dataConnectionMode;
  private int __dataTimeout;
  private FTPFileEntryParser __entryParser;
  private String __entryParserKey;
  private HashMap<String, Set<String>> __featuresMap;
  private int __fileFormat;
  private int __fileStructure;
  private int __fileTransferMode;
  private int __fileType;
  private boolean __listHiddenFiles;
  private FTPFileEntryParserFactory __parserFactory;
  private String __passiveHost;
  private int __passivePort;
  private final Random __random;
  private boolean __remoteVerificationEnabled;
  private long __restartOffset;
  private String __systemName;
  private boolean __useEPSVwithIPv4;
  
  public FTPClient()
  {
    __initDefaults();
    __dataTimeout = -1;
    __remoteVerificationEnabled = true;
    __parserFactory = new DefaultFTPFileEntryParserFactory();
    __configuration = null;
    __listHiddenFiles = false;
    __useEPSVwithIPv4 = false;
    __random = new Random();
  }
  
  private void __initDefaults()
  {
    __dataConnectionMode = 0;
    __passiveHost = null;
    __passivePort = -1;
    __activeExternalHost = null;
    __activeMinPort = 0;
    __activeMaxPort = 0;
    __fileType = 0;
    __fileStructure = 7;
    __fileFormat = 4;
    __fileTransferMode = 10;
    __restartOffset = 0L;
    __systemName = null;
    __entryParser = null;
    __entryParserKey = "";
    __bufferSize = 1024;
    __featuresMap = null;
  }
  
  private CopyStreamListener __mergeListeners(CopyStreamListener paramCopyStreamListener)
  {
    if (paramCopyStreamListener == null) {
      localObject = __copyStreamListener;
    }
    do
    {
      return (CopyStreamListener)localObject;
      localObject = paramCopyStreamListener;
    } while (__copyStreamListener == null);
    Object localObject = new CopyStreamAdapter();
    ((CopyStreamAdapter)localObject).addCopyStreamListener(paramCopyStreamListener);
    ((CopyStreamAdapter)localObject).addCopyStreamListener(__copyStreamListener);
    return (CopyStreamListener)localObject;
  }
  
  private void __parseExtendedPassiveModeReply(String paramString)
  {
    paramString = paramString.substring(paramString.indexOf('(') + 1, paramString.indexOf(')')).trim();
    int i = paramString.charAt(0);
    int j = paramString.charAt(1);
    int k = paramString.charAt(2);
    int m = paramString.charAt(paramString.length() - 1);
    if ((i != j) || (j != k) || (k != m)) {
      throw new MalformedServerReplyException("Could not parse extended passive host information.\nServer Reply: " + paramString);
    }
    try
    {
      i = Integer.parseInt(paramString.substring(3, paramString.length() - 1));
      __passiveHost = getRemoteAddress().getHostAddress();
      __passivePort = i;
      return;
    }
    catch (NumberFormatException localNumberFormatException)
    {
      throw new MalformedServerReplyException("Could not parse extended passive host information.\nServer Reply: " + paramString);
    }
  }
  
  /* Error */
  private void __parsePassiveModeReply(String paramString)
  {
    // Byte code:
    //   0: getstatic 73	org/apache/commons/net/ftp/FTPClient:__PARMS_PAT	Ljava/util/regex/Pattern;
    //   3: aload_1
    //   4: invokevirtual 213	java/util/regex/Pattern:matcher	(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
    //   7: astore_3
    //   8: aload_3
    //   9: invokevirtual 219	java/util/regex/Matcher:find	()Z
    //   12: ifne +27 -> 39
    //   15: new 177	org/apache/commons/net/MalformedServerReplyException
    //   18: dup
    //   19: new 179	java/lang/StringBuilder
    //   22: dup
    //   23: ldc -35
    //   25: invokespecial 183	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   28: aload_1
    //   29: invokevirtual 187	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   32: invokevirtual 190	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   35: invokespecial 191	org/apache/commons/net/MalformedServerReplyException:<init>	(Ljava/lang/String;)V
    //   38: athrow
    //   39: aload_0
    //   40: aload_3
    //   41: iconst_1
    //   42: invokevirtual 225	java/util/regex/Matcher:group	(I)Ljava/lang/String;
    //   45: bipush 44
    //   47: bipush 46
    //   49: invokevirtual 229	java/lang/String:replace	(CC)Ljava/lang/String;
    //   52: putfield 108	org/apache/commons/net/ftp/FTPClient:__passiveHost	Ljava/lang/String;
    //   55: aload_3
    //   56: iconst_2
    //   57: invokevirtual 225	java/util/regex/Matcher:group	(I)Ljava/lang/String;
    //   60: invokestatic 197	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   63: istore_2
    //   64: aload_0
    //   65: aload_3
    //   66: iconst_3
    //   67: invokevirtual 225	java/util/regex/Matcher:group	(I)Ljava/lang/String;
    //   70: invokestatic 197	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   73: iload_2
    //   74: bipush 8
    //   76: ishl
    //   77: ior
    //   78: putfield 110	org/apache/commons/net/ftp/FTPClient:__passivePort	I
    //   81: aload_0
    //   82: getfield 108	org/apache/commons/net/ftp/FTPClient:__passiveHost	Ljava/lang/String;
    //   85: invokestatic 233	java/net/InetAddress:getByName	(Ljava/lang/String;)Ljava/net/InetAddress;
    //   88: invokevirtual 236	java/net/InetAddress:isSiteLocalAddress	()Z
    //   91: ifeq +64 -> 155
    //   94: aload_0
    //   95: invokevirtual 201	org/apache/commons/net/ftp/FTPClient:getRemoteAddress	()Ljava/net/InetAddress;
    //   98: invokevirtual 236	java/net/InetAddress:isSiteLocalAddress	()Z
    //   101: ifne +54 -> 155
    //   104: aload_0
    //   105: invokevirtual 201	org/apache/commons/net/ftp/FTPClient:getRemoteAddress	()Ljava/net/InetAddress;
    //   108: invokevirtual 206	java/net/InetAddress:getHostAddress	()Ljava/lang/String;
    //   111: astore_3
    //   112: aload_0
    //   113: iconst_0
    //   114: new 179	java/lang/StringBuilder
    //   117: dup
    //   118: ldc -18
    //   120: invokespecial 183	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   123: aload_0
    //   124: getfield 108	org/apache/commons/net/ftp/FTPClient:__passiveHost	Ljava/lang/String;
    //   127: invokevirtual 187	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   130: ldc -16
    //   132: invokevirtual 187	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   135: aload_3
    //   136: invokevirtual 187	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   139: ldc -14
    //   141: invokevirtual 187	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   144: invokevirtual 190	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   147: invokevirtual 246	org/apache/commons/net/ftp/FTPClient:fireReplyReceived	(ILjava/lang/String;)V
    //   150: aload_0
    //   151: aload_3
    //   152: putfield 108	org/apache/commons/net/ftp/FTPClient:__passiveHost	Ljava/lang/String;
    //   155: return
    //   156: astore_3
    //   157: new 177	org/apache/commons/net/MalformedServerReplyException
    //   160: dup
    //   161: new 179	java/lang/StringBuilder
    //   164: dup
    //   165: ldc -8
    //   167: invokespecial 183	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   170: aload_1
    //   171: invokevirtual 187	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   174: invokevirtual 190	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   177: invokespecial 191	org/apache/commons/net/MalformedServerReplyException:<init>	(Ljava/lang/String;)V
    //   180: athrow
    //   181: astore_3
    //   182: new 177	org/apache/commons/net/MalformedServerReplyException
    //   185: dup
    //   186: new 179	java/lang/StringBuilder
    //   189: dup
    //   190: ldc -35
    //   192: invokespecial 183	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   195: aload_1
    //   196: invokevirtual 187	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   199: invokevirtual 190	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   202: invokespecial 191	org/apache/commons/net/MalformedServerReplyException:<init>	(Ljava/lang/String;)V
    //   205: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	206	0	this	FTPClient
    //   0	206	1	paramString	String
    //   63	14	2	i	int
    //   7	145	3	localObject	Object
    //   156	1	3	localNumberFormatException	NumberFormatException
    //   181	1	3	localUnknownHostException	java.net.UnknownHostException
    // Exception table:
    //   from	to	target	type
    //   55	81	156	java/lang/NumberFormatException
    //   81	155	181	java/net/UnknownHostException
  }
  
  private String __parsePathname(String paramString)
  {
    int i = paramString.indexOf('"') + 1;
    return paramString.substring(i, paramString.indexOf('"', i));
  }
  
  private boolean __storeFile(int paramInt, String paramString, InputStream paramInputStream)
  {
    boolean bool1 = false;
    Socket localSocket = _openDataConnection_(paramInt, paramString);
    if (localSocket == null) {
      return bool1;
    }
    paramString = new BufferedOutputStream(localSocket.getOutputStream(), getBufferSize());
    if (__fileType == 0) {
      paramString = new ToNetASCIIOutputStream(paramString);
    }
    for (;;)
    {
      if (__controlKeepAliveTimeout > 0L) {}
      for (FTPClient.CSL localCSL = new FTPClient.CSL(this, __controlKeepAliveTimeout, __controlKeepAliveReplyTimeout);; localCSL = null) {
        try
        {
          Util.copyStream(paramInputStream, paramString, getBufferSize(), -1L, __mergeListeners(localCSL), false);
          paramString.close();
          localSocket.close();
          boolean bool2 = completePendingCommand();
          bool1 = bool2;
          if (localCSL == null) {
            break;
          }
          localCSL.cleanUp();
          return bool2;
        }
        catch (IOException paramString)
        {
          Util.closeQuietly(localSocket);
          throw paramString;
        }
      }
    }
  }
  
  private OutputStream __storeFileStream(int paramInt, String paramString)
  {
    Socket localSocket = _openDataConnection_(paramInt, paramString);
    if (localSocket == null) {
      return null;
    }
    OutputStream localOutputStream = localSocket.getOutputStream();
    paramString = localOutputStream;
    if (__fileType == 0) {
      paramString = new ToNetASCIIOutputStream(new BufferedOutputStream(localOutputStream, getBufferSize()));
    }
    return new SocketOutputStream(localSocket, paramString);
  }
  
  private int getActivePort()
  {
    if ((__activeMinPort > 0) && (__activeMaxPort >= __activeMinPort))
    {
      if (__activeMaxPort == __activeMinPort) {
        return __activeMaxPort;
      }
      return __random.nextInt(__activeMaxPort - __activeMinPort + 1) + __activeMinPort;
    }
    return 0;
  }
  
  private InetAddress getHostAddress()
  {
    if (__activeExternalHost != null) {
      return __activeExternalHost;
    }
    return getLocalAddress();
  }
  
  private static Properties getOverrideProperties()
  {
    return FTPClient.PropertiesSingleton.PROPERTIES;
  }
  
  private boolean initFeatureMap()
  {
    String[] arrayOfString;
    int i;
    if (__featuresMap == null)
    {
      boolean bool = FTPReply.isPositiveCompletion(feat());
      __featuresMap = new HashMap();
      if (!bool) {
        return false;
      }
      arrayOfString = getReplyStrings();
      int j = arrayOfString.length;
      i = 0;
      if (i < j) {}
    }
    else
    {
      return true;
    }
    String str1 = arrayOfString[i];
    int k;
    Object localObject;
    if (str1.startsWith(" "))
    {
      k = str1.indexOf(' ', 1);
      if (k <= 0) {
        break label173;
      }
      localObject = str1.substring(1, k);
    }
    for (str1 = str1.substring(k + 1);; str1 = "")
    {
      String str2 = ((String)localObject).toUpperCase(Locale.ENGLISH);
      Set localSet = (Set)__featuresMap.get(str2);
      localObject = localSet;
      if (localSet == null)
      {
        localObject = new HashSet();
        __featuresMap.put(str2, localObject);
      }
      ((Set)localObject).add(str1);
      i += 1;
      break;
      label173:
      localObject = str1.substring(1);
    }
  }
  
  private FTPListParseEngine initiateListParsing(FTPFileEntryParser paramFTPFileEntryParser, String paramString)
  {
    paramFTPFileEntryParser = new FTPListParseEngine(paramFTPFileEntryParser, this);
    paramString = _openDataConnection_(26, getListArguments(paramString));
    if (paramString == null) {
      return paramFTPFileEntryParser;
    }
    try
    {
      paramFTPFileEntryParser.readServerList(paramString.getInputStream(), getControlEncoding());
      Util.closeQuietly(paramString);
      completePendingCommand();
      return paramFTPFileEntryParser;
    }
    finally
    {
      Util.closeQuietly(paramString);
    }
  }
  
  private FTPListParseEngine initiateMListParsing(String paramString)
  {
    FTPListParseEngine localFTPListParseEngine = new FTPListParseEngine(MLSxEntryParser.getInstance());
    paramString = _openDataConnection_(38, paramString);
    if (paramString == null) {
      return localFTPListParseEngine;
    }
    try
    {
      localFTPListParseEngine.readServerList(paramString.getInputStream(), getControlEncoding());
      return localFTPListParseEngine;
    }
    finally
    {
      Util.closeQuietly(paramString);
      completePendingCommand();
    }
  }
  
  private boolean restart(long paramLong)
  {
    __restartOffset = 0L;
    return FTPReply.isPositiveIntermediate(rest(Long.toString(paramLong)));
  }
  
  protected void _connectAction_()
  {
    super._connectAction_();
    __initDefaults();
    if (__autodetectEncoding)
    {
      ArrayList localArrayList = new ArrayList(_replyLines);
      int i = _replyCode;
      if ((hasFeature("UTF8")) || (hasFeature("UTF-8")))
      {
        setControlEncoding("UTF-8");
        _controlInput_ = new CRLFLineReader(new InputStreamReader(_input_, getControlEncoding()));
        _controlOutput_ = new BufferedWriter(new OutputStreamWriter(_output_, getControlEncoding()));
      }
      _replyLines.clear();
      _replyLines.addAll(localArrayList);
      _replyCode = i;
    }
  }
  
  protected Socket _openDataConnection_(int paramInt, String paramString)
  {
    int j = 1;
    if ((__dataConnectionMode != 0) && (__dataConnectionMode != 2)) {
      paramString = null;
    }
    Object localObject1;
    do
    {
      return paramString;
      boolean bool = getRemoteAddress() instanceof Inet6Address;
      Object localObject2;
      if (__dataConnectionMode == 0)
      {
        localObject2 = _serverSocketFactory_.createServerSocket(getActivePort(), 1, getHostAddress());
        if (bool)
        {
          if (!FTPReply.isPositiveCompletion(eprt(getHostAddress(), ((ServerSocket)localObject2).getLocalPort())))
          {
            ((ServerSocket)localObject2).close();
            return null;
          }
        }
        else if (!FTPReply.isPositiveCompletion(port(getHostAddress(), ((ServerSocket)localObject2).getLocalPort())))
        {
          ((ServerSocket)localObject2).close();
          return null;
        }
        if ((__restartOffset > 0L) && (!restart(__restartOffset)))
        {
          ((ServerSocket)localObject2).close();
          return null;
        }
        if (!FTPReply.isPositivePreliminary(sendCommand(paramInt, paramString)))
        {
          ((ServerSocket)localObject2).close();
          return null;
        }
        if (__dataTimeout >= 0) {
          ((ServerSocket)localObject2).setSoTimeout(__dataTimeout);
        }
      }
      for (;;)
      {
        try
        {
          localObject1 = ((ServerSocket)localObject2).accept();
          ((ServerSocket)localObject2).close();
          if ((!__remoteVerificationEnabled) || (verifyRemote((Socket)localObject1))) {
            break;
          }
          paramString = ((Socket)localObject1).getInetAddress();
          localObject2 = getRemoteAddress();
          ((Socket)localObject1).close();
          throw new IOException("Host attempting data connection " + paramString.getHostAddress() + " is not same as server " + ((InetAddress)localObject2).getHostAddress());
        }
        finally
        {
          ((ServerSocket)localObject2).close();
        }
        int i = j;
        if (!isUseEPSVwithIPv4())
        {
          i = j;
          if (!bool) {
            i = 0;
          }
        }
        if ((i != 0) && (epsv() == 229)) {
          __parseExtendedPassiveModeReply((String)_replyLines.get(0));
        }
        for (;;)
        {
          localObject2 = _socketFactory_.createSocket();
          ((Socket)localObject2).connect(new InetSocketAddress(__passiveHost, __passivePort), connectTimeout);
          if ((__restartOffset <= 0L) || (restart(__restartOffset))) {
            break;
          }
          ((Socket)localObject2).close();
          return null;
          if (bool) {
            return null;
          }
          if (pasv() != 227) {
            return null;
          }
          __parsePassiveModeReply((String)_replyLines.get(0));
        }
        localObject1 = localObject2;
        if (!FTPReply.isPositivePreliminary(sendCommand(paramInt, paramString)))
        {
          ((Socket)localObject2).close();
          return null;
        }
      }
      paramString = (String)localObject1;
    } while (__dataTimeout < 0);
    ((Socket)localObject1).setSoTimeout(__dataTimeout);
    return (Socket)localObject1;
  }
  
  public boolean abort()
  {
    return FTPReply.isPositiveCompletion(abor());
  }
  
  public boolean allocate(int paramInt)
  {
    return FTPReply.isPositiveCompletion(allo(paramInt));
  }
  
  public boolean allocate(int paramInt1, int paramInt2)
  {
    return FTPReply.isPositiveCompletion(allo(paramInt1, paramInt2));
  }
  
  public boolean appendFile(String paramString, InputStream paramInputStream)
  {
    return __storeFile(16, paramString, paramInputStream);
  }
  
  public OutputStream appendFileStream(String paramString)
  {
    return __storeFileStream(16, paramString);
  }
  
  public boolean changeToParentDirectory()
  {
    return FTPReply.isPositiveCompletion(cdup());
  }
  
  public boolean changeWorkingDirectory(String paramString)
  {
    return FTPReply.isPositiveCompletion(cwd(paramString));
  }
  
  public boolean completePendingCommand()
  {
    return FTPReply.isPositiveCompletion(getReply());
  }
  
  public void configure(FTPClientConfig paramFTPClientConfig)
  {
    __configuration = paramFTPClientConfig;
  }
  
  public boolean deleteFile(String paramString)
  {
    return FTPReply.isPositiveCompletion(dele(paramString));
  }
  
  public void disconnect()
  {
    super.disconnect();
    __initDefaults();
  }
  
  public boolean doCommand(String paramString1, String paramString2)
  {
    return FTPReply.isPositiveCompletion(sendCommand(paramString1, paramString2));
  }
  
  public String[] doCommandAsStrings(String paramString1, String paramString2)
  {
    if (FTPReply.isPositiveCompletion(sendCommand(paramString1, paramString2))) {
      return getReplyStrings();
    }
    return null;
  }
  
  public void enterLocalActiveMode()
  {
    __dataConnectionMode = 0;
    __passiveHost = null;
    __passivePort = -1;
  }
  
  public void enterLocalPassiveMode()
  {
    __dataConnectionMode = 2;
    __passiveHost = null;
    __passivePort = -1;
  }
  
  public boolean enterRemoteActiveMode(InetAddress paramInetAddress, int paramInt)
  {
    if (FTPReply.isPositiveCompletion(port(paramInetAddress, paramInt)))
    {
      __dataConnectionMode = 1;
      __passiveHost = null;
      __passivePort = -1;
      return true;
    }
    return false;
  }
  
  public boolean enterRemotePassiveMode()
  {
    if (pasv() != 227) {
      return false;
    }
    __dataConnectionMode = 3;
    __parsePassiveModeReply((String)_replyLines.get(0));
    return true;
  }
  
  public String featureValue(String paramString)
  {
    paramString = featureValues(paramString);
    if (paramString != null) {
      return paramString[0];
    }
    return null;
  }
  
  public String[] featureValues(String paramString)
  {
    if (!initFeatureMap()) {
      return null;
    }
    paramString = (Set)__featuresMap.get(paramString.toUpperCase(Locale.ENGLISH));
    if (paramString != null) {
      return (String[])paramString.toArray(new String[paramString.size()]);
    }
    return null;
  }
  
  public boolean features()
  {
    return FTPReply.isPositiveCompletion(feat());
  }
  
  public boolean getAutodetectUTF8()
  {
    return __autodetectEncoding;
  }
  
  public int getBufferSize()
  {
    return __bufferSize;
  }
  
  public int getControlKeepAliveReplyTimeout()
  {
    return __controlKeepAliveReplyTimeout;
  }
  
  public long getControlKeepAliveTimeout()
  {
    return __controlKeepAliveTimeout / 1000L;
  }
  
  public CopyStreamListener getCopyStreamListener()
  {
    return __copyStreamListener;
  }
  
  public int getDataConnectionMode()
  {
    return __dataConnectionMode;
  }
  
  protected String getListArguments(String paramString)
  {
    Object localObject = paramString;
    if (getListHiddenFiles())
    {
      if (paramString != null)
      {
        localObject = new StringBuilder(paramString.length() + 3);
        ((StringBuilder)localObject).append("-a ");
        ((StringBuilder)localObject).append(paramString);
        localObject = ((StringBuilder)localObject).toString();
      }
    }
    else {
      return (String)localObject;
    }
    return "-a";
  }
  
  public boolean getListHiddenFiles()
  {
    return __listHiddenFiles;
  }
  
  public String getModificationTime(String paramString)
  {
    if (FTPReply.isPositiveCompletion(mdtm(paramString))) {
      return getReplyString();
    }
    return null;
  }
  
  public String getPassiveHost()
  {
    return __passiveHost;
  }
  
  public int getPassivePort()
  {
    return __passivePort;
  }
  
  public long getRestartOffset()
  {
    return __restartOffset;
  }
  
  public String getStatus()
  {
    if (FTPReply.isPositiveCompletion(stat())) {
      return getReplyString();
    }
    return null;
  }
  
  public String getStatus(String paramString)
  {
    if (FTPReply.isPositiveCompletion(stat(paramString))) {
      return getReplyString();
    }
    return null;
  }
  
  @Deprecated
  public String getSystemName()
  {
    if ((__systemName == null) && (FTPReply.isPositiveCompletion(syst()))) {
      __systemName = ((String)_replyLines.get(_replyLines.size() - 1)).substring(4);
    }
    return __systemName;
  }
  
  public String getSystemType()
  {
    if (__systemName == null)
    {
      if (FTPReply.isPositiveCompletion(syst())) {
        __systemName = ((String)_replyLines.get(_replyLines.size() - 1)).substring(4);
      }
    }
    else {
      return __systemName;
    }
    throw new IOException("Unable to determine system type - response: " + getReplyString());
  }
  
  public boolean hasFeature(String paramString)
  {
    if (!initFeatureMap()) {
      return false;
    }
    return __featuresMap.containsKey(paramString.toUpperCase(Locale.ENGLISH));
  }
  
  public boolean hasFeature(String paramString1, String paramString2)
  {
    if (!initFeatureMap()) {
      return false;
    }
    paramString1 = (Set)__featuresMap.get(paramString1.toUpperCase(Locale.ENGLISH));
    if (paramString1 != null) {
      return paramString1.contains(paramString2);
    }
    return false;
  }
  
  public FTPListParseEngine initiateListParsing()
  {
    return initiateListParsing(null);
  }
  
  public FTPListParseEngine initiateListParsing(String paramString)
  {
    return initiateListParsing(null, paramString);
  }
  
  public FTPListParseEngine initiateListParsing(String paramString1, String paramString2)
  {
    if ((__entryParser == null) || (!__entryParserKey.equals(paramString1)))
    {
      if (paramString1 == null) {
        break label51;
      }
      __entryParser = __parserFactory.createFileEntryParser(paramString1);
    }
    for (__entryParserKey = paramString1;; __entryParserKey = __configuration.getServerSystemKey())
    {
      return initiateListParsing(__entryParser, paramString2);
      label51:
      if (__configuration == null) {
        break;
      }
      __entryParser = __parserFactory.createFileEntryParser(__configuration);
    }
    Object localObject = System.getProperty("org.apache.commons.net.ftp.systemType");
    paramString1 = (String)localObject;
    if (localObject == null)
    {
      paramString1 = getSystemType();
      localObject = getOverrideProperties();
      if (localObject == null) {
        break label148;
      }
      localObject = ((Properties)localObject).getProperty(paramString1);
      if (localObject == null) {
        break label148;
      }
      paramString1 = (String)localObject;
    }
    label148:
    for (;;)
    {
      __entryParser = __parserFactory.createFileEntryParser(paramString1);
      __entryParserKey = paramString1;
      break;
    }
  }
  
  public boolean isRemoteVerificationEnabled()
  {
    return __remoteVerificationEnabled;
  }
  
  public boolean isUseEPSVwithIPv4()
  {
    return __useEPSVwithIPv4;
  }
  
  public FTPFile[] listDirectories()
  {
    return listDirectories(null);
  }
  
  public FTPFile[] listDirectories(String paramString)
  {
    return listFiles(paramString, FTPFileFilters.DIRECTORIES);
  }
  
  public FTPFile[] listFiles()
  {
    return listFiles(null);
  }
  
  public FTPFile[] listFiles(String paramString)
  {
    return initiateListParsing(null, paramString).getFiles();
  }
  
  public FTPFile[] listFiles(String paramString, FTPFileFilter paramFTPFileFilter)
  {
    return initiateListParsing(null, paramString).getFiles(paramFTPFileFilter);
  }
  
  public String listHelp()
  {
    if (FTPReply.isPositiveCompletion(help())) {
      return getReplyString();
    }
    return null;
  }
  
  public String listHelp(String paramString)
  {
    if (FTPReply.isPositiveCompletion(help(paramString))) {
      return getReplyString();
    }
    return null;
  }
  
  public String[] listNames()
  {
    return listNames(null);
  }
  
  public String[] listNames(String paramString)
  {
    paramString = _openDataConnection_(27, getListArguments(paramString));
    if (paramString == null) {
      return null;
    }
    BufferedReader localBufferedReader = new BufferedReader(new InputStreamReader(paramString.getInputStream(), getControlEncoding()));
    ArrayList localArrayList = new ArrayList();
    for (;;)
    {
      String str = localBufferedReader.readLine();
      if (str == null)
      {
        localBufferedReader.close();
        paramString.close();
        if (!completePendingCommand()) {
          break;
        }
        return (String[])localArrayList.toArray(new String[localArrayList.size()]);
      }
      localArrayList.add(str);
    }
  }
  
  public boolean login(String paramString1, String paramString2)
  {
    user(paramString1);
    if (FTPReply.isPositiveCompletion(_replyCode)) {
      return true;
    }
    if (!FTPReply.isPositiveIntermediate(_replyCode)) {
      return false;
    }
    return FTPReply.isPositiveCompletion(pass(paramString2));
  }
  
  public boolean login(String paramString1, String paramString2, String paramString3)
  {
    user(paramString1);
    if (FTPReply.isPositiveCompletion(_replyCode)) {}
    do
    {
      return true;
      if (!FTPReply.isPositiveIntermediate(_replyCode)) {
        return false;
      }
      pass(paramString2);
    } while (FTPReply.isPositiveCompletion(_replyCode));
    if (!FTPReply.isPositiveIntermediate(_replyCode)) {
      return false;
    }
    return FTPReply.isPositiveCompletion(acct(paramString3));
  }
  
  public boolean logout()
  {
    return FTPReply.isPositiveCompletion(quit());
  }
  
  public boolean makeDirectory(String paramString)
  {
    return FTPReply.isPositiveCompletion(mkd(paramString));
  }
  
  public FTPFile[] mlistDir()
  {
    return mlistDir(null);
  }
  
  public FTPFile[] mlistDir(String paramString)
  {
    return initiateMListParsing(paramString).getFiles();
  }
  
  public FTPFile[] mlistDir(String paramString, FTPFileFilter paramFTPFileFilter)
  {
    return initiateMListParsing(paramString).getFiles(paramFTPFileFilter);
  }
  
  public FTPFile mlistFile(String paramString)
  {
    if (FTPReply.isPositiveCompletion(sendCommand(39, paramString))) {
      return MLSxEntryParser.parseEntry(getReplyStrings()[1].substring(1));
    }
    return null;
  }
  
  public String printWorkingDirectory()
  {
    if (pwd() != 257) {
      return null;
    }
    return __parsePathname((String)_replyLines.get(_replyLines.size() - 1));
  }
  
  boolean reinitialize()
  {
    rein();
    if ((FTPReply.isPositiveCompletion(_replyCode)) || ((FTPReply.isPositivePreliminary(_replyCode)) && (FTPReply.isPositiveCompletion(getReply()))))
    {
      __initDefaults();
      return true;
    }
    return false;
  }
  
  public boolean remoteAppend(String paramString)
  {
    if ((__dataConnectionMode == 1) || (__dataConnectionMode == 3)) {
      return FTPReply.isPositivePreliminary(appe(paramString));
    }
    return false;
  }
  
  public boolean remoteRetrieve(String paramString)
  {
    if ((__dataConnectionMode == 1) || (__dataConnectionMode == 3)) {
      return FTPReply.isPositivePreliminary(retr(paramString));
    }
    return false;
  }
  
  public boolean remoteStore(String paramString)
  {
    if ((__dataConnectionMode == 1) || (__dataConnectionMode == 3)) {
      return FTPReply.isPositivePreliminary(stor(paramString));
    }
    return false;
  }
  
  public boolean remoteStoreUnique()
  {
    if ((__dataConnectionMode == 1) || (__dataConnectionMode == 3)) {
      return FTPReply.isPositivePreliminary(stou());
    }
    return false;
  }
  
  public boolean remoteStoreUnique(String paramString)
  {
    if ((__dataConnectionMode == 1) || (__dataConnectionMode == 3)) {
      return FTPReply.isPositivePreliminary(stou(paramString));
    }
    return false;
  }
  
  public boolean removeDirectory(String paramString)
  {
    return FTPReply.isPositiveCompletion(rmd(paramString));
  }
  
  public boolean rename(String paramString1, String paramString2)
  {
    if (!FTPReply.isPositiveIntermediate(rnfr(paramString1))) {
      return false;
    }
    return FTPReply.isPositiveCompletion(rnto(paramString2));
  }
  
  public boolean retrieveFile(String paramString, OutputStream paramOutputStream)
  {
    boolean bool1 = false;
    Socket localSocket = _openDataConnection_(13, paramString);
    if (localSocket == null) {
      return bool1;
    }
    paramString = new BufferedInputStream(localSocket.getInputStream(), getBufferSize());
    if (__fileType == 0) {
      paramString = new FromNetASCIIInputStream(paramString);
    }
    for (;;)
    {
      if (__controlKeepAliveTimeout > 0L) {}
      for (FTPClient.CSL localCSL = new FTPClient.CSL(this, __controlKeepAliveTimeout, __controlKeepAliveReplyTimeout);; localCSL = null) {
        try
        {
          Util.copyStream(paramString, paramOutputStream, getBufferSize(), -1L, __mergeListeners(localCSL), false);
          Util.closeQuietly(localSocket);
          boolean bool2 = completePendingCommand();
          bool1 = bool2;
          if (localCSL == null) {
            break;
          }
          localCSL.cleanUp();
          return bool2;
        }
        finally
        {
          Util.closeQuietly(localSocket);
        }
      }
    }
  }
  
  public InputStream retrieveFileStream(String paramString)
  {
    Socket localSocket = _openDataConnection_(13, paramString);
    if (localSocket == null) {
      return null;
    }
    InputStream localInputStream = localSocket.getInputStream();
    paramString = localInputStream;
    if (__fileType == 0) {
      paramString = new FromNetASCIIInputStream(new BufferedInputStream(localInputStream, getBufferSize()));
    }
    return new SocketInputStream(localSocket, paramString);
  }
  
  public boolean sendNoOp()
  {
    return FTPReply.isPositiveCompletion(noop());
  }
  
  public boolean sendSiteCommand(String paramString)
  {
    return FTPReply.isPositiveCompletion(site(paramString));
  }
  
  public void setActiveExternalIPAddress(String paramString)
  {
    __activeExternalHost = InetAddress.getByName(paramString);
  }
  
  public void setActivePortRange(int paramInt1, int paramInt2)
  {
    __activeMinPort = paramInt1;
    __activeMaxPort = paramInt2;
  }
  
  public void setAutodetectUTF8(boolean paramBoolean)
  {
    __autodetectEncoding = paramBoolean;
  }
  
  public void setBufferSize(int paramInt)
  {
    __bufferSize = paramInt;
  }
  
  public void setControlKeepAliveReplyTimeout(int paramInt)
  {
    __controlKeepAliveReplyTimeout = paramInt;
  }
  
  public void setControlKeepAliveTimeout(long paramLong)
  {
    __controlKeepAliveTimeout = (1000L * paramLong);
  }
  
  public void setCopyStreamListener(CopyStreamListener paramCopyStreamListener)
  {
    __copyStreamListener = paramCopyStreamListener;
  }
  
  public void setDataTimeout(int paramInt)
  {
    __dataTimeout = paramInt;
  }
  
  public boolean setFileStructure(int paramInt)
  {
    if (FTPReply.isPositiveCompletion(stru(paramInt)))
    {
      __fileStructure = paramInt;
      return true;
    }
    return false;
  }
  
  public boolean setFileTransferMode(int paramInt)
  {
    if (FTPReply.isPositiveCompletion(mode(paramInt)))
    {
      __fileTransferMode = paramInt;
      return true;
    }
    return false;
  }
  
  public boolean setFileType(int paramInt)
  {
    if (FTPReply.isPositiveCompletion(type(paramInt)))
    {
      __fileType = paramInt;
      __fileFormat = 4;
      return true;
    }
    return false;
  }
  
  public boolean setFileType(int paramInt1, int paramInt2)
  {
    if (FTPReply.isPositiveCompletion(type(paramInt1, paramInt2)))
    {
      __fileType = paramInt1;
      __fileFormat = paramInt2;
      return true;
    }
    return false;
  }
  
  public void setListHiddenFiles(boolean paramBoolean)
  {
    __listHiddenFiles = paramBoolean;
  }
  
  public boolean setModificationTime(String paramString1, String paramString2)
  {
    return FTPReply.isPositiveCompletion(mfmt(paramString1, paramString2));
  }
  
  public void setParserFactory(FTPFileEntryParserFactory paramFTPFileEntryParserFactory)
  {
    __parserFactory = paramFTPFileEntryParserFactory;
  }
  
  public void setRemoteVerificationEnabled(boolean paramBoolean)
  {
    __remoteVerificationEnabled = paramBoolean;
  }
  
  public void setRestartOffset(long paramLong)
  {
    if (paramLong >= 0L) {
      __restartOffset = paramLong;
    }
  }
  
  public void setUseEPSVwithIPv4(boolean paramBoolean)
  {
    __useEPSVwithIPv4 = paramBoolean;
  }
  
  public boolean storeFile(String paramString, InputStream paramInputStream)
  {
    return __storeFile(14, paramString, paramInputStream);
  }
  
  public OutputStream storeFileStream(String paramString)
  {
    return __storeFileStream(14, paramString);
  }
  
  public boolean storeUniqueFile(InputStream paramInputStream)
  {
    return __storeFile(15, null, paramInputStream);
  }
  
  public boolean storeUniqueFile(String paramString, InputStream paramInputStream)
  {
    return __storeFile(15, paramString, paramInputStream);
  }
  
  public OutputStream storeUniqueFileStream()
  {
    return __storeFileStream(15, null);
  }
  
  public OutputStream storeUniqueFileStream(String paramString)
  {
    return __storeFileStream(15, paramString);
  }
  
  public boolean structureMount(String paramString)
  {
    return FTPReply.isPositiveCompletion(smnt(paramString));
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.net.ftp.FTPClient
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package org.apache.commons.net.ftp;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.InetAddress;
import java.net.Socket;
import javax.net.ssl.KeyManager;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import org.apache.commons.net.util.Base64;
import org.apache.commons.net.util.SSLContextUtils;
import org.apache.commons.net.util.TrustManagerUtils;

public class FTPSClient
  extends FTPClient
{
  private static final String CMD_ADAT = "ADAT";
  private static final String CMD_AUTH = "AUTH";
  private static final String CMD_CCC = "CCC";
  private static final String CMD_CONF = "CONF";
  private static final String CMD_ENC = "ENC";
  private static final String CMD_MIC = "MIC";
  private static final String CMD_PBSZ = "PBSZ";
  private static final String CMD_PROT = "PROT";
  public static final int DEFAULT_FTPS_DATA_PORT = 989;
  public static final int DEFAULT_FTPS_PORT = 990;
  private static final String DEFAULT_PROT = "C";
  private static final String DEFAULT_PROTOCOL = "TLS";
  @Deprecated
  public static String KEYSTORE_ALGORITHM;
  private static final String[] PROT_COMMAND_VALUE = { "C", "E", "S", "P" };
  @Deprecated
  public static String PROVIDER;
  @Deprecated
  public static String STORE_TYPE;
  @Deprecated
  public static String TRUSTSTORE_ALGORITHM;
  private String auth = "TLS";
  private SSLContext context;
  private boolean isClientMode = true;
  private boolean isCreation = true;
  private final boolean isImplicit;
  private boolean isNeedClientAuth = false;
  private boolean isWantClientAuth = false;
  private KeyManager keyManager = null;
  private Socket plainSocket;
  private final String protocol;
  private String[] protocols = null;
  private String[] suites = null;
  private TrustManager trustManager = TrustManagerUtils.getValidateServerCertificateTrustManager();
  
  public FTPSClient()
  {
    this("TLS", false);
  }
  
  public FTPSClient(String paramString)
  {
    this(paramString, false);
  }
  
  public FTPSClient(String paramString, boolean paramBoolean)
  {
    protocol = paramString;
    isImplicit = paramBoolean;
    if (paramBoolean) {
      setDefaultPort(990);
    }
  }
  
  public FTPSClient(SSLContext paramSSLContext)
  {
    this(false, paramSSLContext);
  }
  
  public FTPSClient(boolean paramBoolean)
  {
    this("TLS", paramBoolean);
  }
  
  public FTPSClient(boolean paramBoolean, SSLContext paramSSLContext)
  {
    this("TLS", paramBoolean);
    context = paramSSLContext;
  }
  
  private boolean checkPROTValue(String paramString)
  {
    int i = 0;
    for (;;)
    {
      if (i >= PROT_COMMAND_VALUE.length) {
        return false;
      }
      if (PROT_COMMAND_VALUE[i].equals(paramString)) {
        return true;
      }
      i += 1;
    }
  }
  
  private String extractPrefixedData(String paramString1, String paramString2)
  {
    int i = paramString2.indexOf(paramString1);
    if (i == -1) {
      return null;
    }
    return paramString2.substring(i + paramString1.length()).trim();
  }
  
  private KeyManager getKeyManager()
  {
    return keyManager;
  }
  
  private void initSslContext()
  {
    if (context == null) {
      context = SSLContextUtils.createSSLContext(protocol, getKeyManager(), getTrustManager());
    }
  }
  
  protected void _connectAction_()
  {
    if (isImplicit) {
      sslNegotiation();
    }
    super._connectAction_();
    if (!isImplicit)
    {
      execAUTH();
      sslNegotiation();
    }
  }
  
  protected Socket _openDataConnection_(int paramInt, String paramString)
  {
    paramString = super._openDataConnection_(paramInt, paramString);
    if ((paramString instanceof SSLSocket))
    {
      SSLSocket localSSLSocket = (SSLSocket)paramString;
      localSSLSocket.setUseClientMode(isClientMode);
      localSSLSocket.setEnableSessionCreation(isCreation);
      if (!isClientMode)
      {
        localSSLSocket.setNeedClientAuth(isNeedClientAuth);
        localSSLSocket.setWantClientAuth(isWantClientAuth);
      }
      if (suites != null) {
        localSSLSocket.setEnabledCipherSuites(suites);
      }
      if (protocols != null) {
        localSSLSocket.setEnabledProtocols(protocols);
      }
      localSSLSocket.startHandshake();
    }
    return paramString;
  }
  
  public void disconnect()
  {
    super.disconnect();
    setSocketFactory(null);
    setServerSocketFactory(null);
  }
  
  public int execADAT(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte != null) {
      return sendCommand("ADAT", new String(Base64.encodeBase64(paramArrayOfByte)));
    }
    return sendCommand("ADAT");
  }
  
  public int execAUTH(String paramString)
  {
    return sendCommand("AUTH", paramString);
  }
  
  protected void execAUTH()
  {
    int i = sendCommand("AUTH", auth);
    if ((334 != i) && (234 != i)) {
      throw new SSLException(getReplyString());
    }
  }
  
  public int execCCC()
  {
    return sendCommand("CCC");
  }
  
  public int execCONF(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte != null) {
      return sendCommand("CONF", new String(Base64.encodeBase64(paramArrayOfByte)));
    }
    return sendCommand("CONF", "");
  }
  
  public int execENC(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte != null) {
      return sendCommand("ENC", new String(Base64.encodeBase64(paramArrayOfByte)));
    }
    return sendCommand("ENC", "");
  }
  
  public int execMIC(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte != null) {
      return sendCommand("MIC", new String(Base64.encodeBase64(paramArrayOfByte)));
    }
    return sendCommand("MIC", "");
  }
  
  public void execPBSZ(long paramLong)
  {
    if ((paramLong < 0L) || (4294967295L < paramLong)) {
      throw new IllegalArgumentException();
    }
    if (200 != sendCommand("PBSZ", String.valueOf(paramLong))) {
      throw new SSLException(getReplyString());
    }
  }
  
  public void execPROT(String paramString)
  {
    String str = paramString;
    if (paramString == null) {
      str = "C";
    }
    if (!checkPROTValue(str)) {
      throw new IllegalArgumentException();
    }
    if (200 != sendCommand("PROT", str)) {
      throw new SSLException(getReplyString());
    }
    if ("C".equals(str))
    {
      setSocketFactory(null);
      setServerSocketFactory(null);
      return;
    }
    setSocketFactory(new FTPSSocketFactory(context));
    setServerSocketFactory(new FTPSServerSocketFactory(context));
    initSslContext();
  }
  
  public String getAuthValue()
  {
    return auth;
  }
  
  public boolean getEnableSessionCreation()
  {
    if ((_socket_ instanceof SSLSocket)) {
      return ((SSLSocket)_socket_).getEnableSessionCreation();
    }
    return false;
  }
  
  public String[] getEnabledCipherSuites()
  {
    if ((_socket_ instanceof SSLSocket)) {
      return ((SSLSocket)_socket_).getEnabledCipherSuites();
    }
    return null;
  }
  
  public String[] getEnabledProtocols()
  {
    if ((_socket_ instanceof SSLSocket)) {
      return ((SSLSocket)_socket_).getEnabledProtocols();
    }
    return null;
  }
  
  public boolean getNeedClientAuth()
  {
    if ((_socket_ instanceof SSLSocket)) {
      return ((SSLSocket)_socket_).getNeedClientAuth();
    }
    return false;
  }
  
  public TrustManager getTrustManager()
  {
    return trustManager;
  }
  
  public boolean getUseClientMode()
  {
    if ((_socket_ instanceof SSLSocket)) {
      return ((SSLSocket)_socket_).getUseClientMode();
    }
    return false;
  }
  
  public boolean getWantClientAuth()
  {
    if ((_socket_ instanceof SSLSocket)) {
      return ((SSLSocket)_socket_).getWantClientAuth();
    }
    return false;
  }
  
  public byte[] parseADATReply(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    return Base64.decodeBase64(extractPrefixedData("ADAT=", paramString));
  }
  
  public long parsePBSZ(long paramLong)
  {
    execPBSZ(paramLong);
    String str = extractPrefixedData("PBSZ=", getReplyString());
    long l1 = paramLong;
    if (str != null)
    {
      long l2 = Long.parseLong(str);
      l1 = paramLong;
      if (l2 < paramLong) {
        l1 = l2;
      }
    }
    return l1;
  }
  
  public int sendCommand(String paramString1, String paramString2)
  {
    int i = super.sendCommand(paramString1, paramString2);
    if ("CCC".equals(paramString1))
    {
      if (200 == i)
      {
        _socket_.close();
        _socket_ = plainSocket;
        _controlInput_ = new BufferedReader(new InputStreamReader(_socket_.getInputStream(), getControlEncoding()));
        _controlOutput_ = new BufferedWriter(new OutputStreamWriter(_socket_.getOutputStream(), getControlEncoding()));
      }
    }
    else {
      return i;
    }
    throw new SSLException(getReplyString());
  }
  
  public void setAuthValue(String paramString)
  {
    auth = paramString;
  }
  
  public void setEnabledCipherSuites(String[] paramArrayOfString)
  {
    suites = new String[paramArrayOfString.length];
    System.arraycopy(paramArrayOfString, 0, suites, 0, paramArrayOfString.length);
  }
  
  public void setEnabledProtocols(String[] paramArrayOfString)
  {
    protocols = new String[paramArrayOfString.length];
    System.arraycopy(paramArrayOfString, 0, protocols, 0, paramArrayOfString.length);
  }
  
  public void setEnabledSessionCreation(boolean paramBoolean)
  {
    isCreation = paramBoolean;
  }
  
  public void setKeyManager(KeyManager paramKeyManager)
  {
    keyManager = paramKeyManager;
  }
  
  public void setNeedClientAuth(boolean paramBoolean)
  {
    isNeedClientAuth = paramBoolean;
  }
  
  public void setTrustManager(TrustManager paramTrustManager)
  {
    trustManager = paramTrustManager;
  }
  
  public void setUseClientMode(boolean paramBoolean)
  {
    isClientMode = paramBoolean;
  }
  
  public void setWantClientAuth(boolean paramBoolean)
  {
    isWantClientAuth = paramBoolean;
  }
  
  protected void sslNegotiation()
  {
    plainSocket = _socket_;
    initSslContext();
    Object localObject = context.getSocketFactory();
    String str = _socket_.getInetAddress().getHostAddress();
    int i = _socket_.getPort();
    localObject = (SSLSocket)((SSLSocketFactory)localObject).createSocket(_socket_, str, i, false);
    ((SSLSocket)localObject).setEnableSessionCreation(isCreation);
    ((SSLSocket)localObject).setUseClientMode(isClientMode);
    if (!isClientMode)
    {
      ((SSLSocket)localObject).setNeedClientAuth(isNeedClientAuth);
      ((SSLSocket)localObject).setWantClientAuth(isWantClientAuth);
    }
    if (protocols != null) {
      ((SSLSocket)localObject).setEnabledProtocols(protocols);
    }
    if (suites != null) {
      ((SSLSocket)localObject).setEnabledCipherSuites(suites);
    }
    ((SSLSocket)localObject).startHandshake();
    _socket_ = ((Socket)localObject);
    _controlInput_ = new BufferedReader(new InputStreamReader(((SSLSocket)localObject).getInputStream(), getControlEncoding()));
    _controlOutput_ = new BufferedWriter(new OutputStreamWriter(((SSLSocket)localObject).getOutputStream(), getControlEncoding()));
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.net.ftp.FTPSClient
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
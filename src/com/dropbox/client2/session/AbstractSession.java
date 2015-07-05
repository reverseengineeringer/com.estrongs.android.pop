package com.dropbox.client2.session;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Locale;
import org.apache.http.HttpRequest;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.params.HttpConnectionParams;

public abstract class AbstractSession
  implements Session
{
  private static final String API_SERVER = "api.dropbox.com";
  private static final String CONTENT_SERVER = "api-content.dropbox.com";
  private static final int DEFAULT_TIMEOUT_MILLIS = 30000;
  private static final int KEEP_ALIVE_DURATION_SECS = 20;
  private static final int KEEP_ALIVE_MONITOR_INTERVAL_SECS = 5;
  private static final String WEB_SERVER = "www.dropbox.com";
  private final Session.AccessType accessType;
  private final AppKeyPair appKeyPair;
  private HttpClient client = null;
  private AccessTokenPair oauth1AccessToken = null;
  private String oauth2AccessToken = null;
  
  public AbstractSession(AppKeyPair paramAppKeyPair)
  {
    this(paramAppKeyPair, null);
  }
  
  public AbstractSession(AppKeyPair paramAppKeyPair, AccessTokenPair paramAccessTokenPair)
  {
    this(paramAppKeyPair, Session.AccessType.AUTO, paramAccessTokenPair);
  }
  
  public AbstractSession(AppKeyPair paramAppKeyPair, Session.AccessType paramAccessType)
  {
    this(paramAppKeyPair, paramAccessType, null);
  }
  
  public AbstractSession(AppKeyPair paramAppKeyPair, Session.AccessType paramAccessType, AccessTokenPair paramAccessTokenPair)
  {
    if (paramAppKeyPair == null) {
      throw new IllegalArgumentException("'appKeyPair' must be non-null");
    }
    if (paramAccessType == null) {
      throw new IllegalArgumentException("'type' must be non-null");
    }
    appKeyPair = paramAppKeyPair;
    accessType = paramAccessType;
    oauth1AccessToken = paramAccessTokenPair;
  }
  
  public AbstractSession(AppKeyPair paramAppKeyPair, String paramString)
  {
    this(paramAppKeyPair);
    oauth2AccessToken = paramString;
  }
  
  private static String buildOAuth1Header(AppKeyPair paramAppKeyPair, AccessTokenPair paramAccessTokenPair)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("OAuth oauth_version=\"1.0\"");
    localStringBuilder.append(", oauth_signature_method=\"PLAINTEXT\"");
    localStringBuilder.append(", oauth_consumer_key=\"").append(encode(key)).append("\"");
    if (paramAccessTokenPair != null) {
      localStringBuilder.append(", oauth_token=\"").append(encode(key)).append("\"");
    }
    for (paramAppKeyPair = encode(secret) + "&" + encode(secret);; paramAppKeyPair = encode(secret) + "&")
    {
      localStringBuilder.append(", oauth_signature=\"").append(paramAppKeyPair).append("\"");
      return localStringBuilder.toString();
    }
  }
  
  private static String encode(String paramString)
  {
    try
    {
      paramString = URLEncoder.encode(paramString, "UTF-8");
      return paramString;
    }
    catch (UnsupportedEncodingException paramString)
    {
      AssertionError localAssertionError = new AssertionError("UTF-8 isn't available");
      localAssertionError.initCause(paramString);
      throw localAssertionError;
    }
  }
  
  public String getAPIServer()
  {
    return "api.dropbox.com";
  }
  
  public AccessTokenPair getAccessTokenPair()
  {
    return oauth1AccessToken;
  }
  
  public Session.AccessType getAccessType()
  {
    return accessType;
  }
  
  public AppKeyPair getAppKeyPair()
  {
    return appKeyPair;
  }
  
  public String getContentServer()
  {
    return "api-content.dropbox.com";
  }
  
  /* Error */
  public HttpClient getHttpClient()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 56	com/dropbox/client2/session/AbstractSession:client	Lorg/apache/http/client/HttpClient;
    //   6: ifnonnull +183 -> 189
    //   9: new 166	org/apache/http/params/BasicHttpParams
    //   12: dup
    //   13: invokespecial 167	org/apache/http/params/BasicHttpParams:<init>	()V
    //   16: astore_1
    //   17: aload_1
    //   18: new 169	com/dropbox/client2/session/AbstractSession$1
    //   21: dup
    //   22: aload_0
    //   23: invokespecial 172	com/dropbox/client2/session/AbstractSession$1:<init>	(Lcom/dropbox/client2/session/AbstractSession;)V
    //   26: invokestatic 178	org/apache/http/conn/params/ConnManagerParams:setMaxConnectionsPerRoute	(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V
    //   29: aload_1
    //   30: bipush 20
    //   32: invokestatic 182	org/apache/http/conn/params/ConnManagerParams:setMaxTotalConnections	(Lorg/apache/http/params/HttpParams;I)V
    //   35: new 184	com/dropbox/client2/SecureSSLSocketFactory
    //   38: dup
    //   39: invokespecial 185	com/dropbox/client2/SecureSSLSocketFactory:<init>	()V
    //   42: astore_2
    //   43: new 187	org/apache/http/conn/scheme/SchemeRegistry
    //   46: dup
    //   47: invokespecial 188	org/apache/http/conn/scheme/SchemeRegistry:<init>	()V
    //   50: astore_3
    //   51: aload_3
    //   52: new 190	org/apache/http/conn/scheme/Scheme
    //   55: dup
    //   56: ldc -64
    //   58: invokestatic 198	org/apache/http/conn/scheme/PlainSocketFactory:getSocketFactory	()Lorg/apache/http/conn/scheme/PlainSocketFactory;
    //   61: bipush 80
    //   63: invokespecial 201	org/apache/http/conn/scheme/Scheme:<init>	(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V
    //   66: invokevirtual 205	org/apache/http/conn/scheme/SchemeRegistry:register	(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
    //   69: pop
    //   70: aload_3
    //   71: new 190	org/apache/http/conn/scheme/Scheme
    //   74: dup
    //   75: ldc -49
    //   77: aload_2
    //   78: sipush 443
    //   81: invokespecial 201	org/apache/http/conn/scheme/Scheme:<init>	(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V
    //   84: invokevirtual 205	org/apache/http/conn/scheme/SchemeRegistry:register	(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
    //   87: pop
    //   88: new 209	com/dropbox/client2/session/AbstractSession$DBClientConnManager
    //   91: dup
    //   92: aload_1
    //   93: aload_3
    //   94: invokespecial 212	com/dropbox/client2/session/AbstractSession$DBClientConnManager:<init>	(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V
    //   97: astore_1
    //   98: new 166	org/apache/http/params/BasicHttpParams
    //   101: dup
    //   102: invokespecial 167	org/apache/http/params/BasicHttpParams:<init>	()V
    //   105: astore_2
    //   106: aload_2
    //   107: sipush 30000
    //   110: invokestatic 217	org/apache/http/params/HttpConnectionParams:setConnectionTimeout	(Lorg/apache/http/params/HttpParams;I)V
    //   113: aload_2
    //   114: sipush 30000
    //   117: invokestatic 220	org/apache/http/params/HttpConnectionParams:setSoTimeout	(Lorg/apache/http/params/HttpParams;I)V
    //   120: aload_2
    //   121: sipush 8192
    //   124: invokestatic 223	org/apache/http/params/HttpConnectionParams:setSocketBufferSize	(Lorg/apache/http/params/HttpParams;I)V
    //   127: aload_2
    //   128: new 76	java/lang/StringBuilder
    //   131: dup
    //   132: ldc -31
    //   134: invokespecial 113	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   137: getstatic 230	com/dropbox/client2/DropboxAPI:SDK_VERSION	Ljava/lang/String;
    //   140: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   143: invokevirtual 120	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   146: invokestatic 236	org/apache/http/params/HttpProtocolParams:setUserAgent	(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V
    //   149: new 238	com/dropbox/client2/session/AbstractSession$2
    //   152: dup
    //   153: aload_0
    //   154: aload_1
    //   155: aload_2
    //   156: invokespecial 241	com/dropbox/client2/session/AbstractSession$2:<init>	(Lcom/dropbox/client2/session/AbstractSession;Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    //   159: astore_1
    //   160: aload_1
    //   161: new 243	com/dropbox/client2/session/AbstractSession$3
    //   164: dup
    //   165: aload_0
    //   166: invokespecial 244	com/dropbox/client2/session/AbstractSession$3:<init>	(Lcom/dropbox/client2/session/AbstractSession;)V
    //   169: invokevirtual 250	org/apache/http/impl/client/DefaultHttpClient:addRequestInterceptor	(Lorg/apache/http/HttpRequestInterceptor;)V
    //   172: aload_1
    //   173: new 252	com/dropbox/client2/session/AbstractSession$4
    //   176: dup
    //   177: aload_0
    //   178: invokespecial 253	com/dropbox/client2/session/AbstractSession$4:<init>	(Lcom/dropbox/client2/session/AbstractSession;)V
    //   181: invokevirtual 257	org/apache/http/impl/client/DefaultHttpClient:addResponseInterceptor	(Lorg/apache/http/HttpResponseInterceptor;)V
    //   184: aload_0
    //   185: aload_1
    //   186: putfield 56	com/dropbox/client2/session/AbstractSession:client	Lorg/apache/http/client/HttpClient;
    //   189: aload_0
    //   190: getfield 56	com/dropbox/client2/session/AbstractSession:client	Lorg/apache/http/client/HttpClient;
    //   193: astore_1
    //   194: aload_0
    //   195: monitorexit
    //   196: aload_1
    //   197: areturn
    //   198: astore_1
    //   199: new 259	java/lang/RuntimeException
    //   202: dup
    //   203: aload_1
    //   204: invokespecial 262	java/lang/RuntimeException:<init>	(Ljava/lang/Throwable;)V
    //   207: athrow
    //   208: astore_1
    //   209: aload_0
    //   210: monitorexit
    //   211: aload_1
    //   212: athrow
    //   213: astore_1
    //   214: new 259	java/lang/RuntimeException
    //   217: dup
    //   218: aload_1
    //   219: invokespecial 262	java/lang/RuntimeException:<init>	(Ljava/lang/Throwable;)V
    //   222: athrow
    //   223: astore_1
    //   224: new 259	java/lang/RuntimeException
    //   227: dup
    //   228: aload_1
    //   229: invokespecial 262	java/lang/RuntimeException:<init>	(Ljava/lang/Throwable;)V
    //   232: athrow
    //   233: astore_1
    //   234: new 259	java/lang/RuntimeException
    //   237: dup
    //   238: aload_1
    //   239: invokespecial 262	java/lang/RuntimeException:<init>	(Ljava/lang/Throwable;)V
    //   242: athrow
    //   243: astore_1
    //   244: new 259	java/lang/RuntimeException
    //   247: dup
    //   248: aload_1
    //   249: invokespecial 262	java/lang/RuntimeException:<init>	(Ljava/lang/Throwable;)V
    //   252: athrow
    //   253: astore_1
    //   254: new 259	java/lang/RuntimeException
    //   257: dup
    //   258: aload_1
    //   259: invokespecial 262	java/lang/RuntimeException:<init>	(Ljava/lang/Throwable;)V
    //   262: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	263	0	this	AbstractSession
    //   16	181	1	localObject1	Object
    //   198	6	1	localKeyManagementException	java.security.KeyManagementException
    //   208	4	1	localObject2	Object
    //   213	6	1	localUnrecoverableKeyException	java.security.UnrecoverableKeyException
    //   223	6	1	localNoSuchAlgorithmException	java.security.NoSuchAlgorithmException
    //   233	6	1	localKeyStoreException	java.security.KeyStoreException
    //   243	6	1	localCertificateException	java.security.cert.CertificateException
    //   253	6	1	localIOException	java.io.IOException
    //   42	114	2	localObject3	Object
    //   50	44	3	localSchemeRegistry	org.apache.http.conn.scheme.SchemeRegistry
    // Exception table:
    //   from	to	target	type
    //   35	43	198	java/security/KeyManagementException
    //   2	35	208	finally
    //   35	43	208	finally
    //   43	189	208	finally
    //   189	194	208	finally
    //   199	208	208	finally
    //   214	223	208	finally
    //   224	233	208	finally
    //   234	243	208	finally
    //   244	253	208	finally
    //   254	263	208	finally
    //   35	43	213	java/security/UnrecoverableKeyException
    //   35	43	223	java/security/NoSuchAlgorithmException
    //   35	43	233	java/security/KeyStoreException
    //   35	43	243	java/security/cert/CertificateException
    //   35	43	253	java/io/IOException
  }
  
  public Locale getLocale()
  {
    return Locale.ENGLISH;
  }
  
  public String getOAuth2AccessToken()
  {
    return oauth2AccessToken;
  }
  
  public Session.ProxyInfo getProxyInfo()
  {
    return null;
  }
  
  public String getWebServer()
  {
    return "www.dropbox.com";
  }
  
  public boolean isLinked()
  {
    return (oauth1AccessToken != null) || (oauth2AccessToken != null);
  }
  
  public void setAccessTokenPair(AccessTokenPair paramAccessTokenPair)
  {
    if (paramAccessTokenPair == null) {
      throw new IllegalArgumentException("'oauth1AccessToken' must be non-null");
    }
    oauth1AccessToken = paramAccessTokenPair;
    oauth2AccessToken = null;
  }
  
  public void setOAuth2AccessToken(String paramString)
  {
    if (paramString == null) {
      throw new IllegalArgumentException("'oauth2AccessToken' must be non-null");
    }
    oauth2AccessToken = paramString;
    oauth1AccessToken = null;
  }
  
  public void setRequestTimeout(HttpUriRequest paramHttpUriRequest)
  {
    paramHttpUriRequest = paramHttpUriRequest.getParams();
    HttpConnectionParams.setSoTimeout(paramHttpUriRequest, 30000);
    HttpConnectionParams.setConnectionTimeout(paramHttpUriRequest, 30000);
  }
  
  public void sign(HttpRequest paramHttpRequest)
  {
    if (oauth2AccessToken != null) {}
    for (String str = "Bearer " + oauth2AccessToken;; str = buildOAuth1Header(appKeyPair, oauth1AccessToken))
    {
      paramHttpRequest.addHeader("Authorization", str);
      return;
    }
  }
  
  public void unlink()
  {
    oauth1AccessToken = null;
    oauth2AccessToken = null;
  }
}

/* Location:
 * Qualified Name:     com.dropbox.client2.session.AbstractSession
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
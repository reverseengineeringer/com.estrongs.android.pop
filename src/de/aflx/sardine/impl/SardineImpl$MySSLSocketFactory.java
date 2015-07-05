package de.aflx.sardine.impl;

import java.net.Socket;
import java.security.KeyStore;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;

public class SardineImpl$MySSLSocketFactory
  extends org.apache.http.conn.ssl.SSLSocketFactory
{
  SSLContext sslContext = SSLContext.getInstance("TLS");
  
  public SardineImpl$MySSLSocketFactory(SardineImpl paramSardineImpl, KeyStore paramKeyStore)
  {
    super(paramKeyStore);
    paramSardineImpl = new SardineImpl.MySSLSocketFactory.1(this);
    sslContext.init(null, new TrustManager[] { paramSardineImpl }, null);
  }
  
  public Socket createSocket()
  {
    return sslContext.getSocketFactory().createSocket();
  }
  
  public Socket createSocket(Socket paramSocket, String paramString, int paramInt, boolean paramBoolean)
  {
    return sslContext.getSocketFactory().createSocket(paramSocket, paramString, paramInt, paramBoolean);
  }
}

/* Location:
 * Qualified Name:     de.aflx.sardine.impl.SardineImpl.MySSLSocketFactory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
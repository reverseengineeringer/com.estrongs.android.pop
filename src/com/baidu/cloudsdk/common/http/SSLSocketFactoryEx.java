package com.baidu.cloudsdk.common.http;

import java.net.Socket;
import java.security.KeyStore;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;

class SSLSocketFactoryEx
  extends org.apache.http.conn.ssl.SSLSocketFactory
{
  private SSLContext mSslContext;
  
  public SSLSocketFactoryEx(KeyStore paramKeyStore)
  {
    super(paramKeyStore);
    paramKeyStore = new SSLSocketFactoryEx.1(this);
    mSslContext = SSLContext.getInstance("TLS");
    mSslContext.init(null, new TrustManager[] { paramKeyStore }, null);
  }
  
  public Socket createSocket()
  {
    return mSslContext.getSocketFactory().createSocket();
  }
  
  public Socket createSocket(Socket paramSocket, String paramString, int paramInt, boolean paramBoolean)
  {
    return mSslContext.getSocketFactory().createSocket(paramSocket, paramString, paramInt, paramBoolean);
  }
}

/* Location:
 * Qualified Name:     com.baidu.cloudsdk.common.http.SSLSocketFactoryEx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
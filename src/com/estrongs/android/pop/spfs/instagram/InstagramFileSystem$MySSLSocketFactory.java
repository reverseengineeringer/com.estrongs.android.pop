package com.estrongs.android.pop.spfs.instagram;

import java.net.Socket;
import java.security.KeyStore;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;

public class InstagramFileSystem$MySSLSocketFactory
  extends org.apache.http.conn.ssl.SSLSocketFactory
{
  SSLContext sslContext = SSLContext.getInstance("TLS");
  
  public InstagramFileSystem$MySSLSocketFactory(InstagramFileSystem paramInstagramFileSystem, KeyStore paramKeyStore)
  {
    super(paramKeyStore);
    paramInstagramFileSystem = new InstagramFileSystem.MySSLSocketFactory.1(this, paramInstagramFileSystem);
    sslContext.init(null, new TrustManager[] { paramInstagramFileSystem }, null);
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
 * Qualified Name:     com.estrongs.android.pop.spfs.instagram.InstagramFileSystem.MySSLSocketFactory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
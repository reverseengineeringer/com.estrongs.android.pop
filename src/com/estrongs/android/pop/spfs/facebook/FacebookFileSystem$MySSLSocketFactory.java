package com.estrongs.android.pop.spfs.facebook;

import java.net.Socket;
import java.security.KeyStore;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;

public class FacebookFileSystem$MySSLSocketFactory
  extends org.apache.http.conn.ssl.SSLSocketFactory
{
  SSLContext sslContext = SSLContext.getInstance("TLS");
  
  public FacebookFileSystem$MySSLSocketFactory(FacebookFileSystem paramFacebookFileSystem, KeyStore paramKeyStore)
  {
    super(paramKeyStore);
    paramFacebookFileSystem = new FacebookFileSystem.MySSLSocketFactory.1(this, paramFacebookFileSystem);
    sslContext.init(null, new TrustManager[] { paramFacebookFileSystem }, null);
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
 * Qualified Name:     com.estrongs.android.pop.spfs.facebook.FacebookFileSystem.MySSLSocketFactory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
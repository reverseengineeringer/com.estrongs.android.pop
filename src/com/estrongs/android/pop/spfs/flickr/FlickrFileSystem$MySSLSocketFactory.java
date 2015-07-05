package com.estrongs.android.pop.spfs.flickr;

import java.net.Socket;
import java.security.KeyStore;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;

public class FlickrFileSystem$MySSLSocketFactory
  extends org.apache.http.conn.ssl.SSLSocketFactory
{
  SSLContext sslContext = SSLContext.getInstance("TLS");
  
  public FlickrFileSystem$MySSLSocketFactory(FlickrFileSystem paramFlickrFileSystem, KeyStore paramKeyStore)
  {
    super(paramKeyStore);
    paramFlickrFileSystem = new FlickrFileSystem.MySSLSocketFactory.1(this, paramFlickrFileSystem);
    sslContext.init(null, new TrustManager[] { paramFlickrFileSystem }, null);
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
 * Qualified Name:     com.estrongs.android.pop.spfs.flickr.FlickrFileSystem.MySSLSocketFactory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
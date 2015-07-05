package com.estrongs.android.c;

import java.net.Socket;
import java.security.KeyStore;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;

public class f
  extends org.apache.http.conn.ssl.SSLSocketFactory
{
  SSLContext a = SSLContext.getInstance("TLS");
  
  public f(c paramc, KeyStore paramKeyStore)
  {
    super(paramKeyStore);
    paramc = new g(this, paramc);
    a.init(null, new TrustManager[] { paramc }, null);
  }
  
  public Socket createSocket()
  {
    return a.getSocketFactory().createSocket();
  }
  
  public Socket createSocket(Socket paramSocket, String paramString, int paramInt, boolean paramBoolean)
  {
    return a.getSocketFactory().createSocket(paramSocket, paramString, paramInt, paramBoolean);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.c.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
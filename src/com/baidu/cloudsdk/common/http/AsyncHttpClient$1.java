package com.baidu.cloudsdk.common.http;

import java.security.KeyStore;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.ClientConnectionManagerFactory;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.scheme.SocketFactory;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.HttpParams;

class AsyncHttpClient$1
  implements ClientConnectionManagerFactory
{
  AsyncHttpClient$1(AsyncHttpClient paramAsyncHttpClient) {}
  
  public ClientConnectionManager newInstance(HttpParams paramHttpParams, SchemeRegistry paramSchemeRegistry)
  {
    try
    {
      Object localObject = KeyStore.getInstance(KeyStore.getDefaultType());
      ((KeyStore)localObject).load(null, null);
      localObject = new SSLSocketFactoryEx((KeyStore)localObject);
      ((SSLSocketFactory)localObject).setHostnameVerifier(SSLSocketFactory.ALLOW_ALL_HOSTNAME_VERIFIER);
      paramSchemeRegistry.register(new Scheme("http", PlainSocketFactory.getSocketFactory(), 80));
      paramSchemeRegistry.register(new Scheme("https", (SocketFactory)localObject, 443));
      return new ThreadSafeClientConnManager(paramHttpParams, paramSchemeRegistry);
    }
    catch (Exception localException)
    {
      for (;;)
      {
        SSLSocketFactory localSSLSocketFactory = SSLSocketFactory.getSocketFactory();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.baidu.cloudsdk.common.http.AsyncHttpClient.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
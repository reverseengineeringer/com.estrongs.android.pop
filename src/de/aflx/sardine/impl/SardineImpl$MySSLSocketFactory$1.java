package de.aflx.sardine.impl;

import java.security.cert.X509Certificate;
import javax.net.ssl.X509TrustManager;

class SardineImpl$MySSLSocketFactory$1
  implements X509TrustManager
{
  SardineImpl$MySSLSocketFactory$1(SardineImpl.MySSLSocketFactory paramMySSLSocketFactory) {}
  
  public void checkClientTrusted(X509Certificate[] paramArrayOfX509Certificate, String paramString) {}
  
  public void checkServerTrusted(X509Certificate[] paramArrayOfX509Certificate, String paramString) {}
  
  public X509Certificate[] getAcceptedIssuers()
  {
    return null;
  }
}

/* Location:
 * Qualified Name:     de.aflx.sardine.impl.SardineImpl.MySSLSocketFactory.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package org.apache.commons.net.util;

import java.security.KeyStore;
import java.security.cert.X509Certificate;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;

public final class TrustManagerUtils
{
  private static final X509TrustManager ACCEPT_ALL = new TrustManagerUtils.TrustManager(false);
  private static final X509TrustManager CHECK_SERVER_VALIDITY = new TrustManagerUtils.TrustManager(true);
  private static final X509Certificate[] EMPTY_X509CERTIFICATE_ARRAY = new X509Certificate[0];
  
  public static X509TrustManager getAcceptAllTrustManager()
  {
    return ACCEPT_ALL;
  }
  
  public static X509TrustManager getDefaultTrustManager(KeyStore paramKeyStore)
  {
    TrustManagerFactory localTrustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
    localTrustManagerFactory.init(paramKeyStore);
    return (X509TrustManager)localTrustManagerFactory.getTrustManagers()[0];
  }
  
  public static X509TrustManager getValidateServerCertificateTrustManager()
  {
    return CHECK_SERVER_VALIDITY;
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.net.util.TrustManagerUtils
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
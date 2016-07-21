package com.estrongs.android.util;

import android.util.Log;
import java.security.KeyStore;
import java.security.NoSuchAlgorithmException;
import java.security.cert.X509Certificate;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;

public class o
  implements X509TrustManager
{
  private X509TrustManager a = null;
  
  public o(KeyStore paramKeyStore)
  {
    TrustManagerFactory localTrustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
    localTrustManagerFactory.init(paramKeyStore);
    paramKeyStore = localTrustManagerFactory.getTrustManagers();
    if (paramKeyStore.length == 0) {
      throw new NoSuchAlgorithmException("no trust manager found");
    }
    a = ((X509TrustManager)paramKeyStore[0]);
  }
  
  public void checkClientTrusted(X509Certificate[] paramArrayOfX509Certificate, String paramString)
  {
    a.checkClientTrusted(paramArrayOfX509Certificate, paramString);
  }
  
  public void checkServerTrusted(X509Certificate[] paramArrayOfX509Certificate, String paramString)
  {
    if ((paramArrayOfX509Certificate != null) && (paramArrayOfX509Certificate.length > 0))
    {
      Log.d("TANDZTC", "certifacates length: " + paramArrayOfX509Certificate.length);
      paramArrayOfX509Certificate[0].checkValidity();
      return;
    }
    a.checkServerTrusted(paramArrayOfX509Certificate, paramString);
  }
  
  public X509Certificate[] getAcceptedIssuers()
  {
    return a.getAcceptedIssuers();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.util.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
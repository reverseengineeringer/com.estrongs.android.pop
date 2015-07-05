package org.apache.commons.net.ftp;

import java.security.cert.X509Certificate;
import javax.net.ssl.X509TrustManager;

@Deprecated
public class FTPSTrustManager
  implements X509TrustManager
{
  private static final X509Certificate[] EMPTY_X509CERTIFICATE_ARRAY = new X509Certificate[0];
  
  public void checkClientTrusted(X509Certificate[] paramArrayOfX509Certificate, String paramString) {}
  
  public void checkServerTrusted(X509Certificate[] paramArrayOfX509Certificate, String paramString)
  {
    int i = 0;
    for (;;)
    {
      if (i >= paramArrayOfX509Certificate.length) {
        return;
      }
      paramArrayOfX509Certificate[i].checkValidity();
      i += 1;
    }
  }
  
  public X509Certificate[] getAcceptedIssuers()
  {
    return EMPTY_X509CERTIFICATE_ARRAY;
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.net.ftp.FTPSTrustManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package org.apache.commons.net.util;

import java.security.cert.X509Certificate;
import javax.net.ssl.X509TrustManager;

class TrustManagerUtils$TrustManager
  implements X509TrustManager
{
  private final boolean checkServerValidity;
  
  TrustManagerUtils$TrustManager(boolean paramBoolean)
  {
    checkServerValidity = paramBoolean;
  }
  
  public void checkClientTrusted(X509Certificate[] paramArrayOfX509Certificate, String paramString) {}
  
  public void checkServerTrusted(X509Certificate[] paramArrayOfX509Certificate, String paramString)
  {
    int i;
    if (checkServerValidity) {
      i = 0;
    }
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
    return TrustManagerUtils.access$0();
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.net.util.TrustManagerUtils.TrustManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
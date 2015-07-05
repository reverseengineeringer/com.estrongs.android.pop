package org.apache.commons.net.util;

import java.io.IOException;
import java.security.GeneralSecurityException;
import javax.net.ssl.KeyManager;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;

public class SSLContextUtils
{
  public static SSLContext createSSLContext(String paramString, KeyManager paramKeyManager, TrustManager paramTrustManager)
  {
    TrustManager[] arrayOfTrustManager = null;
    if (paramKeyManager == null)
    {
      paramKeyManager = null;
      if (paramTrustManager != null) {
        break label38;
      }
    }
    for (paramTrustManager = arrayOfTrustManager;; paramTrustManager = arrayOfTrustManager)
    {
      return createSSLContext(paramString, paramKeyManager, paramTrustManager);
      KeyManager[] arrayOfKeyManager = new KeyManager[1];
      arrayOfKeyManager[0] = paramKeyManager;
      paramKeyManager = arrayOfKeyManager;
      break;
      label38:
      arrayOfTrustManager = new TrustManager[1];
      arrayOfTrustManager[0] = paramTrustManager;
    }
  }
  
  public static SSLContext createSSLContext(String paramString, KeyManager[] paramArrayOfKeyManager, TrustManager[] paramArrayOfTrustManager)
  {
    try
    {
      paramString = SSLContext.getInstance(paramString);
      paramString.init(paramArrayOfKeyManager, paramArrayOfTrustManager, null);
      return paramString;
    }
    catch (GeneralSecurityException paramString)
    {
      paramArrayOfKeyManager = new IOException("Could not initialize SSL context");
      paramArrayOfKeyManager.initCause(paramString);
      throw paramArrayOfKeyManager;
    }
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.net.util.SSLContextUtils
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
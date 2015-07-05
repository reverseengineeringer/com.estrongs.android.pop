package org.apache.commons.net.util;

import java.security.KeyStore;
import java.security.PrivateKey;
import java.security.cert.X509Certificate;

class KeyManagerUtils$ClientKeyStore
{
  private final X509Certificate[] certChain;
  private final PrivateKey key;
  private final String keyAlias;
  
  KeyManagerUtils$ClientKeyStore(KeyStore paramKeyStore, String paramString1, String paramString2)
  {
    keyAlias = paramString1;
    key = ((PrivateKey)paramKeyStore.getKey(keyAlias, paramString2.toCharArray()));
    paramKeyStore = paramKeyStore.getCertificateChain(keyAlias);
    paramString1 = new X509Certificate[paramKeyStore.length];
    int i = 0;
    for (;;)
    {
      if (i >= paramKeyStore.length)
      {
        certChain = paramString1;
        return;
      }
      paramString1[i] = ((X509Certificate)paramKeyStore[i]);
      i += 1;
    }
  }
  
  final String getAlias()
  {
    return keyAlias;
  }
  
  final X509Certificate[] getCertificateChain()
  {
    return certChain;
  }
  
  final PrivateKey getPrivateKey()
  {
    return key;
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.net.util.KeyManagerUtils.ClientKeyStore
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
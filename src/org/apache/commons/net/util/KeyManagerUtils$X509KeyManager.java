package org.apache.commons.net.util;

import java.net.Socket;
import java.security.Principal;
import java.security.PrivateKey;
import java.security.cert.X509Certificate;
import javax.net.ssl.X509ExtendedKeyManager;

class KeyManagerUtils$X509KeyManager
  extends X509ExtendedKeyManager
{
  private final KeyManagerUtils.ClientKeyStore keyStore;
  
  KeyManagerUtils$X509KeyManager(KeyManagerUtils.ClientKeyStore paramClientKeyStore)
  {
    keyStore = paramClientKeyStore;
  }
  
  public String chooseClientAlias(String[] paramArrayOfString, Principal[] paramArrayOfPrincipal, Socket paramSocket)
  {
    return keyStore.getAlias();
  }
  
  public String chooseServerAlias(String paramString, Principal[] paramArrayOfPrincipal, Socket paramSocket)
  {
    return null;
  }
  
  public X509Certificate[] getCertificateChain(String paramString)
  {
    return keyStore.getCertificateChain();
  }
  
  public String[] getClientAliases(String paramString, Principal[] paramArrayOfPrincipal)
  {
    return new String[] { keyStore.getAlias() };
  }
  
  public PrivateKey getPrivateKey(String paramString)
  {
    return keyStore.getPrivateKey();
  }
  
  public String[] getServerAliases(String paramString, Principal[] paramArrayOfPrincipal)
  {
    return null;
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.net.util.KeyManagerUtils.X509KeyManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
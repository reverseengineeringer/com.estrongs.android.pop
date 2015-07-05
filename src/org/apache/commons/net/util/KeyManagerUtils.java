package org.apache.commons.net.util;

import java.io.File;
import java.io.FileInputStream;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.util.Enumeration;
import javax.net.ssl.KeyManager;
import org.apache.commons.net.io.Util;

public final class KeyManagerUtils
{
  private static final String DEFAULT_STORE_TYPE = ;
  
  public static KeyManager createClientKeyManager(File paramFile, String paramString)
  {
    return createClientKeyManager(DEFAULT_STORE_TYPE, paramFile, paramString, null, paramString);
  }
  
  public static KeyManager createClientKeyManager(File paramFile, String paramString1, String paramString2)
  {
    return createClientKeyManager(DEFAULT_STORE_TYPE, paramFile, paramString1, paramString2, paramString1);
  }
  
  public static KeyManager createClientKeyManager(String paramString1, File paramFile, String paramString2, String paramString3, String paramString4)
  {
    return createClientKeyManager(loadStore(paramString1, paramFile, paramString2), paramString3, paramString4);
  }
  
  public static KeyManager createClientKeyManager(KeyStore paramKeyStore, String paramString1, String paramString2)
  {
    if (paramString1 != null) {}
    for (;;)
    {
      return new KeyManagerUtils.X509KeyManager(new KeyManagerUtils.ClientKeyStore(paramKeyStore, paramString1, paramString2));
      paramString1 = findAlias(paramKeyStore);
    }
  }
  
  private static String findAlias(KeyStore paramKeyStore)
  {
    Enumeration localEnumeration = paramKeyStore.aliases();
    String str;
    do
    {
      if (!localEnumeration.hasMoreElements()) {
        throw new KeyStoreException("Cannot find a private key entry");
      }
      str = (String)localEnumeration.nextElement();
    } while (!paramKeyStore.isKeyEntry(str));
    return str;
  }
  
  private static KeyStore loadStore(String paramString1, File paramFile, String paramString2)
  {
    paramString1 = KeyStore.getInstance(paramString1);
    try
    {
      paramFile = new FileInputStream(paramFile);
      Util.closeQuietly(paramFile);
    }
    finally
    {
      try
      {
        paramString1.load(paramFile, paramString2.toCharArray());
        Util.closeQuietly(paramFile);
        return paramString1;
      }
      finally {}
      paramString1 = finally;
      paramFile = null;
    }
    throw paramString1;
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.net.util.KeyManagerUtils
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
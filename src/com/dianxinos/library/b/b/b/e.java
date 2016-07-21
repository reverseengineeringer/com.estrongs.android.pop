package com.dianxinos.library.b.b.b;

import javax.crypto.Cipher;
import javax.crypto.SecretKey;

public class e
  extends a
{
  public e(SecretKey paramSecretKey)
  {
    a = paramSecretKey;
  }
  
  public boolean a()
  {
    Cipher localCipher1 = a("AES/CBC/PKCS5Padding");
    Cipher localCipher2 = a("AES/CBC/PKCS5Padding");
    if ((localCipher1 == null) || (localCipher2 == null)) {
      return false;
    }
    a(a, localCipher1, localCipher2);
    return true;
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.library.b.b.b.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
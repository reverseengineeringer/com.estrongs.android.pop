package com.dianxinos.library.b.a;

import com.dianxinos.library.b.c.k;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.Key;
import java.util.zip.GZIPInputStream;
import javax.crypto.Cipher;
import javax.crypto.CipherInputStream;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

class a
{
  InputStream a = null;
  e b = null;
  g c = null;
  CipherInputStream d = null;
  GZIPInputStream e = null;
  InputStream f = null;
  InputStream g = null;
  
  public boolean a(InputStream paramInputStream, long paramLong, OutputStream paramOutputStream, Key paramKey)
  {
    try
    {
      Cipher localCipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
      localCipher.init(2, paramKey);
      paramKey = localCipher;
    }
    catch (Exception paramKey)
    {
      for (;;)
      {
        paramKey = null;
      }
    }
    if (paramKey == null) {
      return false;
    }
    return a(paramInputStream, paramLong, paramOutputStream, paramKey, Cipher.getInstance("AES/CFB/NoPadding"), new byte[65536]);
  }
  
  public boolean a(InputStream paramInputStream, long paramLong, OutputStream paramOutputStream, Cipher paramCipher1, Cipher paramCipher2, byte[] paramArrayOfByte)
  {
    if (paramCipher1 == null) {
      return false;
    }
    a = paramInputStream;
    b = new e(a);
    f = b;
    paramInputStream = c.b(f);
    int i = com.dianxinos.library.b.c.d.b(f);
    paramCipher1 = paramCipher1.doFinal(c);
    paramCipher2.init(2, new SecretKeySpec(paramCipher1, "AES"), new IvParameterSpec(c.a(paramCipher1)));
    long l = i + 16;
    c = new g(b, paramLong - l);
    d = new CipherInputStream(c, paramCipher2);
    if (d) {
      e = new GZIPInputStream(d, 8192);
    }
    for (g = e;; g = d) {
      try
      {
        do
        {
          i = g.read(paramArrayOfByte);
          if (i > 0) {
            paramOutputStream.write(paramArrayOfByte, 0, i);
          }
        } while (i > 0);
        paramOutputStream.close();
        g.close();
        c.a(b, b.a(), b.b());
        if (com.dianxinos.library.b.a.b) {
          k.a("Decode sucess. data integraty is verified.");
        }
        return true;
      }
      finally
      {
        paramOutputStream.close();
        g.close();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.library.b.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
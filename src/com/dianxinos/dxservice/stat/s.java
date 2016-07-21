package com.dianxinos.dxservice.stat;

import android.util.Log;
import dianxinos.dxstat.org.apache.commons.codec.a.a;
import java.security.KeyFactory;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.spec.X509EncodedKeySpec;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;

public final class s
{
  private static Cipher a;
  private static Cipher b;
  private static KeyFactory c;
  
  public static String a(String paramString1, String paramString2)
  {
    localObject = paramString1;
    if (paramString1 != null) {}
    for (;;)
    {
      try
      {
        int i = paramString1.trim().length();
        if (i != 0) {
          continue;
        }
        localObject = paramString1;
      }
      catch (Exception paramString2)
      {
        localObject = paramString1;
        if (!com.dianxinos.dxservice.a.c.e) {
          continue;
        }
        Log.e("stat.EncryptionUtil", "Failed to encrypt via RSA.", paramString2);
        localObject = paramString1;
        continue;
      }
      finally {}
      return (String)localObject;
      paramString2 = new X509EncodedKeySpec(a.b(paramString2.getBytes()));
      paramString2 = c().generatePublic(paramString2);
      localObject = b();
      ((Cipher)localObject).init(1, paramString2);
      localObject = b(((Cipher)localObject).doFinal(paramString1.getBytes("utf-8")));
    }
  }
  
  public static String a(String paramString, byte[] paramArrayOfByte)
  {
    localObject = paramString;
    if (paramString != null) {}
    for (;;)
    {
      try
      {
        int i = paramString.trim().length();
        if (i != 0) {
          continue;
        }
        localObject = paramString;
      }
      catch (Exception paramArrayOfByte)
      {
        localObject = paramString;
        if (!com.dianxinos.dxservice.a.c.e) {
          continue;
        }
        Log.e("stat.EncryptionUtil", "Failed to encrypt via AES.", paramArrayOfByte);
        localObject = paramString;
        continue;
      }
      finally {}
      return (String)localObject;
      paramArrayOfByte = new SecretKeySpec(paramArrayOfByte, "AES");
      localObject = a();
      ((Cipher)localObject).init(1, paramArrayOfByte);
      localObject = b(((Cipher)localObject).doFinal(paramString.getBytes("utf-8")));
    }
  }
  
  public static String a(byte[] paramArrayOfByte)
  {
    for (;;)
    {
      try
      {
        MessageDigest localMessageDigest = MessageDigest.getInstance("SHA-1");
        localMessageDigest.update(paramArrayOfByte);
        paramArrayOfByte = b(localMessageDigest.digest());
        return paramArrayOfByte;
      }
      catch (NoSuchAlgorithmException paramArrayOfByte)
      {
        if (com.dianxinos.dxservice.a.c.e) {
          Log.e("stat.EncryptionUtil", "Failed to encryptSHA1!", paramArrayOfByte);
        }
      }
      catch (NullPointerException paramArrayOfByte)
      {
        if (com.dianxinos.dxservice.a.c.e) {
          Log.e("stat.EncryptionUtil", "Failed to encryptSHA1!", paramArrayOfByte);
        }
      }
      finally {}
      paramArrayOfByte = "";
    }
  }
  
  private static Cipher a()
  {
    if (a == null) {
      a = Cipher.getInstance("AES");
    }
    return a;
  }
  
  public static String b(String paramString1, String paramString2)
  {
    localObject = paramString1;
    if (paramString1 != null) {}
    for (;;)
    {
      try
      {
        int i = paramString1.trim().length();
        if (i != 0) {
          continue;
        }
        localObject = paramString1;
      }
      catch (Exception paramString2)
      {
        localObject = paramString1;
        if (!com.dianxinos.dxservice.a.c.e) {
          continue;
        }
        Log.e("stat.EncryptionUtil", "Failed to encrypt via AES.", paramString2);
        localObject = paramString1;
        continue;
      }
      finally {}
      return (String)localObject;
      paramString2 = new SecretKeySpec(a.b(paramString2.getBytes()), "AES");
      localObject = a();
      ((Cipher)localObject).init(1, paramString2);
      localObject = b(((Cipher)localObject).doFinal(paramString1.getBytes("utf-8")));
    }
  }
  
  private static String b(byte[] paramArrayOfByte)
  {
    return String.valueOf(dianxinos.dxstat.org.apache.commons.codec.a.c.a(paramArrayOfByte));
  }
  
  private static Cipher b()
  {
    if (b == null) {
      b = Cipher.getInstance("RSA");
    }
    return b;
  }
  
  private static KeyFactory c()
  {
    if (c == null) {
      c = KeyFactory.getInstance("RSA");
    }
    return c;
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.dxservice.stat.s
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
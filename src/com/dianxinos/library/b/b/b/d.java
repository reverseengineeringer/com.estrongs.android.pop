package com.dianxinos.library.b.b.b;

import com.dianxinos.library.b.c.i;
import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.PBEKeySpec;
import javax.crypto.spec.SecretKeySpec;

public class d
  extends a
{
  private char[] d;
  private final com.dianxinos.library.b.b.c.a e;
  private String f;
  
  public d(String paramString, com.dianxinos.library.b.b.c.a parama, char[] paramArrayOfChar)
  {
    f = paramString;
    d = paramArrayOfChar;
    e = parama;
  }
  
  private SecretKey a(byte[] paramArrayOfByte)
  {
    return new SecretKeySpec(paramArrayOfByte, "AES");
  }
  
  private static SecretKey a(char[] paramArrayOfChar, byte[] paramArrayOfByte)
  {
    try
    {
      paramArrayOfChar = new PBEKeySpec(paramArrayOfChar, paramArrayOfByte, 37, 128);
      paramArrayOfChar = new SecretKeySpec(SecretKeyFactory.getInstance("PBEWITHSHAAND256BITAES-CBC-BC").generateSecret(paramArrayOfChar).getEncoded(), "AES");
      return paramArrayOfChar;
    }
    catch (Exception paramArrayOfChar)
    {
      paramArrayOfChar.printStackTrace();
    }
    return null;
  }
  
  private SecretKey c()
  {
    try
    {
      Object localObject = KeyGenerator.getInstance("AES");
      ((KeyGenerator)localObject).init(128);
      localObject = ((KeyGenerator)localObject).generateKey();
      return (SecretKey)localObject;
    }
    catch (Exception localException) {}
    return null;
  }
  
  public boolean a()
  {
    Object localObject3 = b.a(f + "tb295d117135a9763da282e7dae73a5ca7d3e5b11");
    Object localObject1 = e.a((String)localObject3);
    if (localObject1 == null) {}
    for (int i = 1; i != 0; i = 0)
    {
      localObject2 = b.a(32);
      localObject1 = localObject2;
      if (e.a((String)localObject3, (byte[])localObject2) > 0L) {
        break;
      }
      return false;
    }
    localObject1 = a(d, (byte[])localObject1);
    if (localObject1 == null) {
      return false;
    }
    Object localObject2 = a("AES/CBC/PKCS5Padding");
    localObject3 = a("AES/CBC/PKCS5Padding");
    if ((localObject2 == null) || (localObject3 == null)) {
      return false;
    }
    a((SecretKey)localObject1, (Cipher)localObject2, (Cipher)localObject3);
    c.a(d);
    d = null;
    return true;
  }
  
  public e b(String paramString)
  {
    i.a();
    Object localObject = b.a(paramString + "ta727348c8aa7823aa5f18dc02a066498bfd8b132");
    paramString = e.a((String)localObject);
    if (paramString == null)
    {
      paramString = c();
      if (paramString == null) {
        return null;
      }
      byte[] arrayOfByte = a(paramString.getEncoded(), b.a((String)localObject, 16));
      if (arrayOfByte == null) {
        return null;
      }
      if (e.a((String)localObject, arrayOfByte) <= 0L) {
        return null;
      }
    }
    else
    {
      paramString = b(paramString, b.a((String)localObject, 16));
      if (paramString == null) {
        return null;
      }
      localObject = a(paramString);
      paramString = (String)localObject;
      if (localObject == null) {
        return null;
      }
    }
    paramString = new e(paramString);
    if (!paramString.a()) {
      return null;
    }
    return paramString;
  }
  
  public boolean b()
  {
    Object localObject = b.a(f + "t26a26ebfab9b4e5f9f39784402706fd6efdf7081");
    byte[] arrayOfByte = e.a((String)localObject);
    int i;
    if (arrayOfByte == null)
    {
      i = 1;
      if (i == 0) {
        break label83;
      }
      arrayOfByte = a(com.dianxinos.library.b.b.c.c.a(1), b.a((String)localObject, 16));
      if (e.a((String)localObject, arrayOfByte) <= 0L) {
        break label81;
      }
    }
    label81:
    label83:
    do
    {
      return true;
      i = 0;
      break;
      return false;
      localObject = b(arrayOfByte, b.a((String)localObject, 16));
      if (localObject == null) {
        return false;
      }
    } while (com.dianxinos.library.b.b.c.c.a((byte[])localObject) == 1);
    return false;
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.library.b.b.b.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
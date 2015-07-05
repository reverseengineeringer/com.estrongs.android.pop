package com.jcraft.jsch;

import java.math.BigInteger;
import java.util.Vector;

public class KeyPairPKCS8
  extends KeyPair
{
  private static final byte[] g = { 42, -122, 72, -122, -9, 13, 1, 1, 1 };
  private static final byte[] h = { 42, -122, 72, -50, 56, 4, 1 };
  private static final byte[] i = { 42, -122, 72, -122, -9, 13, 1, 5, 13 };
  private static final byte[] j = { 42, -122, 72, -122, -9, 13, 1, 5, 12 };
  private static final byte[] k = { 96, -122, 72, 1, 101, 3, 4, 1, 2 };
  private static final byte[] l = { 96, -122, 72, 1, 101, 3, 4, 1, 22 };
  private static final byte[] m = { 96, -122, 72, 1, 101, 3, 4, 1, 42 };
  private static final byte[] n = { 42, -122, 72, -122, -9, 13, 1, 5, 3 };
  private static final byte[] p = Util.b("-----BEGIN DSA PRIVATE KEY-----");
  private static final byte[] q = Util.b("-----END DSA PRIVATE KEY-----");
  private KeyPair o = null;
  
  public KeyPairPKCS8(JSch paramJSch)
  {
    super(paramJSch);
  }
  
  public byte[] a()
  {
    return o.a();
  }
  
  public byte[] a(byte[] paramArrayOfByte)
  {
    return o.a(paramArrayOfByte);
  }
  
  boolean b(byte[] paramArrayOfByte)
  {
    try
    {
      Object localObject1 = new Vector();
      paramArrayOfByte = new KeyPair.ASN1(this, paramArrayOfByte).b();
      byte b = paramArrayOfByte[1];
      paramArrayOfByte = paramArrayOfByte[2];
      Object localObject3 = b.b();
      Object localObject2 = localObject3[0].a();
      localObject3 = localObject3[1].b();
      int i1;
      if (localObject3.length > 0)
      {
        i1 = 0;
        if (i1 < localObject3.length) {}
      }
      else
      {
        paramArrayOfByte = paramArrayOfByte.a();
        if (!Util.b((byte[])localObject2, g)) {
          break label143;
        }
        localObject1 = new KeyPairRSA(c);
        ((KeyPair)localObject1).a(this);
        if (((KeyPair)localObject1).b(paramArrayOfByte)) {
          o = ((KeyPair)localObject1);
        }
      }
      for (;;)
      {
        if (o != null)
        {
          return true;
          ((Vector)localObject1).addElement(localObject3[i1].a());
          i1 += 1;
          break;
          label143:
          if (Util.b((byte[])localObject2, h))
          {
            paramArrayOfByte = new KeyPair.ASN1(this, paramArrayOfByte);
            if (((Vector)localObject1).size() == 0)
            {
              localObject2 = paramArrayOfByte.b();
              paramArrayOfByte = localObject2[1].a();
              localObject2 = localObject2[0].b();
              i1 = 0;
              label196:
              if (i1 >= localObject2.length) {
                ((Vector)localObject1).addElement(paramArrayOfByte);
              }
            }
            for (;;)
            {
              paramArrayOfByte = (byte[])((Vector)localObject1).elementAt(0);
              localObject2 = (byte[])((Vector)localObject1).elementAt(1);
              localObject3 = (byte[])((Vector)localObject1).elementAt(2);
              localObject1 = (byte[])((Vector)localObject1).elementAt(3);
              byte[] arrayOfByte = new BigInteger((byte[])localObject3).modPow(new BigInteger((byte[])localObject1), new BigInteger(paramArrayOfByte)).toByteArray();
              paramArrayOfByte = new KeyPairDSA(c, paramArrayOfByte, (byte[])localObject2, (byte[])localObject3, arrayOfByte, (byte[])localObject1).f();
              localObject1 = new KeyPairDSA(c);
              ((KeyPair)localObject1).a(this);
              if (!((KeyPair)localObject1).b(paramArrayOfByte)) {
                break;
              }
              o = ((KeyPair)localObject1);
              break;
              ((Vector)localObject1).addElement(localObject2[i1].a());
              i1 += 1;
              break label196;
              ((Vector)localObject1).addElement(paramArrayOfByte.a());
            }
          }
        }
      }
      return false;
    }
    catch (Exception paramArrayOfByte)
    {
      return false;
      return false;
    }
    catch (KeyPair.ASN1Exception paramArrayOfByte) {}
  }
  
  byte[] b()
  {
    return o.b();
  }
  
  public boolean c(byte[] paramArrayOfByte)
  {
    boolean bool2 = false;
    boolean bool1;
    if (!d()) {
      bool1 = true;
    }
    for (;;)
    {
      return bool1;
      if (paramArrayOfByte == null)
      {
        if (d()) {}
        for (bool1 = false;; bool1 = true) {
          return bool1;
        }
      }
      try
      {
        Object localObject1 = new KeyPair.ASN1(this, f).b();
        byte[] arrayOfByte1 = localObject1[1].a();
        Object localObject2 = localObject1[0].b();
        localObject1 = localObject2[0].a();
        localObject2 = localObject2[1];
        byte[] arrayOfByte2;
        int i1;
        if (Util.b((byte[])localObject1, i))
        {
          localObject1 = ((KeyPair.ASN1)localObject2).b();
          localObject2 = localObject1[0];
          localObject1 = localObject1[1];
          localObject2 = ((KeyPair.ASN1)localObject2).b();
          localObject2[0].a();
          localObject2 = localObject2[1].b();
          arrayOfByte2 = localObject2[0].a();
          i1 = Integer.parseInt(new BigInteger(localObject2[1].a()).toString());
          localObject1 = ((KeyPair.ASN1)localObject1).b();
          localObject2 = localObject1[0].a();
          localObject1 = localObject1[1].a();
          localObject2 = d((byte[])localObject2);
          bool1 = bool2;
          if (localObject2 == null) {
            continue;
          }
        }
        try
        {
          paramArrayOfByte = ((PBKDF)Class.forName(JSch.c("pbkdf")).newInstance()).a(paramArrayOfByte, arrayOfByte2, i1, ((Cipher)localObject2).b());
          bool1 = bool2;
          if (paramArrayOfByte == null) {
            continue;
          }
          ((Cipher)localObject2).a(1, paramArrayOfByte, (byte[])localObject1);
          Util.d(paramArrayOfByte);
          paramArrayOfByte = new byte[arrayOfByte1.length];
          ((Cipher)localObject2).a(arrayOfByte1, 0, arrayOfByte1.length, paramArrayOfByte, 0);
          bool1 = bool2;
          if (!b(paramArrayOfByte)) {
            continue;
          }
          e = false;
          return true;
          boolean bool3 = Util.b((byte[])localObject1, n);
          bool1 = bool2;
          if (!bool3) {
            continue;
          }
          return false;
        }
        catch (Exception paramArrayOfByte)
        {
          for (;;)
          {
            paramArrayOfByte = null;
          }
        }
        return false;
      }
      catch (Exception paramArrayOfByte)
      {
        return false;
      }
      catch (KeyPair.ASN1Exception paramArrayOfByte) {}
    }
  }
  
  public byte[] c()
  {
    return o.c();
  }
  
  Cipher d(byte[] paramArrayOfByte)
  {
    String str2;
    for (;;)
    {
      try
      {
        if (Util.b(paramArrayOfByte, k)) {
          str1 = "aes128-cbc";
        }
      }
      catch (Exception localException1)
      {
        String str1;
        Cipher localCipher;
        str2 = null;
        if (JSch.d().a(4))
        {
          if (str2 == null)
          {
            paramArrayOfByte = "unknown oid: " + Util.c(paramArrayOfByte);
            JSch.d().a(4, "PKCS8: " + paramArrayOfByte);
          }
        }
        else {
          return null;
        }
      }
      try
      {
        localCipher = (Cipher)Class.forName(JSch.c(str1)).newInstance();
        return localCipher;
      }
      catch (Exception localException2)
      {
        continue;
        str2 = null;
      }
      if (Util.b(paramArrayOfByte, l))
      {
        str1 = "aes192-cbc";
      }
      else if (Util.b(paramArrayOfByte, m))
      {
        str1 = "aes256-cbc";
        continue;
        paramArrayOfByte = "function " + str2 + " is not supported";
        continue;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.jcraft.jsch.KeyPairPKCS8
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
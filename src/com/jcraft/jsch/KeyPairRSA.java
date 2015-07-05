package com.jcraft.jsch;

import java.math.BigInteger;

public class KeyPairRSA
  extends KeyPair
{
  private static final byte[] p = Util.b("-----BEGIN RSA PRIVATE KEY-----");
  private static final byte[] q = Util.b("-----END RSA PRIVATE KEY-----");
  private static final byte[] r = Util.b("ssh-rsa");
  private byte[] g;
  private byte[] h;
  private byte[] i;
  private byte[] j;
  private byte[] k;
  private byte[] l;
  private byte[] m;
  private byte[] n;
  private int o = 1024;
  
  public KeyPairRSA(JSch paramJSch)
  {
    this(paramJSch, null, null, null);
  }
  
  public KeyPairRSA(JSch paramJSch, byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, byte[] paramArrayOfByte3)
  {
    super(paramJSch);
    g = paramArrayOfByte1;
    h = paramArrayOfByte2;
    i = paramArrayOfByte3;
    if (paramArrayOfByte1 != null) {
      o = new BigInteger(paramArrayOfByte1).bitLength();
    }
  }
  
  static KeyPair a(JSch paramJSch, Buffer paramBuffer)
  {
    paramBuffer = paramBuffer.a(8, "invalid key format");
    paramJSch = new KeyPairRSA(paramJSch, paramBuffer[1], paramBuffer[2], paramBuffer[3]);
    n = paramBuffer[4];
    j = paramBuffer[5];
    k = paramBuffer[6];
    b = new String(paramBuffer[7]);
    a = 0;
    return paramJSch;
  }
  
  private byte[] f()
  {
    if (l == null) {
      l = new BigInteger(i).mod(new BigInteger(j).subtract(BigInteger.ONE)).toByteArray();
    }
    return l;
  }
  
  private byte[] g()
  {
    if (m == null) {
      m = new BigInteger(i).mod(new BigInteger(k).subtract(BigInteger.ONE)).toByteArray();
    }
    return m;
  }
  
  private byte[] h()
  {
    if (n == null) {
      n = new BigInteger(k).modInverse(new BigInteger(j)).toByteArray();
    }
    return n;
  }
  
  public byte[] a()
  {
    if (d()) {
      throw new JSchException("key is encrypted.");
    }
    Buffer localBuffer = new Buffer();
    localBuffer.b(r);
    localBuffer.b(g);
    localBuffer.b(h);
    localBuffer.b(i);
    localBuffer.b(h());
    localBuffer.b(j);
    localBuffer.b(k);
    localBuffer.b(Util.b(b));
    byte[] arrayOfByte = new byte[localBuffer.a()];
    localBuffer.c(arrayOfByte, 0, arrayOfByte.length);
    return arrayOfByte;
  }
  
  public byte[] a(byte[] paramArrayOfByte)
  {
    try
    {
      SignatureRSA localSignatureRSA = (SignatureRSA)Class.forName(JSch.c("signature.rsa")).newInstance();
      localSignatureRSA.a();
      localSignatureRSA.b(i, g);
      localSignatureRSA.a(paramArrayOfByte);
      paramArrayOfByte = localSignatureRSA.b();
      paramArrayOfByte = arb;
      return paramArrayOfByte;
    }
    catch (Exception paramArrayOfByte) {}
    return null;
  }
  
  boolean b(byte[] paramArrayOfByte)
  {
    try
    {
      Buffer localBuffer;
      if (a == 2)
      {
        localBuffer = new Buffer(paramArrayOfByte);
        localBuffer.b(paramArrayOfByte.length);
      }
      try
      {
        paramArrayOfByte = localBuffer.a(4, "");
        i = paramArrayOfByte[0];
        j = paramArrayOfByte[1];
        k = paramArrayOfByte[2];
        n = paramArrayOfByte[3];
        f();
        g();
        return true;
      }
      catch (JSchException paramArrayOfByte)
      {
        return false;
      }
      if (a != 1) {
        break label739;
      }
      if (paramArrayOfByte[0] == 48) {
        break label737;
      }
      paramArrayOfByte = new Buffer(paramArrayOfByte);
      h = paramArrayOfByte.i();
      i = paramArrayOfByte.i();
      g = paramArrayOfByte.i();
      paramArrayOfByte.i();
      j = paramArrayOfByte.i();
      k = paramArrayOfByte.i();
      if (g != null) {
        o = new BigInteger(g).bitLength();
      }
      f();
      g();
      h();
      return true;
    }
    catch (Exception paramArrayOfByte)
    {
      label252:
      label318:
      label384:
      label450:
      label648:
      label694:
      return false;
    }
    g = new byte[i2];
    System.arraycopy(paramArrayOfByte, i3, g, 0, i2);
    int i1 = i2 + i3 + 1;
    int i2 = i1 + 1;
    int i4 = paramArrayOfByte[i1] & 0xFF;
    i1 = i4;
    int i3 = i2;
    if ((i4 & 0x80) != 0)
    {
      i3 = i4 & 0x7F;
      i1 = 0;
    }
    else
    {
      h = new byte[i1];
      System.arraycopy(paramArrayOfByte, i3, h, 0, i1);
      i1 = i1 + i3 + 1;
      i2 = i1 + 1;
      i4 = paramArrayOfByte[i1] & 0xFF;
      i1 = i4;
      i3 = i2;
      if ((i4 & 0x80) != 0)
      {
        i3 = i4 & 0x7F;
        i1 = 0;
        break label919;
      }
      i = new byte[i1];
      System.arraycopy(paramArrayOfByte, i3, i, 0, i1);
      i1 = i1 + i3 + 1;
      i2 = i1 + 1;
      i4 = paramArrayOfByte[i1] & 0xFF;
      i1 = i4;
      i3 = i2;
      if ((i4 & 0x80) != 0)
      {
        i3 = i4 & 0x7F;
        i1 = 0;
        break label930;
      }
      j = new byte[i1];
      System.arraycopy(paramArrayOfByte, i3, j, 0, i1);
      i1 = i1 + i3 + 1;
      i2 = i1 + 1;
      i4 = paramArrayOfByte[i1] & 0xFF;
      i1 = i4;
      i3 = i2;
      if ((i4 & 0x80) != 0)
      {
        i3 = i4 & 0x7F;
        i1 = 0;
        break label941;
      }
      k = new byte[i1];
      System.arraycopy(paramArrayOfByte, i3, k, 0, i1);
      i1 = i1 + i3 + 1;
      i2 = i1 + 1;
      i4 = paramArrayOfByte[i1] & 0xFF;
      i1 = i4;
      i3 = i2;
      if ((i4 & 0x80) != 0)
      {
        i3 = i4 & 0x7F;
        i1 = 0;
        break label952;
      }
    }
    for (;;)
    {
      l = new byte[i1];
      System.arraycopy(paramArrayOfByte, i3, l, 0, i1);
      i1 = i1 + i3 + 1;
      i2 = i1 + 1;
      i4 = paramArrayOfByte[i1] & 0xFF;
      i1 = i4;
      i3 = i2;
      if ((i4 & 0x80) != 0)
      {
        i3 = i4 & 0x7F;
        i1 = 0;
        break label963;
      }
      m = new byte[i1];
      System.arraycopy(paramArrayOfByte, i3, m, 0, i1);
      i1 = i1 + i3 + 1;
      i2 = i1 + 1;
      i4 = paramArrayOfByte[i1] & 0xFF;
      i1 = i4;
      i3 = i2;
      if ((i4 & 0x80) != 0)
      {
        i3 = i4 & 0x7F;
        i1 = 0;
        break label974;
      }
      n = new byte[i1];
      System.arraycopy(paramArrayOfByte, i3, n, 0, i1);
      if (g != null)
      {
        o = new BigInteger(g).bitLength();
        return true;
        i4 = paramArrayOfByte[i2];
        i1 = (i1 << 8) + (i4 & 0xFF);
        i2 += 1;
        i3 -= 1;
        break label974;
      }
      label737:
      label739:
      do
      {
        i1 = 2;
        break;
        return true;
        return false;
        i1 = paramArrayOfByte[1] & 0xFF;
      } while ((i1 & 0x80) == 0);
      i2 = i1 & 0x7F;
      i3 = 0;
      i1 = 2;
      for (;;)
      {
        if (i2 <= 0)
        {
          if (paramArrayOfByte[i1] == 2) {
            break;
          }
          return false;
        }
        i3 = (paramArrayOfByte[i1] & 0xFF) + (i3 << 8);
        i1 += 1;
        i2 -= 1;
      }
      i1 += 1;
      i2 = i1 + 1;
      i4 = paramArrayOfByte[i1] & 0xFF;
      i1 = i4;
      i3 = i2;
      if ((i4 & 0x80) != 0)
      {
        i3 = i4 & 0x7F;
        i1 = 0;
        label845:
        if (i3 > 0) {
          break label985;
        }
        i3 = i2;
      }
      i2 = i1 + i3 + 1;
      i1 = i2 + 1;
      i4 = paramArrayOfByte[i2] & 0xFF;
      i2 = i4;
      i3 = i1;
      if ((i4 & 0x80) == 0) {
        break;
      }
      i3 = i4 & 0x7F;
      i2 = 0;
      label897:
      if (i3 > 0) {
        break label1011;
      }
      i3 = i1;
      break;
      label908:
      if (i3 > 0) {
        break label1037;
      }
      i3 = i2;
      break label252;
      label919:
      if (i3 > 0) {
        break label1063;
      }
      i3 = i2;
      break label318;
      label930:
      if (i3 > 0) {
        break label1089;
      }
      i3 = i2;
      break label384;
      label941:
      if (i3 > 0) {
        break label1115;
      }
      i3 = i2;
      break label450;
      label952:
      if (i3 > 0) {
        break label1141;
      }
      i3 = i2;
    }
    for (;;)
    {
      label963:
      if (i3 <= 0)
      {
        i3 = i2;
        break;
        label974:
        if (i3 > 0) {
          break label694;
        }
        i3 = i2;
        break label648;
        label985:
        i1 = (i1 << 8) + (paramArrayOfByte[i2] & 0xFF);
        i2 += 1;
        i3 -= 1;
        break label845;
        label1011:
        i2 = (i2 << 8) + (paramArrayOfByte[i1] & 0xFF);
        i1 += 1;
        i3 -= 1;
        break label897;
        label1037:
        i1 = (i1 << 8) + (paramArrayOfByte[i2] & 0xFF);
        i2 += 1;
        i3 -= 1;
        break label908;
        label1063:
        i1 = (i1 << 8) + (paramArrayOfByte[i2] & 0xFF);
        i2 += 1;
        i3 -= 1;
        break label919;
        label1089:
        i1 = (i1 << 8) + (paramArrayOfByte[i2] & 0xFF);
        i2 += 1;
        i3 -= 1;
        break label930;
        label1115:
        i1 = (i1 << 8) + (paramArrayOfByte[i2] & 0xFF);
        i2 += 1;
        i3 -= 1;
        break label941;
        label1141:
        i1 = (i1 << 8) + (paramArrayOfByte[i2] & 0xFF);
        i2 += 1;
        i3 -= 1;
        break label952;
      }
      i1 = (i1 << 8) + (paramArrayOfByte[i2] & 0xFF);
      i2 += 1;
      i3 -= 1;
    }
  }
  
  byte[] b()
  {
    return r;
  }
  
  public byte[] c()
  {
    byte[] arrayOfByte = super.c();
    if (arrayOfByte != null) {
      return arrayOfByte;
    }
    if (h == null) {
      return null;
    }
    return arh, g }).b;
  }
  
  public void e()
  {
    super.e();
    Util.d(i);
  }
}

/* Location:
 * Qualified Name:     com.jcraft.jsch.KeyPairRSA
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
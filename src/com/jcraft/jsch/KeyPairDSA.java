package com.jcraft.jsch;

import java.math.BigInteger;

public class KeyPairDSA
  extends KeyPair
{
  private static final byte[] m = Util.b("-----BEGIN DSA PRIVATE KEY-----");
  private static final byte[] n = Util.b("-----END DSA PRIVATE KEY-----");
  private static final byte[] o = Util.b("ssh-dss");
  private byte[] g;
  private byte[] h;
  private byte[] i;
  private byte[] j;
  private byte[] k;
  private int l = 1024;
  
  public KeyPairDSA(JSch paramJSch)
  {
    this(paramJSch, null, null, null, null, null);
  }
  
  public KeyPairDSA(JSch paramJSch, byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, byte[] paramArrayOfByte3, byte[] paramArrayOfByte4, byte[] paramArrayOfByte5)
  {
    super(paramJSch);
    g = paramArrayOfByte1;
    h = paramArrayOfByte2;
    i = paramArrayOfByte3;
    j = paramArrayOfByte4;
    k = paramArrayOfByte5;
    if (paramArrayOfByte1 != null) {
      l = new BigInteger(paramArrayOfByte1).bitLength();
    }
  }
  
  static KeyPair a(JSch paramJSch, Buffer paramBuffer)
  {
    paramBuffer = paramBuffer.a(7, "invalid key format");
    paramJSch = new KeyPairDSA(paramJSch, paramBuffer[1], paramBuffer[2], paramBuffer[3], paramBuffer[4], paramBuffer[5]);
    b = new String(paramBuffer[6]);
    a = 0;
    return paramJSch;
  }
  
  public byte[] a()
  {
    if (d()) {
      throw new JSchException("key is encrypted.");
    }
    Buffer localBuffer = new Buffer();
    localBuffer.b(o);
    localBuffer.b(g);
    localBuffer.b(h);
    localBuffer.b(i);
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
      SignatureDSA localSignatureDSA = (SignatureDSA)Class.forName(JSch.c("signature.dss")).newInstance();
      localSignatureDSA.a();
      localSignatureDSA.b(k, g, h, i);
      localSignatureDSA.a(paramArrayOfByte);
      paramArrayOfByte = localSignatureDSA.b();
      paramArrayOfByte = aob;
      return paramArrayOfByte;
    }
    catch (Exception paramArrayOfByte) {}
    return null;
  }
  
  boolean b(byte[] paramArrayOfByte)
  {
    for (;;)
    {
      int i3;
      try
      {
        if (a == 1)
        {
          if (paramArrayOfByte[0] == 48) {
            continue;
          }
          paramArrayOfByte = new Buffer(paramArrayOfByte);
          paramArrayOfByte.d();
          g = paramArrayOfByte.i();
          i = paramArrayOfByte.i();
          h = paramArrayOfByte.i();
          j = paramArrayOfByte.i();
          k = paramArrayOfByte.i();
          if (g != null)
          {
            l = new BigInteger(g).bitLength();
            return true;
          }
        }
        else
        {
          if (a == 2)
          {
            Buffer localBuffer = new Buffer(paramArrayOfByte);
            localBuffer.b(paramArrayOfByte.length);
            try
            {
              k = localBuffer.a(1, "")[0];
              return true;
            }
            catch (JSchException paramArrayOfByte)
            {
              return false;
            }
          }
          if (paramArrayOfByte[0] == 48) {
            continue;
          }
          return false;
          g = new byte[i2];
          System.arraycopy(paramArrayOfByte, i3, g, 0, i2);
          i1 = i2 + i3 + 1;
          i2 = i1 + 1;
          i4 = paramArrayOfByte[i1] & 0xFF;
          i1 = i4;
          i3 = i2;
          if ((i4 & 0x80) != 0)
          {
            i3 = i4 & 0x7F;
            i1 = 0;
            continue;
          }
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
            continue;
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
            continue;
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
            continue;
          }
          k = new byte[i1];
          System.arraycopy(paramArrayOfByte, i3, k, 0, i1);
          if (g != null)
          {
            l = new BigInteger(g).bitLength();
            return true;
            i4 = paramArrayOfByte[i2];
            i1 = (i1 << 8) + (i4 & 0xFF);
            i2 += 1;
            i3 -= 1;
            continue;
            i1 = 2;
            continue;
          }
        }
        return true;
        return false;
        i1 = paramArrayOfByte[1] & 0xFF;
        if ((i1 & 0x80) == 0) {
          continue;
        }
        i2 = i1 & 0x7F;
        i3 = 0;
        i1 = 2;
        if (i2 <= 0)
        {
          if (paramArrayOfByte[i1] != 2) {
            return false;
          }
        }
        else
        {
          i3 = (paramArrayOfByte[i1] & 0xFF) + (i3 << 8);
          i1 += 1;
          i2 -= 1;
          continue;
        }
        i1 += 1;
        i2 = i1 + 1;
        int i4 = paramArrayOfByte[i1] & 0xFF;
        i1 = i4;
        i3 = i2;
        if ((i4 & 0x80) != 0)
        {
          i3 = i4 & 0x7F;
          i1 = 0;
          if (i3 <= 0) {
            i3 = i2;
          }
        }
        else
        {
          i2 = i1 + i3 + 1;
          i1 = i2 + 1;
          i4 = paramArrayOfByte[i2] & 0xFF;
          i2 = i4;
          i3 = i1;
          if ((i4 & 0x80) == 0) {
            continue;
          }
          i3 = i4 & 0x7F;
          i2 = 0;
          if (i3 > 0) {
            break label742;
          }
          i3 = i1;
          continue;
          if (i3 > 0) {
            break label768;
          }
          i3 = i2;
          continue;
          if (i3 > 0) {
            break label794;
          }
          i3 = i2;
          continue;
          if (i3 > 0) {
            break label820;
          }
          i3 = i2;
          continue;
          if (i3 > 0) {
            continue;
          }
          i3 = i2;
          continue;
        }
        i1 = (i1 << 8) + (paramArrayOfByte[i2] & 0xFF);
      }
      catch (Exception paramArrayOfByte)
      {
        return false;
      }
      i2 += 1;
      i3 -= 1;
      continue;
      label742:
      int i2 = (i2 << 8) + (paramArrayOfByte[i1] & 0xFF);
      i1 += 1;
      i3 -= 1;
      continue;
      label768:
      int i1 = (i1 << 8) + (paramArrayOfByte[i2] & 0xFF);
      i2 += 1;
      i3 -= 1;
      continue;
      label794:
      i1 = (i1 << 8) + (paramArrayOfByte[i2] & 0xFF);
      i2 += 1;
      i3 -= 1;
      continue;
      label820:
      i1 = (i1 << 8) + (paramArrayOfByte[i2] & 0xFF);
      i2 += 1;
      i3 -= 1;
    }
  }
  
  byte[] b()
  {
    return o;
  }
  
  public byte[] c()
  {
    byte[] arrayOfByte = super.c();
    if (arrayOfByte != null) {
      return arrayOfByte;
    }
    if (g == null) {
      return null;
    }
    return aog, h, i, j }).b;
  }
  
  public void e()
  {
    super.e();
    Util.d(k);
  }
  
  byte[] f()
  {
    int i1 = a(1) + 1 + 1 + 1 + a(g.length) + g.length + 1 + a(h.length) + h.length + 1 + a(i.length) + i.length + 1 + a(j.length) + j.length + 1 + a(k.length) + k.length;
    byte[] arrayOfByte = new byte[a(i1) + 1 + i1];
    a(arrayOfByte, a(arrayOfByte, a(arrayOfByte, a(arrayOfByte, a(arrayOfByte, a(arrayOfByte, a(arrayOfByte, 0, i1), new byte[1]), g), h), i), j), k);
    return arrayOfByte;
  }
}

/* Location:
 * Qualified Name:     com.jcraft.jsch.KeyPairDSA
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.jcraft.jsch;

import java.io.PrintStream;

public abstract class KeyExchange
{
  static String i = "diffie-hellman-group1-sha1";
  static String j = "ssh-rsa,ssh-dss";
  static String k = "blowfish-cbc";
  static String l = "blowfish-cbc";
  static String m = "hmac-md5";
  static String n = "hmac-md5";
  static String o = "";
  static String p = "";
  protected Session q = null;
  protected HASH r = null;
  protected byte[] s = null;
  protected byte[] t = null;
  protected byte[] u = null;
  
  protected static String[] a(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    String[] arrayOfString = new String[10];
    paramArrayOfByte1 = new Buffer(paramArrayOfByte1);
    paramArrayOfByte1.c(17);
    paramArrayOfByte2 = new Buffer(paramArrayOfByte2);
    paramArrayOfByte2.c(17);
    if (JSch.d().a(1))
    {
      i1 = 0;
      if (i1 < 10) {
        break label208;
      }
      i1 = 0;
    }
    int i3;
    for (;;)
    {
      if (i1 >= 10)
      {
        paramArrayOfByte1.c(17);
        paramArrayOfByte2.c(17);
        i3 = 0;
        if (i3 < 10) {
          break label284;
        }
        if (JSch.d().a(1))
        {
          JSch.d().a(1, "kex: server->client " + arrayOfString[3] + " " + arrayOfString[5] + " " + arrayOfString[7]);
          JSch.d().a(1, "kex: client->server " + arrayOfString[2] + " " + arrayOfString[4] + " " + arrayOfString[6]);
        }
        return arrayOfString;
        label208:
        JSch.d().a(1, "kex: server: " + Util.b(paramArrayOfByte1.j()));
        i1 += 1;
        break;
      }
      JSch.d().a(1, "kex: client: " + Util.b(paramArrayOfByte2.j()));
      i1 += 1;
    }
    label284:
    byte[] arrayOfByte1 = paramArrayOfByte1.j();
    byte[] arrayOfByte2 = paramArrayOfByte2.j();
    int i1 = 0;
    int i4 = 0;
    int i2 = i1;
    if (i1 >= arrayOfByte2.length)
    {
      label310:
      if (i1 != 0) {
        break label474;
      }
      arrayOfString[i3] = "";
    }
    label474:
    while (arrayOfString[i3] != null)
    {
      i3 += 1;
      break;
      do
      {
        i2 += 1;
      } while ((i2 < arrayOfByte2.length) && (arrayOfByte2[i2] != 44));
      if (i4 == i2) {
        return null;
      }
      String str = Util.c(arrayOfByte2, i4, i2 - i4);
      i1 = 0;
      i4 = 0;
      for (;;)
      {
        int i5 = i1;
        if (i1 >= arrayOfByte1.length)
        {
          i4 = i2 + 1;
          i1 = i4;
          break;
        }
        while ((i5 < arrayOfByte1.length) && (arrayOfByte1[i5] != 44)) {
          i5 += 1;
        }
        if (i4 == i5) {
          return null;
        }
        if (str.equals(Util.c(arrayOfByte1, i4, i5 - i4)))
        {
          arrayOfString[i3] = str;
          i1 = i2;
          break label310;
        }
        i4 = i5 + 1;
        i1 = i4;
      }
    }
    return null;
  }
  
  public abstract String a();
  
  public abstract void a(Session paramSession, byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, byte[] paramArrayOfByte3, byte[] paramArrayOfByte4);
  
  public abstract boolean a(Buffer paramBuffer);
  
  protected byte[] a(byte[] paramArrayOfByte)
  {
    byte[] arrayOfByte = paramArrayOfByte;
    if (paramArrayOfByte.length > 1)
    {
      arrayOfByte = paramArrayOfByte;
      if (paramArrayOfByte[0] == 0)
      {
        arrayOfByte = paramArrayOfByte;
        if ((paramArrayOfByte[1] & 0x80) == 0)
        {
          arrayOfByte = new byte[paramArrayOfByte.length - 1];
          System.arraycopy(paramArrayOfByte, 1, arrayOfByte, 0, arrayOfByte.length);
          arrayOfByte = a(arrayOfByte);
        }
      }
    }
    return arrayOfByte;
  }
  
  public abstract int b();
  
  public String c()
  {
    try
    {
      HASH localHASH = (HASH)Class.forName(q.d("md5")).newInstance();
      return Util.a(localHASH, g());
    }
    catch (Exception localException)
    {
      for (;;)
      {
        System.err.println("getFingerPrint: " + localException);
        Object localObject = null;
      }
    }
  }
  
  byte[] d()
  {
    return s;
  }
  
  byte[] e()
  {
    return t;
  }
  
  HASH f()
  {
    return r;
  }
  
  byte[] g()
  {
    return u;
  }
}

/* Location:
 * Qualified Name:     com.jcraft.jsch.KeyExchange
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
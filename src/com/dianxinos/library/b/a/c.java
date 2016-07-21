package com.dianxinos.library.b.a;

import com.dianxinos.library.b.a;
import com.dianxinos.library.b.c.k;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

class c
{
  public static int a(InputStream paramInputStream)
  {
    int i = com.dianxinos.library.b.c.d.b(paramInputStream);
    if (i != 1635010897) {
      throw new IOException("bad signature: " + Integer.toHexString(i));
    }
    return i;
  }
  
  public static void a(InputStream paramInputStream, long paramLong1, long paramLong2)
  {
    a(paramInputStream);
    int i = com.dianxinos.library.b.c.d.b(paramInputStream);
    if ((int)paramLong1 != i) {
      throw new RuntimeException("bad crc: real=" + Long.toHexString(paramLong1) + ", expect=" + Long.toHexString(i));
    }
    i = com.dianxinos.library.b.c.d.b(paramInputStream);
    if (16L + paramLong2 != i) {
      throw new RuntimeException("bad fileSize: real=" + paramLong2 + ", expect=" + i);
    }
    if (!com.dianxinos.library.b.c.d.a(paramInputStream, "SSED".length()).equals("SSED")) {
      throw new RuntimeException("bad magic: SSED");
    }
  }
  
  public static void a(OutputStream paramOutputStream, long paramLong1, long paramLong2)
  {
    com.dianxinos.library.b.c.d.a(paramOutputStream, 1635010897);
    com.dianxinos.library.b.c.d.a(paramOutputStream, (int)paramLong1);
    com.dianxinos.library.b.c.d.a(paramOutputStream, (int)paramLong2 + 16);
    com.dianxinos.library.b.c.d.a(paramOutputStream, "SSED");
  }
  
  static byte[] a(byte[] paramArrayOfByte)
  {
    if ((paramArrayOfByte == null) || (paramArrayOfByte.length == 0)) {
      paramArrayOfByte = null;
    }
    for (;;)
    {
      return paramArrayOfByte;
      byte[] arrayOfByte = new byte[16];
      try
      {
        Object localObject = MessageDigest.getInstance("SHA1");
        ((MessageDigest)localObject).reset();
        ((MessageDigest)localObject).update(paramArrayOfByte);
        localObject = ((MessageDigest)localObject).digest();
        int i = 0;
        for (;;)
        {
          paramArrayOfByte = arrayOfByte;
          if (i >= 16) {
            break;
          }
          arrayOfByte[i] = localObject[i];
          i += 1;
        }
        return null;
      }
      catch (NoSuchAlgorithmException paramArrayOfByte) {}
    }
  }
  
  public static d b(InputStream paramInputStream)
  {
    String str = com.dianxinos.library.b.c.d.a(paramInputStream, "SSBG".length());
    a(paramInputStream);
    if (!str.equals("SSBG")) {
      throw new RuntimeException("bad magic: " + str);
    }
    byte[] arrayOfByte1 = com.dianxinos.library.b.c.d.c(paramInputStream);
    a(paramInputStream);
    byte[] arrayOfByte2 = com.dianxinos.library.b.c.d.c(paramInputStream);
    a(paramInputStream);
    boolean bool = com.dianxinos.library.b.c.d.a(paramInputStream);
    a(paramInputStream);
    paramInputStream = new d();
    a = str;
    b = arrayOfByte1;
    c = arrayOfByte2;
    d = bool;
    if (a.b) {
      k.a("read header done");
    }
    return paramInputStream;
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.library.b.a.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
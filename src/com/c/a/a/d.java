package com.c.a.a;

import java.io.ByteArrayOutputStream;
import java.io.IOException;

class d
{
  byte[] a;
  byte[] b;
  byte[] c;
  
  void a(byte[] paramArrayOfByte)
  {
    int i = 0;
    if (i < paramArrayOfByte.length)
    {
      int j = paramArrayOfByte[i];
      int k = paramArrayOfByte[(i + 1)] & 0xFF;
      i += 2;
      switch (j & 0xFF)
      {
      }
      for (;;)
      {
        i += k;
        break;
        if (k != 16) {
          throw new IOException("OBEX Digest Response error in tag request-digest");
        }
        a = new byte[16];
        System.arraycopy(paramArrayOfByte, i, a, 0, 16);
        continue;
        b = new byte[k];
        System.arraycopy(paramArrayOfByte, i, b, 0, b.length);
        continue;
        if (k != 16) {
          throw new IOException("OBEX Digest Response error in tag Nonce");
        }
        c = new byte[16];
        System.arraycopy(paramArrayOfByte, i, c, 0, 16);
      }
    }
  }
  
  byte[] a()
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    localByteArrayOutputStream.write(0);
    localByteArrayOutputStream.write(16);
    localByteArrayOutputStream.write(a, 0, 16);
    if (b != null)
    {
      localByteArrayOutputStream.write(1);
      localByteArrayOutputStream.write(b.length);
      localByteArrayOutputStream.write(b, 0, b.length);
    }
    localByteArrayOutputStream.write(2);
    localByteArrayOutputStream.write(16);
    localByteArrayOutputStream.write(c, 0, 16);
    return localByteArrayOutputStream.toByteArray();
  }
}

/* Location:
 * Qualified Name:     com.c.a.a.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
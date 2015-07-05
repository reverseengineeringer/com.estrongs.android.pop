package com.a.a;

import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

final class f
{
  public int a;
  public int b;
  public int c;
  public int d;
  public int e;
  public int f;
  public byte[] g;
  
  public static f a(InputStream paramInputStream)
  {
    int j = 0;
    f localf = new f();
    ByteBuffer localByteBuffer = ByteBuffer.allocate(24).order(ByteOrder.LITTLE_ENDIAN);
    int i = 0;
    int k;
    do
    {
      k = paramInputStream.read(localByteBuffer.array(), i, 24 - i);
      if (k < 0) {
        throw new IOException("Stream closed");
      }
      k = i + k;
      i = k;
    } while (k < 24);
    a = localByteBuffer.getInt();
    b = localByteBuffer.getInt();
    c = localByteBuffer.getInt();
    d = localByteBuffer.getInt();
    e = localByteBuffer.getInt();
    f = localByteBuffer.getInt();
    if (d != 0)
    {
      g = new byte[d];
      i = j;
      do
      {
        j = paramInputStream.read(g, i, d - i);
        if (j < 0) {
          throw new IOException("Stream closed");
        }
        j = i + j;
        i = j;
      } while (j < d);
    }
    return localf;
  }
}

/* Location:
 * Qualified Name:     com.a.a.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
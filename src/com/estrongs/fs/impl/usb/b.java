package com.estrongs.fs.impl.usb;

import com.estrongs.fs.impl.usb.fs.c;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

public class b
  extends InputStream
{
  private static final String a = b.class.getSimpleName();
  private c b = null;
  private long c = 0L;
  private long d = 0L;
  
  public b(c paramc, long paramLong)
  {
    b = paramc;
    c = b.f();
    d = paramLong;
  }
  
  public void close() {}
  
  public int read()
  {
    byte[] arrayOfByte = new byte[1];
    int j = read(arrayOfByte);
    int i = j;
    if (j > 0) {
      i = arrayOfByte[0];
    }
    return i;
  }
  
  public int read(byte[] paramArrayOfByte)
  {
    return read(paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (paramInt2 == 0) {
      return 0;
    }
    long l;
    try
    {
      if (d + paramInt2 <= c) {
        break label92;
      }
      l = c - d;
    }
    catch (Exception paramArrayOfByte)
    {
      paramArrayOfByte.printStackTrace();
      throw new IOException();
    }
    paramArrayOfByte = ByteBuffer.wrap(paramArrayOfByte, paramInt1, paramInt2);
    b.a(d, paramArrayOfByte);
    d += paramInt2;
    return paramInt2;
    for (;;)
    {
      paramInt2 = (int)l;
      if (paramInt2 > 0) {
        break;
      }
      return -1;
      label92:
      l = paramInt2;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.usb.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
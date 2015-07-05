package com.estrongs.fs.impl.usb;

import com.estrongs.fs.impl.usb.fs.c;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;

public class d
  extends OutputStream
{
  private c a = null;
  private long b = 0L;
  private long c = 0L;
  
  public d(c paramc, long paramLong)
  {
    a = paramc;
    b = paramLong;
    c = b;
  }
  
  public void close()
  {
    if (a != null) {
      a.close();
    }
  }
  
  public void write(int paramInt)
  {
    write(new byte[] { (byte)paramInt }, 0, 1);
  }
  
  public void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    try
    {
      paramArrayOfByte = ByteBuffer.wrap(paramArrayOfByte, paramInt1, paramInt2);
      a.b(b, paramArrayOfByte);
      b += paramInt2;
      if (b - c > 5242880L)
      {
        a.g();
        c = b;
      }
      return;
    }
    catch (Exception paramArrayOfByte)
    {
      paramArrayOfByte.printStackTrace();
      throw new IOException();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.usb.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
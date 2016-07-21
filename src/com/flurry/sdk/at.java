package com.flurry.sdk;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

public class at
  extends FilterInputStream
{
  private final long a;
  private long b;
  
  public at(InputStream paramInputStream, long paramLong)
  {
    super(paramInputStream);
    a = paramLong;
  }
  
  private int a(int paramInt)
  {
    b += paramInt;
    if (b > a) {
      throw new IOException("Size limit exceeded: " + a + " bytes, read " + b + " bytes!");
    }
    return paramInt;
  }
  
  public void close()
  {
    in = null;
  }
  
  public int read()
  {
    return a(super.read());
  }
  
  public int read(byte[] paramArrayOfByte)
  {
    return a(super.read(paramArrayOfByte));
  }
  
  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    return a(super.read(paramArrayOfByte, paramInt1, paramInt2));
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.at
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
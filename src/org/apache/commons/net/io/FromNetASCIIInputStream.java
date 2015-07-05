package org.apache.commons.net.io;

import java.io.IOException;
import java.io.InputStream;
import java.io.PushbackInputStream;

public final class FromNetASCIIInputStream
  extends PushbackInputStream
{
  static final String _lineSeparator = System.getProperty("line.separator");
  static final byte[] _lineSeparatorBytes = _lineSeparator.getBytes();
  static final boolean _noConversionRequired = _lineSeparator.equals("\r\n");
  private int __length = 0;
  
  public FromNetASCIIInputStream(InputStream paramInputStream)
  {
    super(paramInputStream, _lineSeparatorBytes.length + 1);
  }
  
  private int __read()
  {
    int j = super.read();
    int i = j;
    if (j == 13)
    {
      i = super.read();
      if (i == 10)
      {
        unread(_lineSeparatorBytes);
        i = super.read();
        __length -= 1;
      }
    }
    else
    {
      return i;
    }
    if (i != -1) {
      unread(i);
    }
    return 13;
  }
  
  public static final boolean isConversionRequired()
  {
    return !_noConversionRequired;
  }
  
  public int available()
  {
    if (in == null) {
      throw new IOException("Stream closed");
    }
    return buf.length - pos + in.available();
  }
  
  public int read()
  {
    if (_noConversionRequired) {
      return super.read();
    }
    return __read();
  }
  
  public int read(byte[] paramArrayOfByte)
  {
    return read(paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (_noConversionRequired) {
      return super.read(paramArrayOfByte, paramInt1, paramInt2);
    }
    if (paramInt2 < 1) {
      return 0;
    }
    int j = available();
    int i = paramInt2;
    if (paramInt2 > j) {
      i = j;
    }
    __length = i;
    if (__length < 1) {
      __length = 1;
    }
    paramInt2 = __read();
    if (paramInt2 == -1) {
      return -1;
    }
    for (i = paramInt1;; i = j)
    {
      j = i + 1;
      paramArrayOfByte[i] = ((byte)paramInt2);
      paramInt2 = __length - 1;
      __length = paramInt2;
      if (paramInt2 > 0)
      {
        paramInt2 = __read();
        if (paramInt2 != -1) {}
      }
      else
      {
        return j - paramInt1;
      }
    }
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.net.io.FromNetASCIIInputStream
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
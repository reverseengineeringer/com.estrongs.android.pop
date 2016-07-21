package com.dianxinos.library.b.a;

import java.io.FilterInputStream;
import java.io.InputStream;

class g
  extends FilterInputStream
{
  long a = 0L;
  long b = 0L;
  
  public g(InputStream paramInputStream, long paramLong)
  {
    super(paramInputStream);
    a = paramLong;
    b = 0L;
  }
  
  public boolean markSupported()
  {
    return false;
  }
  
  public int read()
  {
    if (a <= b) {
      return -1;
    }
    b += 1L;
    return in.read();
  }
  
  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (a <= b) {
      paramInt1 = -1;
    }
    for (;;)
    {
      return paramInt1;
      paramInt2 = (int)Math.min(paramInt2, a - b);
      try
      {
        paramInt2 = in.read(paramArrayOfByte, paramInt1, paramInt2);
        paramInt1 = paramInt2;
        if (paramInt2 <= 0) {
          continue;
        }
        b += paramInt2;
        return paramInt2;
      }
      finally {}
    }
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.library.b.a.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
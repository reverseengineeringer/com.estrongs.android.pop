package com.dianxinos.library.b.a;

import java.io.FilterInputStream;
import java.io.InputStream;
import java.util.zip.CRC32;

class e
  extends FilterInputStream
{
  final CRC32 a = new CRC32();
  int b = 0;
  
  public e(InputStream paramInputStream)
  {
    super(paramInputStream);
  }
  
  public long a()
  {
    return a.getValue();
  }
  
  public long b()
  {
    return b;
  }
  
  public void close() {}
  
  public void mark(int paramInt) {}
  
  public boolean markSupported()
  {
    return false;
  }
  
  public int read()
  {
    int i = in.read();
    a.update(i);
    b += 1;
    return i;
  }
  
  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    paramInt2 = in.read(paramArrayOfByte, paramInt1, paramInt2);
    if (paramInt2 > 0)
    {
      a.update(paramArrayOfByte, paramInt1, paramInt2);
      b += paramInt2;
    }
    return paramInt2;
  }
  
  public void reset() {}
  
  public long skip(long paramLong)
  {
    return 0L;
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.library.b.a.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
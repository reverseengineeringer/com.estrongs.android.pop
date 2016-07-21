package com.dianxinos.library.b.a;

import java.io.FilterOutputStream;
import java.io.OutputStream;
import java.util.zip.CRC32;

public class f
  extends FilterOutputStream
{
  final CRC32 a;
  int b;
  
  public void a()
  {
    try
    {
      super.flush();
      super.close();
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  public long b()
  {
    return a.getValue();
  }
  
  public long c()
  {
    return b;
  }
  
  public void close() {}
  
  public void write(int paramInt)
  {
    a.update(paramInt);
    b += 1;
    out.write(paramInt);
  }
  
  public void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (paramInt2 > 0)
    {
      a.update(paramArrayOfByte, paramInt1, paramInt2);
      b += paramInt2;
      out.write(paramArrayOfByte, paramInt1, paramInt2);
    }
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.library.b.a.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
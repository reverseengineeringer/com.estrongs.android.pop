package de.innosystec.unrar.b;

import java.io.InputStream;

public class d
  extends InputStream
{
  private a a;
  private long b;
  private final long c;
  private final long d;
  
  public d(a parama, long paramLong1, long paramLong2)
  {
    a = parama;
    c = paramLong1;
    b = paramLong1;
    d = paramLong2;
    parama.a(b);
  }
  
  public int read()
  {
    if (b == d) {
      return -1;
    }
    int i = a.read();
    b += 1L;
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
    if (b == d) {
      return -1;
    }
    paramInt1 = a.read(paramArrayOfByte, paramInt1, (int)Math.min(paramInt2, d - b));
    b += paramInt1;
    return paramInt1;
  }
}

/* Location:
 * Qualified Name:     de.innosystec.unrar.b.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
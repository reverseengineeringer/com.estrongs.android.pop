package de.a.a.a.a;

import java.io.File;
import java.io.RandomAccessFile;
import java.util.Arrays;

public class h
{
  protected RandomAccessFile a;
  
  public h(File paramFile)
  {
    a = new RandomAccessFile(paramFile, "r");
  }
  
  public int a(long paramLong)
  {
    a.seek(paramLong);
    return b();
  }
  
  public int a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    return a.read(paramArrayOfByte, paramInt1, paramInt2);
  }
  
  public long a(byte[] paramArrayOfByte)
  {
    long l1 = a.length() - 1L - paramArrayOfByte.length;
    long l2 = -1L;
    for (;;)
    {
      if ((l1 <= 3L) || (l2 != -1L)) {
        return l2;
      }
      if (Arrays.equals(paramArrayOfByte, a(l1, paramArrayOfByte.length))) {
        l2 = l1;
      }
      l1 -= 1L;
    }
  }
  
  public void a()
  {
    a.close();
  }
  
  public byte[] a(long paramLong, int paramInt)
  {
    byte[] arrayOfByte = new byte[paramInt];
    a.seek(paramLong);
    a.read(arrayOfByte, 0, paramInt);
    return arrayOfByte;
  }
  
  public int b()
  {
    byte[] arrayOfByte = new byte[4];
    a.read(arrayOfByte, 0, 4);
    return f.a(arrayOfByte);
  }
  
  public short b(long paramLong)
  {
    a.seek(paramLong);
    return c();
  }
  
  public byte c(long paramLong)
  {
    a.seek(paramLong);
    return d();
  }
  
  public short c()
  {
    byte[] arrayOfByte = new byte[2];
    a.read(arrayOfByte, 0, 2);
    return f.b(arrayOfByte);
  }
  
  public byte d()
  {
    byte[] arrayOfByte = new byte[1];
    a.read(arrayOfByte, 0, 1);
    return arrayOfByte[0];
  }
  
  public void d(long paramLong)
  {
    a.seek(paramLong);
  }
}

/* Location:
 * Qualified Name:     de.a.a.a.a.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
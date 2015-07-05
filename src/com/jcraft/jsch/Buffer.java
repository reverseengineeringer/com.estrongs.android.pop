package com.jcraft.jsch;

public class Buffer
{
  final byte[] a = new byte[4];
  byte[] b;
  int c;
  int d;
  
  public Buffer()
  {
    this(20480);
  }
  
  public Buffer(int paramInt)
  {
    b = new byte[paramInt];
    c = 0;
    d = 0;
  }
  
  public Buffer(byte[] paramArrayOfByte)
  {
    b = paramArrayOfByte;
    c = 0;
    d = 0;
  }
  
  static Buffer a(byte[][] paramArrayOfByte)
  {
    int k = 0;
    int j = paramArrayOfByte.length * 4;
    int i = 0;
    Buffer localBuffer;
    if (i >= paramArrayOfByte.length)
    {
      localBuffer = new Buffer(j);
      i = k;
    }
    for (;;)
    {
      if (i >= paramArrayOfByte.length)
      {
        return localBuffer;
        j += paramArrayOfByte[i].length;
        i += 1;
        break;
      }
      localBuffer.b(paramArrayOfByte[i]);
      i += 1;
    }
  }
  
  public int a()
  {
    return c - d;
  }
  
  public void a(byte paramByte)
  {
    byte[] arrayOfByte = b;
    int i = c;
    c = (i + 1);
    arrayOfByte[i] = paramByte;
  }
  
  public void a(int paramInt)
  {
    a[0] = ((byte)(paramInt >>> 24));
    a[1] = ((byte)(paramInt >>> 16));
    a[2] = ((byte)(paramInt >>> 8));
    a[3] = ((byte)paramInt);
    System.arraycopy(a, 0, b, c, 4);
    c += 4;
  }
  
  public void a(long paramLong)
  {
    a[0] = ((byte)(int)(paramLong >>> 56));
    a[1] = ((byte)(int)(paramLong >>> 48));
    a[2] = ((byte)(int)(paramLong >>> 40));
    a[3] = ((byte)(int)(paramLong >>> 32));
    System.arraycopy(a, 0, b, c, 4);
    a[0] = ((byte)(int)(paramLong >>> 24));
    a[1] = ((byte)(int)(paramLong >>> 16));
    a[2] = ((byte)(int)(paramLong >>> 8));
    a[3] = ((byte)(int)paramLong);
    System.arraycopy(a, 0, b, c + 4, 4);
    c += 8;
  }
  
  public void a(byte[] paramArrayOfByte)
  {
    a(paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
  public void a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    System.arraycopy(paramArrayOfByte, paramInt1, b, c, paramInt2);
    c += paramInt2;
  }
  
  byte[] a(int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    int i = d();
    paramArrayOfInt1[0] = d(i);
    paramArrayOfInt2[0] = i;
    return b;
  }
  
  byte[][] a(int paramInt, String paramString)
  {
    byte[][] arrayOfByte = new byte[paramInt][];
    int i = 0;
    for (;;)
    {
      if (i >= paramInt) {
        return arrayOfByte;
      }
      int j = d();
      if (a() < j) {
        throw new JSchException(paramString);
      }
      arrayOfByte[i] = new byte[j];
      d(arrayOfByte[i]);
      i += 1;
    }
  }
  
  public int b()
  {
    return d;
  }
  
  void b(int paramInt)
  {
    c += paramInt;
  }
  
  public void b(byte[] paramArrayOfByte)
  {
    b(paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
  public void b(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    a(paramInt2);
    a(paramArrayOfByte, paramInt1, paramInt2);
  }
  
  public long c()
  {
    return (d() & 0xFFFFFFFF) << 32 | d() & 0xFFFFFFFF;
  }
  
  public void c(int paramInt)
  {
    d = paramInt;
  }
  
  public void c(byte[] paramArrayOfByte)
  {
    int i = paramArrayOfByte.length;
    if ((paramArrayOfByte[0] & 0x80) != 0)
    {
      a(i + 1);
      a((byte)0);
    }
    for (;;)
    {
      a(paramArrayOfByte);
      return;
      a(i);
    }
  }
  
  void c(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    System.arraycopy(b, d, paramArrayOfByte, paramInt1, paramInt2);
    d += paramInt2;
  }
  
  public int d()
  {
    return f() << 16 & 0xFFFF0000 | f() & 0xFFFF;
  }
  
  public int d(int paramInt)
  {
    int i = d;
    d += paramInt;
    return i;
  }
  
  public void d(byte[] paramArrayOfByte)
  {
    c(paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
  public long e()
  {
    return (g() << 8 & 0xFF00 | g() & 0xFF) << 16 & 0xFFFFFFFFFFFF0000 | (g() << 8 & 0xFF00 | g() & 0xFF) & 0xFFFF;
  }
  
  void e(int paramInt)
  {
    paramInt = c + paramInt + 84;
    int i;
    if (b.length < paramInt)
    {
      i = b.length * 2;
      if (i >= paramInt) {
        break label56;
      }
    }
    for (;;)
    {
      byte[] arrayOfByte = new byte[paramInt];
      System.arraycopy(b, 0, arrayOfByte, 0, c);
      b = arrayOfByte;
      return;
      label56:
      paramInt = i;
    }
  }
  
  int f()
  {
    return g() << 8 & 0xFF00 | g() & 0xFF;
  }
  
  public int g()
  {
    byte[] arrayOfByte = b;
    int i = d;
    d = (i + 1);
    return arrayOfByte[i] & 0xFF;
  }
  
  public byte[] h()
  {
    int j = d();
    int i;
    if (j >= 0)
    {
      i = j;
      if (j <= 8192) {}
    }
    else
    {
      i = 8192;
    }
    byte[] arrayOfByte = new byte[i];
    c(arrayOfByte, 0, i);
    return arrayOfByte;
  }
  
  public byte[] i()
  {
    int i = (d() + 7) / 8;
    byte[] arrayOfByte1 = new byte[i];
    c(arrayOfByte1, 0, i);
    if ((arrayOfByte1[0] & 0x80) != 0)
    {
      byte[] arrayOfByte2 = new byte[arrayOfByte1.length + 1];
      arrayOfByte2[0] = 0;
      System.arraycopy(arrayOfByte1, 0, arrayOfByte2, 1, arrayOfByte1.length);
      return arrayOfByte2;
    }
    return arrayOfByte1;
  }
  
  public byte[] j()
  {
    int j = d();
    int i;
    if (j >= 0)
    {
      i = j;
      if (j <= 262144) {}
    }
    else
    {
      i = 262144;
    }
    byte[] arrayOfByte = new byte[i];
    c(arrayOfByte, 0, i);
    return arrayOfByte;
  }
  
  public void k()
  {
    c = 0;
    d = 0;
  }
  
  public void l()
  {
    if (d == 0) {
      return;
    }
    System.arraycopy(b, d, b, 0, c - d);
    c -= d;
    d = 0;
  }
  
  void m()
  {
    d = 0;
  }
  
  byte n()
  {
    return b[5];
  }
}

/* Location:
 * Qualified Name:     com.jcraft.jsch.Buffer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
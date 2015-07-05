package com.estrongs.fs.impl.usb.fs.a;

import com.estrongs.fs.impl.usb.fs.b.a;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.util.Calendar;

class f
{
  private ByteBuffer a;
  private a b;
  
  private f() {}
  
  private f(ByteBuffer paramByteBuffer)
  {
    a = paramByteBuffer;
    paramByteBuffer.order(ByteOrder.LITTLE_ENDIAN);
    b = a.a(paramByteBuffer);
    paramByteBuffer.clear();
  }
  
  static f a()
  {
    f localf = new f();
    a = ByteBuffer.allocate(32);
    long l = System.currentTimeMillis();
    localf.a(l);
    localf.b(l);
    localf.c(l);
    return localf;
  }
  
  static f a(String paramString)
  {
    f localf = new f();
    ByteBuffer localByteBuffer = ByteBuffer.allocate(32);
    localByteBuffer.order(ByteOrder.LITTLE_ENDIAN);
    System.arraycopy(paramString.getBytes(Charset.forName("ASCII")), 0, localByteBuffer.array(), 0, paramString.length());
    a = localByteBuffer;
    localf.a(8);
    return localf;
  }
  
  static f a(String paramString, int paramInt1, byte paramByte, int paramInt2, boolean paramBoolean)
  {
    f localf = new f();
    Object localObject = paramString;
    int i = paramInt1;
    if (paramBoolean)
    {
      int j = paramString.length() - paramInt1;
      localObject = paramString;
      i = paramInt1;
      if (j < 13)
      {
        localObject = new StringBuilder(13);
        ((StringBuilder)localObject).append(paramString, paramInt1, paramString.length());
        ((StringBuilder)localObject).append('\000');
        paramInt1 = 0;
        while (paramInt1 < 13 - j)
        {
          ((StringBuilder)localObject).append(65535);
          paramInt1 += 1;
        }
        localObject = ((StringBuilder)localObject).toString();
        i = 0;
      }
    }
    paramString = ByteBuffer.allocate(32);
    paramString.order(ByteOrder.LITTLE_ENDIAN);
    paramInt1 = paramInt2;
    if (paramBoolean) {
      paramInt1 = paramInt2 + 64;
    }
    paramString.put(0, (byte)paramInt1);
    paramString.putShort(1, (short)((String)localObject).charAt(i));
    paramString.putShort(3, (short)((String)localObject).charAt(i + 1));
    paramString.putShort(5, (short)((String)localObject).charAt(i + 2));
    paramString.putShort(7, (short)((String)localObject).charAt(i + 3));
    paramString.putShort(9, (short)((String)localObject).charAt(i + 4));
    paramString.put(11, (byte)15);
    paramString.put(12, (byte)0);
    paramString.put(13, paramByte);
    paramString.putShort(14, (short)((String)localObject).charAt(i + 5));
    paramString.putShort(16, (short)((String)localObject).charAt(i + 6));
    paramString.putShort(18, (short)((String)localObject).charAt(i + 7));
    paramString.putShort(20, (short)((String)localObject).charAt(i + 8));
    paramString.putShort(22, (short)((String)localObject).charAt(i + 9));
    paramString.putShort(24, (short)((String)localObject).charAt(i + 10));
    paramString.putShort(26, (short)0);
    paramString.putShort(28, (short)((String)localObject).charAt(i + 11));
    paramString.putShort(30, (short)((String)localObject).charAt(i + 12));
    a = paramString;
    return localf;
  }
  
  static f a(ByteBuffer paramByteBuffer)
  {
    byte[] arrayOfByte = new byte[32];
    if (paramByteBuffer.get(paramByteBuffer.position()) == 0) {
      return null;
    }
    paramByteBuffer.get(arrayOfByte);
    return new f(ByteBuffer.wrap(arrayOfByte));
  }
  
  private void a(int paramInt)
  {
    int i = r();
    a.put(11, (byte)(i | paramInt));
  }
  
  private void a(int paramInt1, int paramInt2)
  {
    a.put(paramInt1, (byte)(paramInt2 & 0xFF));
    a.put(paramInt1 + 1, (byte)(paramInt2 >>> 8 & 0xFF));
  }
  
  private void a(int paramInt, long paramLong)
  {
    a.put(paramInt, (byte)(int)(paramLong & 0xFF));
    a.put(paramInt + 1, (byte)(int)(paramLong >>> 8 & 0xFF));
    a.put(paramInt + 2, (byte)(int)(paramLong >>> 16 & 0xFF));
    a.put(paramInt + 3, (byte)(int)(paramLong >>> 24 & 0xFF));
  }
  
  private static long b(int paramInt1, int paramInt2)
  {
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.set(1, (paramInt1 >> 9) + 1980);
    localCalendar.set(2, (paramInt1 >> 5 & 0xF) - 1);
    localCalendar.set(5, paramInt1 & 0xF);
    localCalendar.set(11, paramInt2 >> 11);
    localCalendar.set(12, paramInt2 >> 5 & 0x3F);
    localCalendar.set(13, (paramInt2 & 0x1F) * 2);
    return localCalendar.getTimeInMillis();
  }
  
  private boolean b(int paramInt)
  {
    return (r() & paramInt) != 0;
  }
  
  private int c(int paramInt)
  {
    return a.get(paramInt) & 0xFF;
  }
  
  private int d(int paramInt)
  {
    return a.get(paramInt) & 0xFF | (a.get(paramInt + 1) & 0xFF) << 8;
  }
  
  private long e(int paramInt)
  {
    return a.get(paramInt) & 0xFF | (a.get(paramInt + 1) & 0xFF) << 8 | (a.get(paramInt + 2) & 0xFF) << 16 | (a.get(paramInt + 3) & 0xFF) << 24;
  }
  
  private static int f(long paramLong)
  {
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.setTimeInMillis(paramLong);
    int i = localCalendar.get(1);
    int j = localCalendar.get(2);
    return localCalendar.get(5) + ((i - 1980 << 9) + (j + 1 << 5));
  }
  
  private static int g(long paramLong)
  {
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.setTimeInMillis(paramLong);
    int i = localCalendar.get(11);
    int j = localCalendar.get(12);
    return localCalendar.get(13) / 2 + ((i << 11) + (j << 5));
  }
  
  private int r()
  {
    return a.get(11);
  }
  
  void a(long paramLong)
  {
    a(16, f(paramLong));
    a(14, g(paramLong));
  }
  
  void a(a parama)
  {
    b = parama;
    parama.b(a);
    a.clear();
  }
  
  void a(StringBuilder paramStringBuilder)
  {
    char[] arrayOfChar = new char[13];
    arrayOfChar[0] = ((char)a.getShort(1));
    arrayOfChar[1] = ((char)a.getShort(3));
    arrayOfChar[2] = ((char)a.getShort(5));
    arrayOfChar[3] = ((char)a.getShort(7));
    arrayOfChar[4] = ((char)a.getShort(9));
    arrayOfChar[5] = ((char)a.getShort(14));
    arrayOfChar[6] = ((char)a.getShort(16));
    arrayOfChar[7] = ((char)a.getShort(18));
    arrayOfChar[8] = ((char)a.getShort(20));
    arrayOfChar[9] = ((char)a.getShort(22));
    arrayOfChar[10] = ((char)a.getShort(24));
    arrayOfChar[11] = ((char)a.getShort(28));
    arrayOfChar[12] = ((char)a.getShort(30));
    int i = 0;
    while ((i < 13) && (arrayOfChar[i] != 0)) {
      i += 1;
    }
    paramStringBuilder.append(arrayOfChar, 0, i);
  }
  
  void b(long paramLong)
  {
    a(24, f(paramLong));
    a(22, g(paramLong));
  }
  
  void b(ByteBuffer paramByteBuffer)
  {
    paramByteBuffer.put(a.array());
  }
  
  boolean b()
  {
    return (g()) && (i()) && (h()) && (f());
  }
  
  void c(long paramLong)
  {
    a(18, f(paramLong));
  }
  
  boolean c()
  {
    return (r() & 0x18) == 16;
  }
  
  void d()
  {
    a(16);
  }
  
  void d(long paramLong)
  {
    a(20, (int)(paramLong >> 16 & 0xFFFF));
    a(26, (int)(paramLong & 0xFFFF));
  }
  
  void e(long paramLong)
  {
    a(28, paramLong);
  }
  
  boolean e()
  {
    if (b()) {}
    while ((r() & 0x18) != 8) {
      return false;
    }
    return true;
  }
  
  boolean f()
  {
    return b(4);
  }
  
  boolean g()
  {
    return b(2);
  }
  
  boolean h()
  {
    return b(1);
  }
  
  boolean i()
  {
    return b(8);
  }
  
  boolean j()
  {
    boolean bool = false;
    if (c(0) == 229) {
      bool = true;
    }
    return bool;
  }
  
  long k()
  {
    return b(d(16), d(14));
  }
  
  long l()
  {
    return b(d(24), d(22));
  }
  
  long m()
  {
    return b(d(18), 0);
  }
  
  public a n()
  {
    if (a.get(0) == 0) {
      return null;
    }
    return b;
  }
  
  String o()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    int i = 0;
    for (;;)
    {
      int j;
      if (i < 11)
      {
        j = a.get(i);
        if (j != 0) {}
      }
      else
      {
        return localStringBuilder.toString();
      }
      localStringBuilder.append((char)j);
      i += 1;
    }
  }
  
  long p()
  {
    return d(20) << 16 | d(26);
  }
  
  long q()
  {
    return e(28);
  }
  
  public String toString()
  {
    return "[FatDirectoryEntry shortName=" + b.a() + "]";
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.usb.fs.a.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
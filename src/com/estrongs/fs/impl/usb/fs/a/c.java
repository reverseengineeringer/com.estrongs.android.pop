package com.estrongs.fs.impl.usb.fs.a;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

class c
{
  private int a;
  private int b;
  private int c;
  private int d;
  private long e;
  private long f;
  private long g;
  private int h;
  private boolean i;
  private int j;
  private String k;
  
  static c a(ByteBuffer paramByteBuffer)
  {
    c localc = new c();
    paramByteBuffer.order(ByteOrder.LITTLE_ENDIAN);
    a = (paramByteBuffer.getShort(11) & 0xFFFF);
    b = (paramByteBuffer.get(13) & 0xFF);
    c = (paramByteBuffer.getShort(14) & 0xFFFF);
    d = (paramByteBuffer.get(16) & 0xFF);
    e = (paramByteBuffer.getInt(32) & 0xFFFFFFFF);
    f = (paramByteBuffer.getInt(36) & 0xFFFFFFFF);
    g = (paramByteBuffer.getInt(44) & 0xFFFFFFFF);
    h = (paramByteBuffer.getShort(48) & 0xFFFF);
    int m = paramByteBuffer.getShort(40) & 0xFFFF;
    boolean bool;
    StringBuilder localStringBuilder;
    if (((byte)m & 0x80) == 0)
    {
      bool = true;
      i = bool;
      j = ((byte)((byte)m & 0x7));
      localStringBuilder = new StringBuilder();
      m = 0;
    }
    for (;;)
    {
      int n;
      if (m < 11)
      {
        n = paramByteBuffer.get(m + 48);
        if (n != 0) {}
      }
      else
      {
        k = localStringBuilder.toString();
        if ((k == null) || (k.length() == 0) || ((k.length() == 1) && (k.charAt(0) == '\001'))) {
          k = "UsbStorage";
        }
        return localc;
        bool = false;
        break;
      }
      localStringBuilder.append((char)n);
      m += 1;
    }
  }
  
  int a()
  {
    return a;
  }
  
  long a(int paramInt)
  {
    return a() * (b() + paramInt * d());
  }
  
  int b()
  {
    return c;
  }
  
  int c()
  {
    return d;
  }
  
  long d()
  {
    return f;
  }
  
  long e()
  {
    return g;
  }
  
  int f()
  {
    return h;
  }
  
  boolean g()
  {
    return i;
  }
  
  int h()
  {
    return j;
  }
  
  int i()
  {
    return b * a;
  }
  
  long j()
  {
    return a() * d();
  }
  
  long k()
  {
    return a(0) + c() * d() * a();
  }
  
  String l()
  {
    return k;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.usb.fs.a.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
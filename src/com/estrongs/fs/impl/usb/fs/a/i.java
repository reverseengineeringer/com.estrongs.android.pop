package com.estrongs.fs.impl.usb.fs.a;

import com.estrongs.fs.impl.usb.driver.a;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

class i
{
  static int a = -1;
  private static int b = 0;
  private static int c = 484;
  private static int d = 508;
  private static int e = 488;
  private static int f = 492;
  private static int g = 1096897106;
  private static int h = 1631679090;
  private static int i = -1437270016;
  private static final String j = i.class.getSimpleName();
  private int k;
  private a l;
  private ByteBuffer m;
  
  private i(a parama, int paramInt)
  {
    l = parama;
    k = paramInt;
    m = ByteBuffer.allocate(512);
    m.order(ByteOrder.LITTLE_ENDIAN);
    parama.a(paramInt, m);
    m.clear();
    if ((m.getInt(b) != g) || (m.getInt(c) != h) || (m.getInt(d) != i)) {
      throw new IOException("invalid fs info structure!");
    }
  }
  
  static i a(a parama, int paramInt)
  {
    return new i(parama, paramInt);
  }
  
  long a()
  {
    return m.getInt(e);
  }
  
  void a(long paramLong)
  {
    m.putInt(e, (int)paramLong);
  }
  
  long b()
  {
    return m.getInt(f);
  }
  
  void b(long paramLong)
  {
    m.putInt(f, (int)paramLong);
  }
  
  void c()
  {
    l.b(k, m);
    m.clear();
  }
  
  void c(long paramLong)
  {
    long l1 = a();
    if (l1 != a) {
      a(l1 - paramLong);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.usb.fs.a.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
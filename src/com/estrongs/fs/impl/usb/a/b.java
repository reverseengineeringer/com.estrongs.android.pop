package com.estrongs.fs.impl.usb.a;

import android.util.Log;
import java.nio.ByteBuffer;

public class b
  implements com.estrongs.fs.impl.usb.driver.a
{
  private static final String a = b.class.getSimpleName();
  private static boolean b = false;
  private com.estrongs.fs.impl.usb.driver.a c;
  private int d;
  private int e;
  private com.estrongs.fs.impl.usb.fs.a f;
  
  public static b a(String paramString, d paramd, com.estrongs.fs.impl.usb.driver.a parama)
  {
    b localb = new b();
    d = paramd.b();
    c = parama;
    e = parama.b();
    f = com.estrongs.fs.impl.usb.fs.b.a(paramString, paramd, localb);
    return localb;
  }
  
  public void a() {}
  
  public void a(long paramLong, ByteBuffer paramByteBuffer)
  {
    long l2 = paramLong / e + d;
    long l1 = l2;
    if (paramLong % e != 0L)
    {
      if (b) {
        Log.w(a, "device offset not a multiple of block size");
      }
      ByteBuffer localByteBuffer = ByteBuffer.allocate(e);
      c.a(l2, localByteBuffer);
      localByteBuffer.clear();
      localByteBuffer.position((int)(paramLong % e));
      paramByteBuffer.put(localByteBuffer);
      l1 = l2 + 1L;
    }
    if (paramByteBuffer.remaining() > 0) {
      c.a(l1, paramByteBuffer);
    }
  }
  
  public int b()
  {
    return c.b();
  }
  
  public void b(long paramLong, ByteBuffer paramByteBuffer)
  {
    long l2 = paramLong / e + d;
    long l1 = l2;
    if (paramLong % e != 0L)
    {
      if (b) {
        Log.w(a, "device offset not a multiple of block size");
      }
      ByteBuffer localByteBuffer = ByteBuffer.allocate(e);
      c.a(l2, localByteBuffer);
      localByteBuffer.clear();
      localByteBuffer.position((int)(paramLong % e));
      int i = Math.min(localByteBuffer.remaining(), paramByteBuffer.remaining());
      localByteBuffer.put(paramByteBuffer.array(), paramByteBuffer.position(), i);
      paramByteBuffer.position(i + paramByteBuffer.position());
      localByteBuffer.clear();
      c.b(l2, localByteBuffer);
      l1 = l2 + 1L;
    }
    if (paramByteBuffer.remaining() > 0) {
      c.b(l1, paramByteBuffer);
    }
  }
  
  public com.estrongs.fs.impl.usb.fs.a c()
  {
    return f;
  }
  
  public String d()
  {
    return f.b();
  }
  
  public long e()
  {
    if (f == null) {
      return 0L;
    }
    return f.c();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.usb.a.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
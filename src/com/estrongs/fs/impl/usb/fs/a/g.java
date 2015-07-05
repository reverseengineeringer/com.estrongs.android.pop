package com.estrongs.fs.impl.usb.fs.a;

import java.io.IOException;
import java.nio.ByteBuffer;

public class g
  implements com.estrongs.fs.impl.usb.fs.c
{
  private com.estrongs.fs.impl.usb.driver.a a;
  private b b;
  private c c;
  private e d;
  private a e;
  private h f;
  private boolean g = false;
  
  private g(com.estrongs.fs.impl.usb.driver.a parama, b paramb, c paramc, h paramh, e parame)
  {
    a = parama;
    b = paramb;
    c = paramc;
    f = paramh;
    d = parame;
  }
  
  public static g a(h paramh, com.estrongs.fs.impl.usb.driver.a parama, b paramb, c paramc, e parame)
  {
    return new g(parama, paramb, paramc, paramh, parame);
  }
  
  private void m()
  {
    synchronized (b.a)
    {
      if (e == null) {
        e = new a(f.d(), a, b, c);
      }
      return;
    }
  }
  
  public void a(long paramLong)
  {
    synchronized (b.a)
    {
      e.a(paramLong);
      f.a(paramLong);
      return;
    }
  }
  
  public void a(long paramLong, ByteBuffer paramByteBuffer)
  {
    synchronized (b.a)
    {
      if (g) {
        throw new IOException("The file is deleted");
      }
    }
    m();
    f.e();
    e.a(paramLong, paramByteBuffer);
  }
  
  public void a(com.estrongs.fs.impl.usb.fs.c paramc) {}
  
  public void a(String paramString)
  {
    synchronized (b.a)
    {
      d.a(f, paramString);
      return;
    }
  }
  
  public boolean a()
  {
    return false;
  }
  
  public com.estrongs.fs.impl.usb.fs.c b(String paramString)
  {
    throw new UnsupportedOperationException("This is a file!");
  }
  
  public String b()
  {
    synchronized (b.a)
    {
      String str = f.b();
      return str;
    }
  }
  
  public void b(long paramLong, ByteBuffer paramByteBuffer)
  {
    synchronized (b.a)
    {
      if (g) {
        throw new IOException("The file is deleted");
      }
    }
    m();
    long l = paramByteBuffer.remaining() + paramLong;
    if (l > f()) {
      a(l);
    }
    f.f();
    e.b(paramLong, paramByteBuffer);
  }
  
  public void b(com.estrongs.fs.impl.usb.fs.c paramc)
  {
    synchronized (b.a)
    {
      d.a(f, paramc);
      d = ((e)paramc);
      return;
    }
  }
  
  public com.estrongs.fs.impl.usb.fs.c c()
  {
    synchronized (b.a)
    {
      e locale = d;
      return locale;
    }
  }
  
  public com.estrongs.fs.impl.usb.fs.c c(String paramString)
  {
    throw new UnsupportedOperationException("This is a file!");
  }
  
  public void close()
  {
    g();
  }
  
  public String[] d()
  {
    throw new UnsupportedOperationException("This is a file!");
  }
  
  public com.estrongs.fs.impl.usb.fs.c[] e()
  {
    throw new UnsupportedOperationException("This is a file!");
  }
  
  public long f()
  {
    synchronized (b.a)
    {
      long l = f.c();
      return l;
    }
  }
  
  public void g()
  {
    synchronized (b.a)
    {
      d.m();
      return;
    }
  }
  
  public void h()
  {
    synchronized (b.a)
    {
      m();
      d.a(f);
      d.m();
      e.a(0L);
      g = true;
      return;
    }
  }
  
  public long i()
  {
    if (f != null) {
      return f.j();
    }
    return 0L;
  }
  
  public long j()
  {
    if (f != null) {
      return f.k();
    }
    return 0L;
  }
  
  public boolean k()
  {
    if (f != null) {
      return f.l();
    }
    return false;
  }
  
  public boolean l()
  {
    if (f != null) {
      return f.m();
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.usb.fs.a.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
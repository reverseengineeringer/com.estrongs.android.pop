package com.estrongs.fs.impl.usb.fs;

import java.io.Closeable;
import java.nio.ByteBuffer;

public abstract interface c
  extends Closeable
{
  public abstract void a(long paramLong, ByteBuffer paramByteBuffer);
  
  public abstract void a(c paramc);
  
  public abstract void a(String paramString);
  
  public abstract boolean a();
  
  public abstract c b(String paramString);
  
  public abstract String b();
  
  public abstract void b(long paramLong, ByteBuffer paramByteBuffer);
  
  public abstract void b(c paramc);
  
  public abstract c c();
  
  public abstract c c(String paramString);
  
  public abstract void close();
  
  public abstract String[] d();
  
  public abstract c[] e();
  
  public abstract long f();
  
  public abstract void g();
  
  public abstract void h();
  
  public abstract long i();
  
  public abstract long j();
  
  public abstract boolean k();
  
  public abstract boolean l();
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.usb.fs.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
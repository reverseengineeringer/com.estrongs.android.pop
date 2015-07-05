package com.estrongs.fs.impl.usb.fs.ntfs;

import com.estrongs.fs.impl.usb.fs.ntfs.utils.a;
import java.io.IOException;
import java.nio.ByteBuffer;

public class x
  implements com.estrongs.fs.impl.usb.fs.c, j, k
{
  private n a;
  private y b;
  private com.estrongs.fs.impl.usb.fs.ntfs.b.c c;
  private com.estrongs.fs.impl.usb.fs.c d;
  
  public x(y paramy, com.estrongs.fs.impl.usb.fs.ntfs.b.c paramc)
  {
    b = paramy;
    c = paramc;
  }
  
  public x(y paramy, n paramn)
  {
    b = paramy;
    a = paramn;
  }
  
  public void a(long paramLong, ByteBuffer paramByteBuffer)
  {
    paramByteBuffer = a.a(paramByteBuffer);
    byte[] arrayOfByte = paramByteBuffer.a();
    m().a(paramLong, arrayOfByte, 0, arrayOfByte.length);
    paramByteBuffer.b();
  }
  
  public void a(com.estrongs.fs.impl.usb.fs.c paramc)
  {
    d = paramc;
  }
  
  public void a(String paramString)
  {
    throw new UnsupportedOperationException("unsupported operation");
  }
  
  public boolean a()
  {
    return false;
  }
  
  public com.estrongs.fs.impl.usb.fs.c b(String paramString)
  {
    throw new UnsupportedOperationException("unsupported operation");
  }
  
  public String b()
  {
    return m().i();
  }
  
  public void b(long paramLong, ByteBuffer paramByteBuffer)
  {
    throw new UnsupportedOperationException("unsupported operation");
  }
  
  public void b(com.estrongs.fs.impl.usb.fs.c paramc)
  {
    throw new UnsupportedOperationException("unsupported operation");
  }
  
  public com.estrongs.fs.impl.usb.fs.c c()
  {
    return d;
  }
  
  public com.estrongs.fs.impl.usb.fs.c c(String paramString)
  {
    throw new UnsupportedOperationException("unsupported operation");
  }
  
  public void close() {}
  
  public String[] d()
  {
    throw new UnsupportedOperationException("unsupported operation");
  }
  
  public com.estrongs.fs.impl.usb.fs.c[] e()
  {
    throw new UnsupportedOperationException("unsupported operation");
  }
  
  public long f()
  {
    if ((m().a(128, null).a() == null) && (c != null)) {
      return c.j();
    }
    return m().b(128, null);
  }
  
  public void g()
  {
    throw new UnsupportedOperationException("unsupported operation");
  }
  
  public void h()
  {
    throw new UnsupportedOperationException("unsupported operation");
  }
  
  public long i()
  {
    return m().j().b();
  }
  
  public long j()
  {
    return m().j().a();
  }
  
  public boolean k()
  {
    return StandardInformationAttribute.Flags.READ_ONLY.isSet(m().j().c());
  }
  
  public boolean l()
  {
    return StandardInformationAttribute.Flags.HIDDEN.isSet(m().j().c());
  }
  
  public n m()
  {
    if (a == null) {}
    try
    {
      a = c.k().r().c().a(c);
      return a;
    }
    catch (IOException localIOException)
    {
      for (;;)
      {
        localIOException.printStackTrace();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.usb.fs.ntfs.x
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.estrongs.fs.impl.usb.fs.a;

import com.estrongs.fs.impl.usb.UsbFsException;
import com.estrongs.fs.impl.usb.UsbFsException.ERROR_CODE;
import java.nio.ByteBuffer;

public class d
  implements com.estrongs.fs.impl.usb.fs.a
{
  private c a;
  private b b;
  private i c;
  private e d;
  private String e;
  
  public d(String paramString, com.estrongs.fs.impl.usb.driver.a parama, ByteBuffer paramByteBuffer)
  {
    ByteBuffer localByteBuffer = paramByteBuffer;
    if (paramByteBuffer == null)
    {
      localByteBuffer = ByteBuffer.allocate(512);
      parama.a(0L, localByteBuffer);
    }
    if (!a(localByteBuffer.array())) {
      throw new UsbFsException("unsupported partition type", UsbFsException.ERROR_CODE.USB_ERROR_TYPE_NOT_SUPPORTE);
    }
    a = c.a(localByteBuffer);
    c = i.a(parama, a.g() * a.a());
    b = new b(parama, a, c);
    d = e.a(parama, b, a);
    d.f(paramString);
    e = paramString;
  }
  
  public static boolean a(byte[] paramArrayOfByte)
  {
    return new String(paramArrayOfByte, 82, 5).equals("FAT32");
  }
  
  public com.estrongs.fs.impl.usb.fs.c a()
  {
    return d;
  }
  
  public String b()
  {
    String str2 = d.n();
    String str1 = str2;
    if (str2 == null) {
      str1 = a.m();
    }
    return str1;
  }
  
  public long c()
  {
    return c.a() * a.j();
  }
  
  public long d()
  {
    return a.d() * a.a();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.usb.fs.a.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
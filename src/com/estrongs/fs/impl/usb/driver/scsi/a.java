package com.estrongs.fs.impl.usb.driver.scsi;

import com.estrongs.android.util.l;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

public class a
{
  private static final String a = a.class.getSimpleName();
  private int b;
  private int c;
  private int d;
  private byte e;
  
  public static a a(ByteBuffer paramByteBuffer)
  {
    paramByteBuffer.order(ByteOrder.LITTLE_ENDIAN);
    a locala = new a();
    b = paramByteBuffer.getInt();
    if (b != 1396855637) {
      l.e(a, "unexpected dCSWSignature");
    }
    c = paramByteBuffer.getInt();
    d = paramByteBuffer.getInt();
    e = paramByteBuffer.get();
    return locala;
  }
  
  public int a()
  {
    return c;
  }
  
  public byte b()
  {
    return e;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.usb.driver.scsi.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
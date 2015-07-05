package com.estrongs.fs.impl.usb.driver.scsi;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

public class e
{
  private int a;
  private int b;
  
  public static e a(ByteBuffer paramByteBuffer)
  {
    paramByteBuffer.order(ByteOrder.BIG_ENDIAN);
    e locale = new e();
    a = paramByteBuffer.getInt();
    b = paramByteBuffer.getInt();
    return locale;
  }
  
  public int a()
  {
    return a;
  }
  
  public int b()
  {
    return b;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.usb.driver.scsi.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.estrongs.fs.impl.usb.a;

import java.nio.ByteBuffer;

public class e
{
  public static c a(com.estrongs.fs.impl.usb.driver.a parama)
  {
    ByteBuffer localByteBuffer = ByteBuffer.allocate(512);
    parama.a(0L, localByteBuffer);
    return a.a(localByteBuffer);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.usb.a.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
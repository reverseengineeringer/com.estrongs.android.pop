package com.estrongs.fs.impl.usb.fs.ntfs.utils;

import java.nio.ByteBuffer;

public class a
{
  public static c a(ByteBuffer paramByteBuffer)
  {
    return new c(paramByteBuffer, null);
  }
  
  public static byte[] b(ByteBuffer paramByteBuffer)
  {
    byte[] arrayOfByte = new byte[paramByteBuffer.remaining()];
    paramByteBuffer.get(arrayOfByte);
    return arrayOfByte;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.usb.fs.ntfs.utils.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
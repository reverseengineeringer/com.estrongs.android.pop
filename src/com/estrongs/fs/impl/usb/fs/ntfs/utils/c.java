package com.estrongs.fs.impl.usb.fs.ntfs.utils;

import java.nio.ByteBuffer;

public class c
{
  private ByteBuffer a;
  private int b;
  private int c;
  private byte[] d;
  
  private c(ByteBuffer paramByteBuffer)
  {
    a = paramByteBuffer;
    b = paramByteBuffer.position();
    c = paramByteBuffer.limit();
    d = a.b(paramByteBuffer);
  }
  
  public byte[] a()
  {
    return d;
  }
  
  public void b()
  {
    a.position(b);
    a.limit(c);
    a.put(d);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.usb.fs.ntfs.utils.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
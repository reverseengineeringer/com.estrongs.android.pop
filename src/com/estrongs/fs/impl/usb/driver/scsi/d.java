package com.estrongs.fs.impl.usb.driver.scsi;

import java.nio.ByteBuffer;

public class d
  extends CommandBlockWrapper
{
  public d()
  {
    super(8, CommandBlockWrapper.Direction.IN, (byte)0, (byte)16);
  }
  
  public void a(ByteBuffer paramByteBuffer)
  {
    super.a(paramByteBuffer);
    paramByteBuffer.put((byte)37);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.usb.driver.scsi.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
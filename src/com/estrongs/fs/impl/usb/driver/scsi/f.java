package com.estrongs.fs.impl.usb.driver.scsi;

import java.nio.ByteBuffer;

public class f
  extends CommandBlockWrapper
{
  public f()
  {
    super(0, CommandBlockWrapper.Direction.NONE, (byte)0, (byte)6);
  }
  
  public void a(ByteBuffer paramByteBuffer)
  {
    super.a(paramByteBuffer);
    paramByteBuffer.put((byte)0);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.usb.driver.scsi.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.estrongs.fs.impl.usb.driver.scsi;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

public abstract class CommandBlockWrapper
{
  private int a;
  private int b;
  private byte c;
  private byte d;
  private byte e;
  private CommandBlockWrapper.Direction f;
  
  protected CommandBlockWrapper(int paramInt, CommandBlockWrapper.Direction paramDirection, byte paramByte1, byte paramByte2)
  {
    b = paramInt;
    f = paramDirection;
    if (paramDirection == CommandBlockWrapper.Direction.IN) {
      c = Byte.MIN_VALUE;
    }
    d = paramByte1;
    e = paramByte2;
  }
  
  public int a()
  {
    return a;
  }
  
  public void a(ByteBuffer paramByteBuffer)
  {
    paramByteBuffer.order(ByteOrder.LITTLE_ENDIAN);
    paramByteBuffer.putInt(1128420181);
    paramByteBuffer.putInt(a);
    paramByteBuffer.putInt(b);
    paramByteBuffer.put(c);
    paramByteBuffer.put(d);
    paramByteBuffer.put(e);
  }
  
  public int b()
  {
    return b;
  }
  
  public CommandBlockWrapper.Direction c()
  {
    return f;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.usb.driver.scsi.CommandBlockWrapper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
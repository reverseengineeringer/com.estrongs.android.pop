package com.estrongs.fs.impl.usb.driver.scsi;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

public class g
  extends CommandBlockWrapper
{
  private int a;
  private int b;
  private int c;
  private short d;
  
  public g(int paramInt1, int paramInt2, int paramInt3)
  {
    super(paramInt2, CommandBlockWrapper.Direction.OUT, (byte)0, (byte)16);
    a = paramInt1;
    b = paramInt2;
    c = paramInt3;
    short s = (short)(paramInt2 / paramInt3);
    if (paramInt2 % paramInt3 != 0) {
      throw new IllegalArgumentException("transfer bytes is not a multiple of block size");
    }
    d = s;
  }
  
  public void a(ByteBuffer paramByteBuffer)
  {
    super.a(paramByteBuffer);
    paramByteBuffer.order(ByteOrder.BIG_ENDIAN);
    paramByteBuffer.put((byte)42);
    paramByteBuffer.put((byte)0);
    paramByteBuffer.putInt(a);
    paramByteBuffer.put((byte)0);
    paramByteBuffer.putShort(d);
  }
  
  public String toString()
  {
    return "ScsiWrite10 [blockAddress=" + a + ", transferBytes=" + b + ", blockSize=" + c + ", transferBlocks=" + d + ", getdCbwDataTransferLength()=" + b() + "]";
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.usb.driver.scsi.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
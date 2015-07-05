package com.jcraft.jsch;

import java.io.PipedInputStream;
import java.io.PipedOutputStream;

class Channel$PassiveOutputStream
  extends PipedOutputStream
{
  private Channel.MyPipedInputStream b = null;
  
  Channel$PassiveOutputStream(Channel paramChannel, PipedInputStream paramPipedInputStream, boolean paramBoolean)
  {
    super(paramPipedInputStream);
    if ((paramBoolean) && ((paramPipedInputStream instanceof Channel.MyPipedInputStream))) {
      b = ((Channel.MyPipedInputStream)paramPipedInputStream);
    }
  }
  
  public void write(int paramInt)
  {
    if (b != null) {
      b.a(1);
    }
    super.write(paramInt);
  }
  
  public void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (b != null) {
      b.a(paramInt2);
    }
    super.write(paramArrayOfByte, paramInt1, paramInt2);
  }
}

/* Location:
 * Qualified Name:     com.jcraft.jsch.Channel.PassiveOutputStream
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
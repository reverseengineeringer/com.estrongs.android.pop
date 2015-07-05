package com.jcraft.jsch;

import java.io.PipedOutputStream;

class Channel$PassiveInputStream
  extends Channel.MyPipedInputStream
{
  PipedOutputStream b;
  
  Channel$PassiveInputStream(Channel paramChannel, PipedOutputStream paramPipedOutputStream, int paramInt)
  {
    super(paramChannel, paramPipedOutputStream, paramInt);
    b = paramPipedOutputStream;
  }
  
  public void close()
  {
    if (b != null) {
      b.close();
    }
    b = null;
  }
}

/* Location:
 * Qualified Name:     com.jcraft.jsch.Channel.PassiveInputStream
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
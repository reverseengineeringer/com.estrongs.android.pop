package com.jcraft.jsch;

import java.io.InputStream;
import java.io.OutputStream;

public abstract interface ForwardedTCPIPDaemon
  extends Runnable
{
  public abstract void a(ChannelForwardedTCPIP paramChannelForwardedTCPIP, InputStream paramInputStream, OutputStream paramOutputStream);
  
  public abstract void a(Object[] paramArrayOfObject);
}

/* Location:
 * Qualified Name:     com.jcraft.jsch.ForwardedTCPIPDaemon
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
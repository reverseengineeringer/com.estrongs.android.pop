package com.jcraft.jsch;

import java.net.InetAddress;
import java.net.ServerSocket;

public abstract interface ServerSocketFactory
{
  public abstract ServerSocket a(int paramInt1, int paramInt2, InetAddress paramInetAddress);
}

/* Location:
 * Qualified Name:     com.jcraft.jsch.ServerSocketFactory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
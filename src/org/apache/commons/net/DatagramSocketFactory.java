package org.apache.commons.net;

import java.net.DatagramSocket;
import java.net.InetAddress;

public abstract interface DatagramSocketFactory
{
  public abstract DatagramSocket createDatagramSocket();
  
  public abstract DatagramSocket createDatagramSocket(int paramInt);
  
  public abstract DatagramSocket createDatagramSocket(int paramInt, InetAddress paramInetAddress);
}

/* Location:
 * Qualified Name:     org.apache.commons.net.DatagramSocketFactory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
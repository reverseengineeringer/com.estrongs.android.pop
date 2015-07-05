package org.apache.commons.net;

import java.net.DatagramSocket;
import java.net.InetAddress;

public class DefaultDatagramSocketFactory
  implements DatagramSocketFactory
{
  public DatagramSocket createDatagramSocket()
  {
    return new DatagramSocket();
  }
  
  public DatagramSocket createDatagramSocket(int paramInt)
  {
    return new DatagramSocket(paramInt);
  }
  
  public DatagramSocket createDatagramSocket(int paramInt, InetAddress paramInetAddress)
  {
    return new DatagramSocket(paramInt, paramInetAddress);
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.net.DefaultDatagramSocketFactory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
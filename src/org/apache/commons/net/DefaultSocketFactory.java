package org.apache.commons.net;

import java.net.InetAddress;
import java.net.ServerSocket;
import java.net.Socket;
import javax.net.SocketFactory;

public class DefaultSocketFactory
  extends SocketFactory
{
  public ServerSocket createServerSocket(int paramInt)
  {
    return new ServerSocket(paramInt);
  }
  
  public ServerSocket createServerSocket(int paramInt1, int paramInt2)
  {
    return new ServerSocket(paramInt1, paramInt2);
  }
  
  public ServerSocket createServerSocket(int paramInt1, int paramInt2, InetAddress paramInetAddress)
  {
    return new ServerSocket(paramInt1, paramInt2, paramInetAddress);
  }
  
  public Socket createSocket(String paramString, int paramInt)
  {
    return new Socket(paramString, paramInt);
  }
  
  public Socket createSocket(String paramString, int paramInt1, InetAddress paramInetAddress, int paramInt2)
  {
    return new Socket(paramString, paramInt1, paramInetAddress, paramInt2);
  }
  
  public Socket createSocket(InetAddress paramInetAddress, int paramInt)
  {
    return new Socket(paramInetAddress, paramInt);
  }
  
  public Socket createSocket(InetAddress paramInetAddress1, int paramInt1, InetAddress paramInetAddress2, int paramInt2)
  {
    return new Socket(paramInetAddress1, paramInt1, paramInetAddress2, paramInt2);
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.net.DefaultSocketFactory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
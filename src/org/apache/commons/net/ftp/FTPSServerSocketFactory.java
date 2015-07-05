package org.apache.commons.net.ftp;

import java.net.InetAddress;
import java.net.ServerSocket;
import javax.net.ServerSocketFactory;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLServerSocket;
import javax.net.ssl.SSLServerSocketFactory;

public class FTPSServerSocketFactory
  extends ServerSocketFactory
{
  private final SSLContext context;
  
  public FTPSServerSocketFactory(SSLContext paramSSLContext)
  {
    context = paramSSLContext;
  }
  
  public ServerSocket createServerSocket()
  {
    return init(context.getServerSocketFactory().createServerSocket());
  }
  
  public ServerSocket createServerSocket(int paramInt)
  {
    return init(context.getServerSocketFactory().createServerSocket(paramInt));
  }
  
  public ServerSocket createServerSocket(int paramInt1, int paramInt2)
  {
    return init(context.getServerSocketFactory().createServerSocket(paramInt1, paramInt2));
  }
  
  public ServerSocket createServerSocket(int paramInt1, int paramInt2, InetAddress paramInetAddress)
  {
    return init(context.getServerSocketFactory().createServerSocket(paramInt1, paramInt2, paramInetAddress));
  }
  
  public ServerSocket init(ServerSocket paramServerSocket)
  {
    ((SSLServerSocket)paramServerSocket).setUseClientMode(true);
    return paramServerSocket;
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.net.ftp.FTPSServerSocketFactory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package org.apache.commons.net.io;

import java.io.FilterInputStream;
import java.io.InputStream;
import java.net.Socket;

public class SocketInputStream
  extends FilterInputStream
{
  private final Socket __socket;
  
  public SocketInputStream(Socket paramSocket, InputStream paramInputStream)
  {
    super(paramInputStream);
    __socket = paramSocket;
  }
  
  public void close()
  {
    super.close();
    __socket.close();
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.net.io.SocketInputStream
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
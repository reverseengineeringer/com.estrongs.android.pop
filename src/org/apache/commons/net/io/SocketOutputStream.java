package org.apache.commons.net.io;

import java.io.FilterOutputStream;
import java.io.OutputStream;
import java.net.Socket;

public class SocketOutputStream
  extends FilterOutputStream
{
  private final Socket __socket;
  
  public SocketOutputStream(Socket paramSocket, OutputStream paramOutputStream)
  {
    super(paramOutputStream);
    __socket = paramSocket;
  }
  
  public void close()
  {
    super.close();
    __socket.close();
  }
  
  public void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    out.write(paramArrayOfByte, paramInt1, paramInt2);
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.net.io.SocketOutputStream
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
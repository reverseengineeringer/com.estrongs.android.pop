package jcifs.netbios;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetAddress;
import java.net.Socket;
import jcifs.Config;
import jcifs.util.LogStream;

public class NbtSocket
  extends Socket
{
  private static final int BUFFER_SIZE = 512;
  private static final int DEFAULT_SO_TIMEOUT = 5000;
  private static final int SSN_SRVC_PORT = 139;
  private static LogStream log = ;
  private NbtAddress address;
  private Name calledName;
  private int soTimeout;
  
  public NbtSocket() {}
  
  public NbtSocket(NbtAddress paramNbtAddress, int paramInt)
  {
    this(paramNbtAddress, paramInt, null, 0);
  }
  
  public NbtSocket(NbtAddress paramNbtAddress, int paramInt1, InetAddress paramInetAddress, int paramInt2)
  {
    this(paramNbtAddress, null, paramInt1, paramInetAddress, paramInt2);
  }
  
  public NbtSocket(NbtAddress paramNbtAddress, String paramString, int paramInt1, InetAddress paramInetAddress, int paramInt2)
  {
    super(localInetAddress, i, paramInetAddress, paramInt2);
    address = paramNbtAddress;
    if (paramString == null) {}
    for (calledName = hostName;; calledName = new Name(paramString, 32, null))
    {
      soTimeout = Config.getInt("jcifs.netbios.soTimeout", 5000);
      connect();
      return;
    }
  }
  
  private void connect()
  {
    byte[] arrayOfByte = new byte['Ȁ'];
    InputStream localInputStream;
    try
    {
      localInputStream = super.getInputStream();
      super.getOutputStream().write(arrayOfByte, 0, new SessionRequestPacket(calledName, localhosthostName).writeWireFormat(arrayOfByte, 0));
      setSoTimeout(soTimeout);
      i = SessionServicePacket.readPacketType(localInputStream, arrayOfByte, 0);
      switch (i)
      {
      default: 
        close();
        throw new NbtException(2, 0);
      }
    }
    catch (IOException localIOException)
    {
      close();
      throw localIOException;
    }
    LogStream localLogStream = log;
    if (LogStream.level > 2) {
      log.println("session established ok with " + address);
    }
    return;
    int i = localInputStream.read();
    close();
    throw new NbtException(2, i & 0xFF);
    throw new NbtException(2, -1);
  }
  
  public void close()
  {
    LogStream localLogStream = log;
    if (LogStream.level > 3) {
      log.println("close: " + this);
    }
    super.close();
  }
  
  public InputStream getInputStream()
  {
    return new SocketInputStream(super.getInputStream());
  }
  
  public InetAddress getLocalAddress()
  {
    return super.getLocalAddress();
  }
  
  public int getLocalPort()
  {
    return super.getLocalPort();
  }
  
  public NbtAddress getNbtAddress()
  {
    return address;
  }
  
  public OutputStream getOutputStream()
  {
    return new SocketOutputStream(super.getOutputStream());
  }
  
  public int getPort()
  {
    return super.getPort();
  }
  
  public String toString()
  {
    return "NbtSocket[addr=" + address + ",port=" + super.getPort() + ",localport=" + super.getLocalPort() + "]";
  }
}

/* Location:
 * Qualified Name:     jcifs.netbios.NbtSocket
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
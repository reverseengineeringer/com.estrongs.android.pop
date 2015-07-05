package org.apache.commons.net;

import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Socket;
import javax.net.ServerSocketFactory;
import javax.net.SocketFactory;

public abstract class SocketClient
{
  private static final int DEFAULT_CONNECT_TIMEOUT = 0;
  public static final String NETASCII_EOL = "\r\n";
  private static final ServerSocketFactory __DEFAULT_SERVER_SOCKET_FACTORY = ServerSocketFactory.getDefault();
  private static final SocketFactory __DEFAULT_SOCKET_FACTORY = ;
  private ProtocolCommandSupport __commandSupport;
  protected int _defaultPort_ = 0;
  protected InputStream _input_ = null;
  protected OutputStream _output_ = null;
  protected ServerSocketFactory _serverSocketFactory_ = __DEFAULT_SERVER_SOCKET_FACTORY;
  protected SocketFactory _socketFactory_ = __DEFAULT_SOCKET_FACTORY;
  protected Socket _socket_ = null;
  protected int _timeout_ = 0;
  protected int connectTimeout = 0;
  private int receiveBufferSize = -1;
  private int sendBufferSize = -1;
  
  private void closeQuietly(Closeable paramCloseable)
  {
    if (paramCloseable != null) {}
    try
    {
      paramCloseable.close();
      return;
    }
    catch (IOException paramCloseable) {}
  }
  
  private void closeQuietly(Socket paramSocket)
  {
    if (paramSocket != null) {}
    try
    {
      paramSocket.close();
      return;
    }
    catch (IOException paramSocket) {}
  }
  
  protected void _connectAction_()
  {
    _socket_.setSoTimeout(_timeout_);
    _input_ = _socket_.getInputStream();
    _output_ = _socket_.getOutputStream();
  }
  
  public void addProtocolCommandListener(ProtocolCommandListener paramProtocolCommandListener)
  {
    getCommandSupport().addProtocolCommandListener(paramProtocolCommandListener);
  }
  
  public void connect(String paramString)
  {
    connect(paramString, _defaultPort_);
  }
  
  public void connect(String paramString, int paramInt)
  {
    connect(InetAddress.getByName(paramString), paramInt);
  }
  
  public void connect(String paramString, int paramInt1, InetAddress paramInetAddress, int paramInt2)
  {
    connect(InetAddress.getByName(paramString), paramInt1, paramInetAddress, paramInt2);
  }
  
  public void connect(InetAddress paramInetAddress)
  {
    connect(paramInetAddress, _defaultPort_);
  }
  
  public void connect(InetAddress paramInetAddress, int paramInt)
  {
    _socket_ = _socketFactory_.createSocket();
    if (receiveBufferSize != -1) {
      _socket_.setReceiveBufferSize(receiveBufferSize);
    }
    if (sendBufferSize != -1) {
      _socket_.setSendBufferSize(sendBufferSize);
    }
    _socket_.connect(new InetSocketAddress(paramInetAddress, paramInt), connectTimeout);
    _connectAction_();
  }
  
  public void connect(InetAddress paramInetAddress1, int paramInt1, InetAddress paramInetAddress2, int paramInt2)
  {
    _socket_ = _socketFactory_.createSocket();
    if (receiveBufferSize != -1) {
      _socket_.setReceiveBufferSize(receiveBufferSize);
    }
    if (sendBufferSize != -1) {
      _socket_.setSendBufferSize(sendBufferSize);
    }
    _socket_.bind(new InetSocketAddress(paramInetAddress2, paramInt2));
    _socket_.connect(new InetSocketAddress(paramInetAddress1, paramInt1), connectTimeout);
    _connectAction_();
  }
  
  protected void createCommandSupport()
  {
    __commandSupport = new ProtocolCommandSupport(this);
  }
  
  public void disconnect()
  {
    closeQuietly(_socket_);
    closeQuietly(_input_);
    closeQuietly(_output_);
    _socket_ = null;
    _input_ = null;
    _output_ = null;
  }
  
  protected void fireCommandSent(String paramString1, String paramString2)
  {
    if (getCommandSupport().getListenerCount() > 0) {
      getCommandSupport().fireCommandSent(paramString1, paramString2);
    }
  }
  
  protected void fireReplyReceived(int paramInt, String paramString)
  {
    if (getCommandSupport().getListenerCount() > 0) {
      getCommandSupport().fireReplyReceived(paramInt, paramString);
    }
  }
  
  protected ProtocolCommandSupport getCommandSupport()
  {
    return __commandSupport;
  }
  
  public int getConnectTimeout()
  {
    return connectTimeout;
  }
  
  public int getDefaultPort()
  {
    return _defaultPort_;
  }
  
  public int getDefaultTimeout()
  {
    return _timeout_;
  }
  
  public boolean getKeepAlive()
  {
    return _socket_.getKeepAlive();
  }
  
  public InetAddress getLocalAddress()
  {
    return _socket_.getLocalAddress();
  }
  
  public int getLocalPort()
  {
    return _socket_.getLocalPort();
  }
  
  protected int getReceiveBufferSize()
  {
    return receiveBufferSize;
  }
  
  public InetAddress getRemoteAddress()
  {
    return _socket_.getInetAddress();
  }
  
  public int getRemotePort()
  {
    return _socket_.getPort();
  }
  
  protected int getSendBufferSize()
  {
    return sendBufferSize;
  }
  
  public ServerSocketFactory getServerSocketFactory()
  {
    return _serverSocketFactory_;
  }
  
  public int getSoLinger()
  {
    return _socket_.getSoLinger();
  }
  
  public int getSoTimeout()
  {
    return _socket_.getSoTimeout();
  }
  
  public boolean getTcpNoDelay()
  {
    return _socket_.getTcpNoDelay();
  }
  
  public boolean isAvailable()
  {
    if (isConnected()) {
      try
      {
        if (_socket_.getInetAddress() == null) {
          return false;
        }
        if ((_socket_.getPort() != 0) && (_socket_.getRemoteSocketAddress() != null) && (!_socket_.isClosed()) && (!_socket_.isInputShutdown()) && (!_socket_.isOutputShutdown()))
        {
          _socket_.getInputStream();
          _socket_.getOutputStream();
          return true;
        }
      }
      catch (IOException localIOException) {}
    }
    return false;
  }
  
  public boolean isConnected()
  {
    if (_socket_ == null) {
      return false;
    }
    return _socket_.isConnected();
  }
  
  public void removeProtocolCommandListener(ProtocolCommandListener paramProtocolCommandListener)
  {
    getCommandSupport().removeProtocolCommandListener(paramProtocolCommandListener);
  }
  
  public void setConnectTimeout(int paramInt)
  {
    connectTimeout = paramInt;
  }
  
  public void setDefaultPort(int paramInt)
  {
    _defaultPort_ = paramInt;
  }
  
  public void setDefaultTimeout(int paramInt)
  {
    _timeout_ = paramInt;
  }
  
  public void setKeepAlive(boolean paramBoolean)
  {
    _socket_.setKeepAlive(paramBoolean);
  }
  
  public void setReceiveBufferSize(int paramInt)
  {
    receiveBufferSize = paramInt;
  }
  
  public void setSendBufferSize(int paramInt)
  {
    sendBufferSize = paramInt;
  }
  
  public void setServerSocketFactory(ServerSocketFactory paramServerSocketFactory)
  {
    if (paramServerSocketFactory == null)
    {
      _serverSocketFactory_ = __DEFAULT_SERVER_SOCKET_FACTORY;
      return;
    }
    _serverSocketFactory_ = paramServerSocketFactory;
  }
  
  public void setSoLinger(boolean paramBoolean, int paramInt)
  {
    _socket_.setSoLinger(paramBoolean, paramInt);
  }
  
  public void setSoTimeout(int paramInt)
  {
    _socket_.setSoTimeout(paramInt);
  }
  
  public void setSocketFactory(SocketFactory paramSocketFactory)
  {
    if (paramSocketFactory == null)
    {
      _socketFactory_ = __DEFAULT_SOCKET_FACTORY;
      return;
    }
    _socketFactory_ = paramSocketFactory;
  }
  
  public void setTcpNoDelay(boolean paramBoolean)
  {
    _socket_.setTcpNoDelay(paramBoolean);
  }
  
  public boolean verifyRemote(Socket paramSocket)
  {
    return paramSocket.getInetAddress().equals(getRemoteAddress());
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.net.SocketClient
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package org.apache.commons.net;

import java.net.DatagramSocket;
import java.net.InetAddress;

public abstract class DatagramSocketClient
{
  private static final DatagramSocketFactory __DEFAULT_SOCKET_FACTORY = new DefaultDatagramSocketFactory();
  protected boolean _isOpen_ = false;
  protected DatagramSocketFactory _socketFactory_ = __DEFAULT_SOCKET_FACTORY;
  protected DatagramSocket _socket_ = null;
  protected int _timeout_ = 0;
  
  public void close()
  {
    if (_socket_ != null) {
      _socket_.close();
    }
    _socket_ = null;
    _isOpen_ = false;
  }
  
  public int getDefaultTimeout()
  {
    return _timeout_;
  }
  
  public InetAddress getLocalAddress()
  {
    return _socket_.getLocalAddress();
  }
  
  public int getLocalPort()
  {
    return _socket_.getLocalPort();
  }
  
  public int getSoTimeout()
  {
    return _socket_.getSoTimeout();
  }
  
  public boolean isOpen()
  {
    return _isOpen_;
  }
  
  public void open()
  {
    _socket_ = _socketFactory_.createDatagramSocket();
    _socket_.setSoTimeout(_timeout_);
    _isOpen_ = true;
  }
  
  public void open(int paramInt)
  {
    _socket_ = _socketFactory_.createDatagramSocket(paramInt);
    _socket_.setSoTimeout(_timeout_);
    _isOpen_ = true;
  }
  
  public void open(int paramInt, InetAddress paramInetAddress)
  {
    _socket_ = _socketFactory_.createDatagramSocket(paramInt, paramInetAddress);
    _socket_.setSoTimeout(_timeout_);
    _isOpen_ = true;
  }
  
  public void setDatagramSocketFactory(DatagramSocketFactory paramDatagramSocketFactory)
  {
    if (paramDatagramSocketFactory == null)
    {
      _socketFactory_ = __DEFAULT_SOCKET_FACTORY;
      return;
    }
    _socketFactory_ = paramDatagramSocketFactory;
  }
  
  public void setDefaultTimeout(int paramInt)
  {
    _timeout_ = paramInt;
  }
  
  public void setSoTimeout(int paramInt)
  {
    _socket_.setSoTimeout(paramInt);
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.net.DatagramSocketClient
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
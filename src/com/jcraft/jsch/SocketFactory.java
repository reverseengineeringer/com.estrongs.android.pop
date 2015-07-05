package com.jcraft.jsch;

import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;

public abstract interface SocketFactory
{
  public abstract InputStream a(Socket paramSocket);
  
  public abstract Socket a(String paramString, int paramInt);
  
  public abstract OutputStream b(Socket paramSocket);
}

/* Location:
 * Qualified Name:     com.jcraft.jsch.SocketFactory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
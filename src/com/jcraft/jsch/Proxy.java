package com.jcraft.jsch;

import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;

public abstract interface Proxy
{
  public abstract InputStream a();
  
  public abstract void a(SocketFactory paramSocketFactory, String paramString, int paramInt1, int paramInt2);
  
  public abstract OutputStream b();
  
  public abstract Socket c();
  
  public abstract void d();
}

/* Location:
 * Qualified Name:     com.jcraft.jsch.Proxy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
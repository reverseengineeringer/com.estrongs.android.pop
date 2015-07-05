package com.a.a;

import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.ConnectException;
import java.net.Socket;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;

public class b
  implements Closeable
{
  OutputStream a;
  private Socket b;
  private int c = 0;
  private InputStream d;
  private Thread e = c();
  private boolean f;
  private boolean g;
  private int h;
  private d i;
  private boolean j;
  private HashMap<Integer, g> k = new HashMap();
  
  public static b a(Socket paramSocket, d paramd)
  {
    b localb = new b();
    i = paramd;
    b = paramSocket;
    d = paramSocket.getInputStream();
    a = paramSocket.getOutputStream();
    paramSocket.setTcpNoDelay(true);
    return localb;
  }
  
  private Thread c()
  {
    return new Thread(new c(this, this));
  }
  
  private void d()
  {
    Iterator localIterator = k.values().iterator();
    while (localIterator.hasNext())
    {
      g localg = (g)localIterator.next();
      try
      {
        localg.close();
      }
      catch (IOException localIOException) {}
    }
    k.clear();
  }
  
  public g a(String paramString)
  {
    int m = c + 1;
    c = m;
    if (!f) {
      throw new IllegalStateException("connect() must be called first");
    }
    try
    {
      if (!g) {
        wait();
      }
      if (!g) {
        throw new IOException("Connection failed");
      }
    }
    finally {}
    g localg = new g(this, m);
    k.put(Integer.valueOf(m), localg);
    a.write(e.a(m, paramString));
    a.flush();
    try
    {
      localg.wait();
      if (localg.f()) {
        throw new ConnectException("Stream open actively rejected by remote peer");
      }
    }
    finally {}
    return localg;
  }
  
  public void a()
  {
    if (g) {
      throw new IllegalStateException("Already connected");
    }
    a.write(e.a());
    a.flush();
    f = true;
    e.start();
    try
    {
      if (!g) {
        wait();
      }
      if (!g) {
        throw new IOException("Connection failed");
      }
    }
    finally {}
  }
  
  public boolean b()
  {
    return f;
  }
  
  public void close()
  {
    if (e == null) {
      return;
    }
    b.close();
    e.interrupt();
    try
    {
      e.join();
      return;
    }
    catch (InterruptedException localInterruptedException) {}
  }
}

/* Location:
 * Qualified Name:     com.a.a.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
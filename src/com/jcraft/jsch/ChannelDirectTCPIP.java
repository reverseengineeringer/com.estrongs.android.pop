package com.jcraft.jsch;

import java.io.InputStream;
import java.io.OutputStream;

public class ChannelDirectTCPIP
  extends Channel
{
  private static final byte[] y = Util.b("direct-tcpip");
  String u;
  int v;
  String w = "127.0.0.1";
  int x = 0;
  
  ChannelDirectTCPIP()
  {
    d = y;
    c(131072);
    d(131072);
    e(16384);
  }
  
  public void a(InputStream paramInputStream)
  {
    j.a(paramInputStream);
  }
  
  public void a(OutputStream paramOutputStream)
  {
    j.a(paramOutputStream);
  }
  
  void b()
  {
    j = new IO();
  }
  
  public void b(int paramInt)
  {
    s = paramInt;
    try
    {
      Session localSession = j();
      if (!localSession.d()) {
        throw new JSchException("session is down");
      }
    }
    catch (Exception localException)
    {
      j.c();
      j = null;
      Channel.a(this);
      if ((localException instanceof JSchException))
      {
        throw ((JSchException)localException);
        if (j.a != null)
        {
          k = new Thread(this);
          k.setName("DirectTCPIP thread " + localException.g());
          if (j) {
            k.setDaemon(j);
          }
          k.start();
          return;
        }
        m();
      }
    }
  }
  
  public void b(String paramString)
  {
    u = paramString;
  }
  
  public void c(String paramString)
  {
    w = paramString;
  }
  
  public void i(int paramInt)
  {
    v = paramInt;
  }
  
  public void j(int paramInt)
  {
    x = paramInt;
  }
  
  protected Packet l()
  {
    Buffer localBuffer = new Buffer(u.length() + 50 + w.length() + 84);
    Packet localPacket = new Packet(localBuffer);
    localPacket.a();
    localBuffer.a((byte)90);
    localBuffer.b(d);
    localBuffer.a(b);
    localBuffer.a(f);
    localBuffer.a(g);
    localBuffer.b(Util.b(u));
    localBuffer.a(v);
    localBuffer.b(Util.b(w));
    localBuffer.a(x);
    return localPacket;
  }
  
  public void run()
  {
    for (;;)
    {
      Packet localPacket;
      Session localSession;
      int i;
      try
      {
        m();
        Buffer localBuffer = new Buffer(this.i);
        localPacket = new Packet(localBuffer);
        localSession = j();
        if ((i()) && (k != null) && (j != null))
        {
          InputStream localInputStream = j.a;
          if (localInputStream != null) {}
        }
        else
        {
          f();
          h();
          return;
        }
        i = j.a.read(b, 14, b.length - 14 - 84);
        if (i <= 0)
        {
          f();
          continue;
        }
        localPacket.a();
      }
      catch (Exception localException)
      {
        if (!o) {
          o = true;
        }
        h();
        return;
      }
      localException.a((byte)94);
      localException.a(c);
      localException.a(i);
      localException.b(i);
      try
      {
        if (n) {
          continue;
        }
      }
      finally {}
      localSession.a(localPacket, this, i);
    }
  }
}

/* Location:
 * Qualified Name:     com.jcraft.jsch.ChannelDirectTCPIP
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
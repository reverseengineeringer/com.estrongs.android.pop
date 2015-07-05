package com.jcraft.jsch;

import java.io.InputStream;
import java.io.OutputStream;
import java.io.PipedOutputStream;
import java.net.Socket;
import java.util.Vector;

public class ChannelForwardedTCPIP
  extends Channel
{
  private static Vector u = new Vector();
  private Socket v = null;
  private ForwardedTCPIPDaemon w = null;
  private ChannelForwardedTCPIP.Config x = null;
  
  ChannelForwardedTCPIP()
  {
    c(131072);
    d(131072);
    e(16384);
    j = new IO();
    o = true;
  }
  
  static void a(Session paramSession, int paramInt)
  {
    a(paramSession, null, paramInt);
  }
  
  static void a(Session paramSession, String paramString, int paramInt)
  {
    for (;;)
    {
      synchronized (u)
      {
        Object localObject2 = b(paramSession, b(paramString), paramInt);
        localObject1 = localObject2;
        if (localObject2 == null) {
          localObject1 = b(paramSession, null, paramInt);
        }
        if (localObject1 == null) {
          return;
        }
        u.removeElement(localObject1);
        if (paramString == null)
        {
          paramString = d;
          break label141;
          paramString = new Buffer(100);
          localObject2 = new Packet(paramString);
          try
          {
            ((Packet)localObject2).a();
            paramString.a((byte)80);
            paramString.b(Util.b("cancel-tcpip-forward"));
            paramString.a((byte)0);
            paramString.b(Util.b((String)localObject1));
            paramString.a(paramInt);
            paramSession.b((Packet)localObject2);
            return;
          }
          catch (Exception paramSession)
          {
            return;
          }
        }
      }
      label141:
      Object localObject1 = paramString;
      if (paramString == null) {
        localObject1 = "0.0.0.0";
      }
    }
  }
  
  static void a(Session paramSession, String arg1, int paramInt1, int paramInt2, String paramString2, int paramInt3, SocketFactory paramSocketFactory)
  {
    String str = b(???);
    synchronized (u)
    {
      if (b(paramSession, str, paramInt1) != null) {
        throw new JSchException("PortForwardingR: remote port " + paramInt1 + " is already registered.");
      }
    }
    ChannelForwardedTCPIP.ConfigLHost localConfigLHost = new ChannelForwardedTCPIP.ConfigLHost();
    a = paramSession;
    b = paramInt1;
    c = paramInt2;
    e = paramString2;
    f = paramInt3;
    d = str;
    g = paramSocketFactory;
    u.addElement(localConfigLHost);
  }
  
  private static ChannelForwardedTCPIP.Config b(Session paramSession, String paramString, int paramInt)
  {
    Vector localVector = u;
    int i = 0;
    for (;;)
    {
      try
      {
        if (i >= u.size()) {
          return null;
        }
        ChannelForwardedTCPIP.Config localConfig = (ChannelForwardedTCPIP.Config)u.elementAt(i);
        if ((a == paramSession) && ((b == paramInt) || ((b == 0) && (c == paramInt))) && ((paramString == null) || (d.equals(paramString)))) {
          return localConfig;
        }
      }
      finally {}
      i += 1;
    }
  }
  
  static String b(String paramString)
  {
    String str;
    if (paramString == null) {
      str = "localhost";
    }
    do
    {
      return str;
      if (paramString.length() == 0) {
        break;
      }
      str = paramString;
    } while (!paramString.equals("*"));
    return "";
  }
  
  static void c(Session paramSession)
  {
    for (;;)
    {
      int[] arrayOfInt;
      int j;
      int i;
      synchronized (u)
      {
        arrayOfInt = new int[u.size()];
        j = 0;
        i = 0;
        if (j >= u.size())
        {
          j = 0;
        }
        else
        {
          ChannelForwardedTCPIP.Config localConfig = (ChannelForwardedTCPIP.Config)u.elementAt(j);
          if (a == paramSession)
          {
            arrayOfInt[i] = b;
            i += 1;
          }
        }
      }
      do
      {
        a(paramSession, arrayOfInt[j]);
        j += 1;
        continue;
        break;
      } while (j < i);
      return;
      j += 1;
    }
  }
  
  void a(Buffer paramBuffer)
  {
    a(paramBuffer.d());
    a(paramBuffer.e());
    f(paramBuffer.d());
    byte[] arrayOfByte = paramBuffer.j();
    int i = paramBuffer.d();
    paramBuffer.j();
    paramBuffer.d();
    try
    {
      paramBuffer = j();
      x = b(paramBuffer, Util.b(arrayOfByte), i);
      if (x == null) {
        x = b(paramBuffer, null, i);
      }
      if ((x == null) && (JSch.d().a(3))) {
        JSch.d().a(3, "ChannelForwardedTCPIP: " + Util.b(arrayOfByte) + ":" + i + " is not registered.");
      }
      return;
    }
    catch (JSchException paramBuffer)
    {
      for (;;)
      {
        paramBuffer = null;
      }
    }
  }
  
  public void run()
  {
    for (;;)
    {
      Object localObject3;
      Session localSession;
      try
      {
        if ((x instanceof ChannelForwardedTCPIP.ConfigDaemon))
        {
          localObject1 = (ChannelForwardedTCPIP.ConfigDaemon)x;
          w = ((ForwardedTCPIPDaemon)Class.forName(e).newInstance());
          localObject3 = new PipedOutputStream();
          j.a(new Channel.PassiveInputStream(this, (PipedOutputStream)localObject3, 32768), false);
          w.a(this, d(), (OutputStream)localObject3);
          w.a(f);
          new Thread(w).start();
          k();
          k = Thread.currentThread();
          localObject1 = new Buffer(this.i);
          localObject3 = new Packet((Buffer)localObject1);
        }
      }
      catch (Exception localException1)
      {
        Object localObject1;
        h(1);
        n = true;
        h();
        return;
      }
      try
      {
        localSession = j();
        if ((k != null) && (j != null))
        {
          InputStream localInputStream = j.a;
          if (localInputStream != null) {
            break label286;
          }
        }
      }
      catch (Exception localException2)
      {
        Socket localSocket;
        label286:
        int i;
        continue;
      }
      h();
      return;
      localObject1 = (ChannelForwardedTCPIP.ConfigLHost)x;
      if (g == null)
      {
        localObject1 = Util.a(e, f, 10000);
        v = ((Socket)localObject1);
        v.setTcpNoDelay(true);
        j.a(v.getInputStream());
        j.a(v.getOutputStream());
      }
      else
      {
        localSocket = g.a(e, f);
        continue;
        i = j.a.read(b, 14, b.length - 14 - 84);
        if (i <= 0)
        {
          f();
        }
        else
        {
          ((Packet)localObject3).a();
          localSocket.a((byte)94);
          localSocket.a(c);
          localSocket.a(i);
          localSocket.b(i);
          try
          {
            if (n) {
              continue;
            }
          }
          finally {}
          localSession.a((Packet)localObject3, this, i);
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.jcraft.jsch.ChannelForwardedTCPIP
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
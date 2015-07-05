package com.jcraft.jsch;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;

public class ProxyHTTP
  implements Proxy
{
  private static int a = 80;
  private String b;
  private int c;
  private InputStream d;
  private OutputStream e;
  private Socket f;
  private String g;
  private String h;
  
  public InputStream a()
  {
    return d;
  }
  
  public void a(SocketFactory paramSocketFactory, String paramString, int paramInt1, int paramInt2)
  {
    if (paramSocketFactory == null) {}
    for (;;)
    {
      try
      {
        f = Util.a(b, c, paramInt2);
        d = f.getInputStream();
        e = f.getOutputStream();
        if (paramInt2 > 0) {
          f.setSoTimeout(paramInt2);
        }
        f.setTcpNoDelay(true);
        e.write(Util.b("CONNECT " + paramString + ":" + paramInt1 + " HTTP/1.0\r\n"));
        if ((g != null) && (h != null))
        {
          paramSocketFactory = Util.b(g + ":" + h);
          paramSocketFactory = Util.b(paramSocketFactory, 0, paramSocketFactory.length);
          e.write(Util.b("Proxy-Authorization: Basic "));
          e.write(paramSocketFactory);
          e.write(Util.b("\r\n"));
        }
        e.write(Util.b("\r\n"));
        e.flush();
        paramSocketFactory = new StringBuffer();
        paramInt1 = 0;
        break label584;
        if (paramInt2 < 0) {
          throw new IOException();
        }
      }
      catch (RuntimeException paramSocketFactory)
      {
        throw paramSocketFactory;
        f = paramSocketFactory.a(b, c);
        d = paramSocketFactory.a(f);
        e = paramSocketFactory.b(f);
        continue;
      }
      catch (Exception paramSocketFactory) {}
      label584:
      do
      {
        try
        {
          if (f != null) {
            f.close();
          }
          paramString = "ProxyHTTP: " + paramSocketFactory.toString();
          int j;
          if ((paramSocketFactory instanceof Throwable))
          {
            throw new JSchException(paramString, paramSocketFactory);
            paramInt1 = d.read();
            if (paramInt1 != 13)
            {
              paramSocketFactory.append((char)paramInt1);
              continue;
            }
            paramInt1 = d.read();
            paramInt2 = paramInt1;
            if (paramInt1 == 10) {
              break;
            }
            continue;
            paramString = paramSocketFactory.toString();
            paramSocketFactory = "Unknow reason";
            j = -1;
            paramInt1 = j;
          }
          try
          {
            i = paramString.indexOf(' ');
            paramInt1 = j;
            paramInt2 = i;
            int k = paramString.indexOf(' ', i + 1);
            paramInt1 = j;
            paramInt2 = i;
            j = Integer.parseInt(paramString.substring(i + 1, k));
            paramInt1 = j;
            paramInt2 = i;
            paramString = paramString.substring(k + 1);
            paramSocketFactory = paramString;
            paramInt1 = i;
            paramInt2 = j;
          }
          catch (Exception paramString)
          {
            for (;;)
            {
              int i = paramInt1;
              paramInt1 = paramInt2;
              paramInt2 = i;
              continue;
              i = 0;
              if (paramInt1 >= 0) {}
            }
          }
          if (paramInt2 == 200) {
            break label608;
          }
          throw new IOException("proxy error: " + paramSocketFactory);
          while (paramInt1 < 0)
          {
            throw new IOException();
            paramInt1 = d.read();
            if (paramInt1 != 13)
            {
              i += 1;
              break label611;
            }
            paramInt2 = d.read();
            paramInt1 = paramInt2;
            if (paramInt2 != 10)
            {
              paramInt1 = paramInt2;
              break label611;
            }
          }
          if (i != 0) {
            break label608;
          }
          return;
          throw new JSchException(paramString);
        }
        catch (Exception paramString)
        {
          for (;;) {}
        }
      } while (paramInt1 >= 0);
      paramInt2 = paramInt1;
    }
  }
  
  public OutputStream b()
  {
    return e;
  }
  
  public Socket c()
  {
    return f;
  }
  
  public void d()
  {
    try
    {
      if (d != null) {
        d.close();
      }
      if (e != null) {
        e.close();
      }
      if (f != null) {
        f.close();
      }
    }
    catch (Exception localException)
    {
      for (;;) {}
    }
    d = null;
    e = null;
    f = null;
  }
}

/* Location:
 * Qualified Name:     com.jcraft.jsch.ProxyHTTP
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
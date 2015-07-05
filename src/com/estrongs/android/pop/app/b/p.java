package com.estrongs.android.pop.app.b;

import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.NoRouteToHostException;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Observable;

public class p
  extends Observable
  implements Runnable
{
  private final InetAddress a;
  private String b = null;
  private int c = 1;
  private int d = 1;
  private ArrayList<f> e = null;
  
  public p(InetAddress paramInetAddress, ArrayList<f> paramArrayList)
  {
    a = paramInetAddress;
    e = paramArrayList;
  }
  
  private int a(int paramInt)
  {
    int i = 1;
    try
    {
      Socket localSocket = new Socket();
      localSocket.connect(new InetSocketAddress(a.getHostAddress(), paramInt), 2000);
      localSocket.close();
      i = 0;
    }
    catch (NoRouteToHostException localNoRouteToHostException)
    {
      throw localNoRouteToHostException;
    }
    catch (IOException localIOException)
    {
      for (;;)
      {
        if (!(localIOException instanceof SocketTimeoutException)) {
          break label83;
        }
        if (c >= 1) {
          break label81;
        }
        c += 1;
        try
        {
          Thread.sleep(500L);
          return a(paramInt);
          label81:
          return 2;
          label83:
          if (d >= 1) {
            continue;
          }
          d += 1;
        }
        catch (Exception localException1)
        {
          try
          {
            Thread.sleep(500L);
            return a(paramInt);
            localException1 = localException1;
          }
          catch (Exception localException2)
          {
            for (;;) {}
          }
        }
      }
    }
    catch (Throwable localThrowable) {}
    return i;
    return 1;
  }
  
  private void a(f paramf)
  {
    String str = a.getHostAddress();
    int[] arrayOfInt = h;
    if (arrayOfInt == null)
    {
      paramf = new o(str, a.getHostAddress(), paramf, -1, 2);
      setChanged();
      notifyObservers(paramf);
      return;
    }
    int j = arrayOfInt.length;
    int i = 0;
    int k;
    if (i < j)
    {
      k = arrayOfInt[i];
      c = 1;
      d = 1;
      if (a(k) == 0) {
        if (b == null)
        {
          str = a.getHostName();
          b = str;
          label108:
          if (!str.equalsIgnoreCase("localhost")) {
            break label204;
          }
          str = a.getHostAddress();
        }
      }
    }
    label204:
    for (;;)
    {
      paramf = new o(str, a.getHostAddress(), paramf, k, 0);
      setChanged();
      notifyObservers(paramf);
      return;
      str = b;
      break label108;
      i += 1;
      break;
      paramf = new o(str, a.getHostAddress(), paramf, -1, 1);
      setChanged();
      notifyObservers(paramf);
      return;
    }
  }
  
  public void run()
  {
    if ((e == null) || (e.size() == 0)) {}
    for (;;)
    {
      return;
      try
      {
        Iterator localIterator = e.iterator();
        while (localIterator.hasNext()) {
          a((f)localIterator.next());
        }
        return;
      }
      catch (NoRouteToHostException localNoRouteToHostException)
      {
        setChanged();
        notifyObservers();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.b.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
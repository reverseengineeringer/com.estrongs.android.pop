package com.estrongs.android.pop.zeroconf;

import java.net.DatagramPacket;
import java.net.MulticastSocket;
import java.net.SocketException;

class x
  extends Thread
{
  x(w paramw) {}
  
  public void run()
  {
    try
    {
      byte[] arrayOfByte = new byte['⌌'];
      DatagramPacket localDatagramPacket = new DatagramPacket(arrayOfByte, arrayOfByte.length);
      for (;;)
      {
        Object localObject;
        if (w.a(a) != null)
        {
          localDatagramPacket.setLength(arrayOfByte.length);
          w.b(a).receive(localDatagramPacket);
          localObject = w.a(a);
          if (localObject != null) {}
        }
        else
        {
          return;
        }
        try
        {
          if (!a.a(localDatagramPacket))
          {
            localObject = new a(localDatagramPacket);
            if (!((a)localObject).n()) {
              break;
            }
            w.a(a, (d)localObject);
          }
        }
        catch (Throwable localThrowable2)
        {
          localThrowable2.printStackTrace();
        }
      }
    }
    catch (SocketException localSocketException)
    {
      for (;;)
      {
        return;
        if (localThrowable2.m()) {
          w.b(a, localThrowable2);
        }
      }
    }
    catch (Throwable localThrowable1)
    {
      localThrowable1.printStackTrace();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.zeroconf.x
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
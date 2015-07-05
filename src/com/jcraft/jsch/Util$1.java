package com.jcraft.jsch;

import java.net.Socket;

class Util$1
  implements Runnable
{
  Util$1(Socket[] paramArrayOfSocket, String paramString, int paramInt, Exception[] paramArrayOfException) {}
  
  public void run()
  {
    a[0] = null;
    try
    {
      a[0] = new Socket(b, c);
      return;
    }
    catch (Exception localException1)
    {
      d[0] = localException1;
      if ((a[0] == null) || (!a[0].isConnected())) {}
    }
    try
    {
      a[0].close();
      a[0] = null;
      return;
    }
    catch (Exception localException2)
    {
      for (;;) {}
    }
  }
}

/* Location:
 * Qualified Name:     com.jcraft.jsch.Util.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
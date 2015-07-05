package com.estrongs.android.c;

import java.io.IOException;
import java.net.ServerSocket;

class i
  implements Runnable
{
  i(h paramh) {}
  
  public void run()
  {
    try
    {
      while (!h.a(a)) {
        new j(a, h.b(a).accept());
      }
      return;
    }
    catch (IOException localIOException) {}
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.c.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
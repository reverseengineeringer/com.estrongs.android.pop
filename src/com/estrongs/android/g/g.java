package com.estrongs.android.g;

import java.io.IOException;
import java.net.ServerSocket;

class g
  implements Runnable
{
  g(f paramf) {}
  
  public void run()
  {
    try
    {
      while (!f.a(a)) {
        new h(a, f.b(a).accept());
      }
      return;
    }
    catch (IOException localIOException) {}
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.g.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
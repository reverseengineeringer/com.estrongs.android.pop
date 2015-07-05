package com.estrongs.fs.a;

import java.util.List;

public class c
  implements Runnable
{
  public c(b paramb) {}
  
  public void run()
  {
    while (!b.a(a)) {
      if (b.b(a) >= 10000)
      {
        synchronized (b.c(a))
        {
          if ((b.b(a) >= 5000) && (b.d(a).size() > 0))
          {
            String str = (String)b.d(a).get(0);
            a.a(str, false, null);
          }
        }
        Thread.yield();
      }
      else
      {
        try
        {
          Thread.currentThread();
          Thread.sleep(10000L);
        }
        catch (InterruptedException localInterruptedException)
        {
          localInterruptedException.printStackTrace();
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.a.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
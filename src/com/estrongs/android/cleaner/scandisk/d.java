package com.estrongs.android.cleaner.scandisk;

import com.estrongs.android.cleaner.j;
import com.estrongs.android.util.l;
import java.util.Map;
import java.util.concurrent.BlockingQueue;

class d
  implements Runnable
{
  d(c paramc) {}
  
  public void run()
  {
    while (c.a(a)) {
      try
      {
        String str = (String)c.b(a).take();
        g localg = (g)c.c(a).get(str);
        boolean bool = j.a(str);
        c.a(a, str, bool, localg);
        h localh = new h();
        c = 1;
        b = str;
        localg.a(localh);
      }
      catch (InterruptedException localInterruptedException)
      {
        c.a(a, false);
        l.b(c.e(), "exit the task!");
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.cleaner.scandisk.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
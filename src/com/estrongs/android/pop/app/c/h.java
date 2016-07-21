package com.estrongs.android.pop.app.c;

import java.util.ArrayList;
import java.util.Map;

class h
  implements Runnable
{
  private h(e parame) {}
  
  public void run()
  {
    for (;;)
    {
      synchronized (e.a(a))
      {
        if (e.b(a)) {
          return;
        }
        if (!e.a(a).isEmpty())
        {
          a.a = ((g)e.a(a).remove(0));
          ??? = a.a.b;
          if (!a.a(a.a)) {}
        }
      }
      try
      {
        ((i)???).d();
        a.b(a.a);
        e.c(a).remove(???);
        a.a = null;
      }
      catch (Exception localException)
      {
        try
        {
          e.a(a).wait();
          continue;
          localObject2 = finally;
          throw ((Throwable)localObject2);
          localException = localException;
          localException.printStackTrace();
        }
        catch (InterruptedException localInterruptedException)
        {
          for (;;) {}
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.c.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
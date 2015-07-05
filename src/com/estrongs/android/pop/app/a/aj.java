package com.estrongs.android.pop.app.a;

import java.util.ArrayList;
import java.util.Map;

class aj
  implements Runnable
{
  private aj(ag paramag) {}
  
  public void run()
  {
    for (;;)
    {
      synchronized (ag.a(a))
      {
        if (ag.b(a)) {
          return;
        }
        if (!ag.a(a).isEmpty())
        {
          a.a = ((ai)ag.a(a).remove(0));
          ??? = a.a.b;
          if (!a.a(a.a)) {}
        }
      }
      try
      {
        ((ak)???).d();
        a.b(a.a);
        ag.c(a).remove(???);
        a.a = null;
      }
      catch (Exception localException)
      {
        try
        {
          ag.a(a).wait();
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
 * Qualified Name:     com.estrongs.android.pop.app.a.aj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
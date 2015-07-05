package com.estrongs.a;

import com.estrongs.a.a.o;
import java.util.Iterator;
import java.util.List;

class b
  extends Thread
{
  b(a parama) {}
  
  public void run()
  {
    if (access$000a).a != 1) {
      a.executeHelper();
    }
    for (;;)
    {
      a.access$202(a, null);
      return;
      synchronized (a.access$100(a))
      {
        Iterator localIterator = a.access$100(a).iterator();
        while (localIterator.hasNext())
        {
          o localo = (o)localIterator.next();
          try
          {
            localo.a(a, true);
          }
          catch (Exception localException) {}
        }
        a.access$100(a).clear();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.a.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
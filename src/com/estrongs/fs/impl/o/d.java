package com.estrongs.fs.impl.o;

import java.util.List;

class d
  implements Runnable
{
  d(a parama, List paramList) {}
  
  public void run()
  {
    for (;;)
    {
      int i;
      synchronized (a.b(b))
      {
        List localList = b.g();
        i = 0;
        if (i < a.size())
        {
          if (!localList.contains(a.get(i))) {
            localList.add(a.get(i));
          }
        }
        else
        {
          b.c(localList);
          return;
        }
      }
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.o.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
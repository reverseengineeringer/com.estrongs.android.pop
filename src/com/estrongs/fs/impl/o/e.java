package com.estrongs.fs.impl.o;

import java.util.List;

class e
  implements Runnable
{
  e(a parama, String paramString1, String paramString2) {}
  
  public void run()
  {
    synchronized (a.b(c))
    {
      List localList = c.g();
      int i = localList.indexOf(a);
      if (i >= 0)
      {
        localList.remove(i);
        localList.add(i, b);
        c.c(localList);
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.o.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
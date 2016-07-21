package com.estrongs.fs.impl.t;

import java.util.List;

class c
  implements Runnable
{
  c(a parama, List paramList) {}
  
  public void run()
  {
    synchronized (a.b(b))
    {
      List localList = b.f();
      localList.removeAll(a);
      b.c(localList);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.t.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
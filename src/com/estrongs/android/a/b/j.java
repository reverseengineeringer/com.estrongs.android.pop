package com.estrongs.android.a.b;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.ConcurrentLinkedQueue;

class j
  implements Runnable
{
  j(i parami, ArrayList paramArrayList) {}
  
  public void run()
  {
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext())
    {
      Object localObject = (q)localIterator.next();
      if ((localObject instanceof i))
      {
        localObject = (i)localObject;
        if ((((i)localObject).d() != 0L) && (i.b((i)localObject).isEmpty())) {
          i.a(b, (i)localObject);
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.a.b.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
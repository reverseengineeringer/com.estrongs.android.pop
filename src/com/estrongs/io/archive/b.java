package com.estrongs.io.archive;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

final class b
  extends Thread
{
  public void run()
  {
    ArrayList localArrayList = new ArrayList(5);
    for (;;)
    {
      String str;
      Iterator localIterator2;
      try
      {
        Thread.sleep(300000L);
        Iterator localIterator1 = a.b.keySet().iterator();
        if (localIterator1.hasNext())
        {
          str = (String)localIterator1.next();
          if (System.currentTimeMillis() - ((Long)a.b.get(str)).longValue() < 900000L) {
            continue;
          }
          localArrayList.add(str);
          continue;
        }
      }
      catch (InterruptedException localInterruptedException)
      {
        localInterruptedException.printStackTrace();
        continue;
        localIterator2 = localArrayList.iterator();
      }
      while (localIterator2.hasNext())
      {
        str = (String)localIterator2.next();
        h localh = (h)a.a.get(str);
        if (localh != null)
        {
          localh.g();
          a.a.remove(str);
          a.b.remove(str);
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.io.archive.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
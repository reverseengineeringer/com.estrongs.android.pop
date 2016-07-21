package com.estrongs.android.ui.c.b;

import com.estrongs.android.pop.ai;
import com.estrongs.android.ui.c.a.b;
import com.estrongs.fs.util.j;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

class d
  extends Thread
{
  d(a parama) {}
  
  public void run()
  {
    ai.b(a.a(a)).y();
    System.currentTimeMillis();
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = a.g(a).iterator();
    long l2 = 0L;
    long l1 = 0L;
    long l3;
    if (localIterator.hasNext())
    {
      Object localObject = (String)localIterator.next();
      if (localArrayList.contains(localObject)) {
        break label249;
      }
      localArrayList.add(localObject);
      localObject = j.k((String)localObject);
      long l4 = localObject[0];
      long l5 = localObject[1];
      long l6 = localObject[2];
      l3 = localObject[0];
      l3 = localObject[2] * l3 + l2;
      l2 = l1 + (l4 - l5) * l6;
      l1 = l3;
    }
    for (;;)
    {
      l3 = l2;
      l2 = l1;
      l1 = l3;
      break;
      if (localArrayList.size() == 1) {
        if (a.h(a) != null) {
          a.h(a).a((String)localArrayList.get(0));
        }
      }
      for (;;)
      {
        a.a(a, l2);
        a.b(a, l1);
        a.i(a);
        return;
        if (a.h(a) != null) {
          a.h(a).a("/");
        }
      }
      label249:
      l3 = l1;
      l1 = l2;
      l2 = l3;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.c.b.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.dianxinos.library.b.b.d;

import com.dianxinos.library.b.b.a.d;
import com.dianxinos.library.b.c.g;
import com.dianxinos.library.b.c.k;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;

class s
  implements Runnable
{
  volatile boolean a = false;
  volatile d[] b = new d['È'];
  
  s(q paramq) {}
  
  public <T> int a()
  {
    int k = 0;
    for (;;)
    {
      d locald;
      synchronized (c.s)
      {
        if (!c.A.isEmpty()) {
          break label416;
        }
        return 0;
        if (i < b.length)
        {
          b[i] = null;
          i += 1;
          continue;
        }
        Object localObject4 = c.A.values().iterator();
        Object localObject1 = null;
        i = 0;
        if (((Iterator)localObject4).hasNext())
        {
          locald = (d)((Iterator)localObject4).next();
          if ((a == null) && (c == null) && ((b instanceof Runnable)))
          {
            localObject1 = locald;
            break label421;
          }
          if (i < 200)
          {
            b[i] = locald;
            i += 1;
            break label421;
          }
        }
        if (localObject1 == null) {
          break label424;
        }
        c.A.remove(null);
        break label424;
        if (j < i)
        {
          locald = b[j];
          if (locald == null) {
            break label429;
          }
          c.A.remove(a);
          break label429;
        }
        if (!c.A.isEmpty())
        {
          j = 1;
          if (k >= i) {
            break label352;
          }
          locald = b[k];
          if (locald != null)
          {
            ??? = c.b(a);
            d = ((String)???);
            if (b != a.a)
            {
              localObject4 = c.a(b);
              e = c.v.a((byte[])localObject4, q.a(c, (String)???));
            }
          }
          else
          {
            k += 1;
            continue;
          }
        }
        else
        {
          j = 0;
        }
      }
      e = null;
      continue;
      label352:
      q.p += i;
      c.u.a(b, i);
      if (localObject2 != null) {}
      try
      {
        ((Runnable)b).run();
        if (j != 0)
        {
          c.a(true);
          return i;
        }
      }
      catch (Throwable localThrowable)
      {
        for (;;) {}
      }
      return i;
      label416:
      int i = 0;
      continue;
      label421:
      continue;
      label424:
      int j = 0;
      continue;
      label429:
      j += 1;
    }
  }
  
  public void run()
  {
    for (;;)
    {
      try
      {
        q.o.a(0);
      }
      catch (Throwable localThrowable)
      {
        localThrowable.printStackTrace();
        return;
      }
      finally
      {
        a = false;
        q.o.b(0);
        if ((!com.dianxinos.library.b.a.b) || (q.p <= 0)) {
          continue;
        }
      }
      synchronized (c.C)
      {
        a = true;
        if ((c.w) && (c.y))
        {
          i = a();
          a = false;
          long l = q.o.b(0);
          if ((com.dianxinos.library.b.a.b) && (q.p > 0) && (i > 0)) {
            k.a("write " + c.q + ":" + i + " items in " + l + "ms, avg=" + l / i + "ms, totalAvg=" + q.o.c(0) / q.p + "ms, totalCount=" + q.p);
          }
          return;
        }
      }
      int i = 0;
    }
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.library.b.b.d.s
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
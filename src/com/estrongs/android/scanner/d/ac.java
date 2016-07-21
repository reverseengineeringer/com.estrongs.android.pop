package com.estrongs.android.scanner.d;

import com.estrongs.android.scanner.a.c;
import com.estrongs.android.scanner.a.d;
import com.estrongs.android.util.l;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

class ac
  implements Runnable
{
  private final w b;
  
  public ac(z paramz, w paramw)
  {
    b = paramw;
  }
  
  public void run()
  {
    a.b.b();
    if ((!a.e()) && (z.a(a) != null) && (!z.a(a).isEmpty()))
    {
      l.e(a.a, "去掉残留的文件从:" + a.a());
      Iterator localIterator = z.a(a).entrySet().iterator();
      while (localIterator.hasNext())
      {
        Object localObject = (List)((Map.Entry)localIterator.next()).getValue();
        if ((localObject != null) && (!((List)localObject).isEmpty()))
        {
          ArrayList localArrayList = new ArrayList(((List)localObject).size());
          localObject = ((List)localObject).iterator();
          while (((Iterator)localObject).hasNext())
          {
            c localc = (c)((Iterator)localObject).next();
            l.e(a.a, "去掉残留的文件:" + localc.e() + ":" + ((d)localc).i());
            localArrayList.add(Long.valueOf(localc.c()));
          }
          a.b.a(a.a(), localArrayList);
        }
      }
    }
    if (!z.d(a).isEmpty())
    {
      l.c(a.a, "flush trash files from db:" + a.a());
      a.b.b(a.a(), z.d(a));
      if (b != null) {
        b.a(z.d(a));
      }
      z.d(a).clear();
    }
    if (!z.b(a).isEmpty())
    {
      l.c(a.a, "flush new files into db:" + a.a());
      a.b.a(a.a(), z.b(a));
      if (b != null) {
        b.a(z.b(a));
      }
      z.b(a).clear();
    }
    if (!z.c(a).isEmpty())
    {
      l.c(a.a, "flush modify files into db:" + a.a());
      a.b.e(a.a(), z.c(a));
      z.c(a).clear();
    }
    a.b(b);
    a.b.close();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.scanner.d.ac
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
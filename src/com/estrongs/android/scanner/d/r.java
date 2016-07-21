package com.estrongs.android.scanner.d;

import com.estrongs.android.scanner.a.c;
import com.estrongs.android.scanner.x;
import com.estrongs.android.util.l;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

class r
  implements Runnable
{
  private final w b;
  
  public r(m paramm, w paramw)
  {
    b = paramw;
  }
  
  public void run()
  {
    a.b.b();
    if ((m.b(a) != null) && (!m.b(a).isEmpty()))
    {
      l.e(a.a, "去掉残留的目录:" + a.a());
      Object localObject1 = x.a();
      HashSet localHashSet = new HashSet();
      localObject1 = ((List)localObject1).iterator();
      while (((Iterator)localObject1).hasNext()) {
        localHashSet.add((String)((Iterator)localObject1).next());
      }
      localObject1 = m.b(a).entrySet().iterator();
      while (((Iterator)localObject1).hasNext())
      {
        Object localObject2 = (List)((Map.Entry)((Iterator)localObject1).next()).getValue();
        if ((localObject2 != null) && (!((List)localObject2).isEmpty()))
        {
          ArrayList localArrayList = new ArrayList(((List)localObject2).size());
          localObject2 = ((List)localObject2).iterator();
          while (((Iterator)localObject2).hasNext())
          {
            c localc = (c)((Iterator)localObject2).next();
            if (localHashSet.contains(localc.d()))
            {
              l.e(a.a, "跳过不是真正的残留目录:" + localc.d());
            }
            else
            {
              l.e(a.a, "去掉残留的目录:" + localc.d());
              localArrayList.add(Long.valueOf(localc.c()));
            }
          }
          a.b.a(a.a(), localArrayList);
        }
      }
    }
    if (!m.d(a).isEmpty())
    {
      l.c(a.a, "flush trash directories from db");
      a.b.a(m.d(a));
      m.d(a).clear();
    }
    if (!m.c(a).isEmpty())
    {
      l.c(a.a, "flush new dirs into db:" + a.a());
      a.b.a(m.c(a));
      m.c(a).clear();
    }
    a.b(b);
    a.b.close();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.scanner.d.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
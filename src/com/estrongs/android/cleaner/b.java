package com.estrongs.android.cleaner;

import com.estrongs.android.util.l;
import com.estrongs.fs.b.ab;
import com.estrongs.fs.impl.local.f;
import com.estrongs.fs.util.j;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class b
{
  private static final String a = b.class.getName();
  
  private void a(h paramh)
  {
    if (paramh == null) {}
    ArrayList localArrayList;
    do
    {
      return;
      if (!paramh.a())
      {
        l.c(a, paramh.m() + " not checked!");
        return;
      }
      if (paramh.f() == 3)
      {
        l.c(a, "clean recycle:" + paramh.m());
        j.a(new File(paramh.d()));
        return;
      }
      l.b(a, "clean:" + paramh.m());
      localArrayList = new ArrayList();
      paramh = paramh.l().iterator();
      while (paramh.hasNext())
      {
        Object localObject = (h)paramh.next();
        if (((h)localObject).f() != 4)
        {
          if ((((h)localObject).g() == 6) && (((h)localObject).q() == 2))
          {
            localObject = ((h)localObject).s().iterator();
            while (((Iterator)localObject).hasNext()) {
              j.a(new File((String)((Iterator)localObject).next()));
            }
          }
          else
          {
            a((h)localObject);
          }
        }
        else if (!((h)localObject).a())
        {
          l.c(a, ((h)localObject).m() + " not checked!");
        }
        else
        {
          localArrayList.add(new f(new File(((h)localObject).d())));
          l.b(a, "DELETE: " + ((h)localObject).d() + ":" + ((h)localObject).j());
        }
      }
    } while (localArrayList.isEmpty());
    new ab(com.estrongs.fs.d.a(), localArrayList, false).execute(false);
  }
  
  public void a(List<h> paramList)
  {
    if ((paramList == null) || (paramList.isEmpty())) {
      return;
    }
    l.e(a, "clean disk in new cleaner");
    int j = paramList.size();
    ArrayList localArrayList = new ArrayList(j);
    ExecutorService localExecutorService = Executors.newFixedThreadPool(j + 1);
    int i = 0;
    while (i < j)
    {
      localArrayList.add(localExecutorService.submit(new d(this, (h)paramList.get(i))));
      i += 1;
    }
    localExecutorService.execute(new c(this, localArrayList, localExecutorService));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.cleaner.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
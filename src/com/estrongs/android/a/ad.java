package com.estrongs.android.a;

import com.estrongs.android.a.b.k;
import com.estrongs.android.util.ap;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.ThreadPoolExecutor;

class ad
  implements Runnable
{
  ad(ab paramab, String paramString, ArrayList paramArrayList, long paramLong) {}
  
  public void run()
  {
    Object localObject2;
    int i;
    if ((ap.aY(a)) || (ap.X(a)))
    {
      ab.b(d);
      localObject1 = new com.estrongs.android.a.b.l[ab.c(d).size()];
      ab.c(d).toArray((Object[])localObject1);
      localObject2 = new k[ab.e(d)];
      ab.f(d).toArray((Object[])localObject2);
      localObject1 = new a(null, (com.estrongs.android.a.b.l[])localObject1, (k[])localObject2, ab.g(d), 0L);
      i = 0;
      label110:
      if (i >= ab.h(d).length) {
        break label235;
      }
      if (ab.h(d)[i] != null) {
        if ((!ab.i(d).isShutdown()) && (!ab.i(d).isTerminated())) {
          break label230;
        }
      }
    }
    label230:
    for (int j = 1;; j = 0)
    {
      if (j == 0)
      {
        localObject2 = new ag(d, ab.h(d)[i], (a)localObject1);
        b.add(ab.i(d).submit((Callable)localObject2));
      }
      i += 1;
      break label110;
      ab.d(d);
      localObject1 = null;
      break;
    }
    label235:
    Object localObject1 = b.iterator();
    while (((Iterator)localObject1).hasNext())
    {
      localObject2 = (Future)((Iterator)localObject1).next();
      if (ab.j(d))
      {
        ab.k(d).a(a);
        return;
      }
      try
      {
        ((Future)localObject2).get();
      }
      catch (InterruptedException localInterruptedException)
      {
        localInterruptedException.printStackTrace();
      }
      catch (ExecutionException localExecutionException)
      {
        localExecutionException.printStackTrace();
      }
    }
    com.estrongs.android.util.l.c(ab.b(), "analyze finish");
    long l = System.currentTimeMillis();
    com.estrongs.android.util.l.e(ab.b(), "Expired: " + (l - c) + " ms");
    ab.k(d).a(a);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.a.ad
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
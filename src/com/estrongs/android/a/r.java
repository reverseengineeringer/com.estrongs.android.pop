package com.estrongs.android.a;

import com.estrongs.android.util.l;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;

class r
  implements Runnable
{
  r(q paramq, ArrayList paramArrayList, String paramString) {}
  
  public void run()
  {
    Iterator localIterator = a.iterator();
    int i = 0;
    int j = 0;
    for (;;)
    {
      if (localIterator.hasNext())
      {
        Object localObject = (Future)localIterator.next();
        int k = j;
        int m = j;
        try
        {
          localObject = (t)((Future)localObject).get();
          k = j;
          m = j;
          j += b;
          long l1 = i;
          k = j;
          m = j;
          long l2 = a;
          i = (int)(l2 + l1);
        }
        catch (InterruptedException localInterruptedException)
        {
          for (;;)
          {
            localInterruptedException.printStackTrace();
            j = k;
          }
        }
        catch (ExecutionException localExecutionException)
        {
          for (;;)
          {
            localExecutionException.printStackTrace();
            j = m;
          }
        }
      }
    }
    l.c(q.c(), "analyze finish");
    q.a(c).a(b);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.a.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.estrongs.android.cleaner;

import com.estrongs.android.util.l;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;

class c
  implements Runnable
{
  c(b paramb, ArrayList paramArrayList, ExecutorService paramExecutorService) {}
  
  public void run()
  {
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext())
    {
      Future localFuture = (Future)localIterator.next();
      try
      {
        localFuture.get();
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
    l.e(b.a(), "clean disk finish");
    b.shutdown();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.cleaner.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
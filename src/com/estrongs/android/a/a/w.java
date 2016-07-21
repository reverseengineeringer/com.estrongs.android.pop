package com.estrongs.android.a.a;

import com.estrongs.android.a.b.r;
import com.estrongs.android.util.l;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicInteger;

class w
  implements Runnable
{
  w(v paramv, String paramString) {}
  
  public void run()
  {
    long l1 = System.currentTimeMillis();
    r[] arrayOfr;
    int i;
    label71:
    r localr;
    ConcurrentLinkedQueue localConcurrentLinkedQueue1;
    if (v.a(b) != -1)
    {
      arrayOfr = v.b(b).a(v.a(b));
      l.b(getClass().getSimpleName(), "same Cached number: " + arrayOfr.length);
      int j = arrayOfr.length;
      i = 0;
      if (i >= j) {
        break label189;
      }
      localr = arrayOfr[i];
      Long localLong = Long.valueOf(localr.d());
      ConcurrentLinkedQueue localConcurrentLinkedQueue2 = (ConcurrentLinkedQueue)v.c(b).get(localLong);
      localConcurrentLinkedQueue1 = localConcurrentLinkedQueue2;
      if (localConcurrentLinkedQueue2 == null)
      {
        localConcurrentLinkedQueue1 = new ConcurrentLinkedQueue();
        localConcurrentLinkedQueue2 = (ConcurrentLinkedQueue)v.c(b).putIfAbsent(localLong, localConcurrentLinkedQueue1);
        if (localConcurrentLinkedQueue2 == null) {
          break label265;
        }
        localConcurrentLinkedQueue1 = localConcurrentLinkedQueue2;
      }
    }
    label189:
    label265:
    for (;;)
    {
      localConcurrentLinkedQueue1.add(localr);
      i += 1;
      break label71;
      arrayOfr = v.b(b).a(a);
      break;
      v.d(b).countDown();
      if (v.e(b).decrementAndGet() == 0) {
        v.b(b).b();
      }
      long l2 = System.currentTimeMillis();
      l.b(getClass().getSimpleName(), "load same file cache: " + (l2 - l1) + " ms");
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.a.a.w
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
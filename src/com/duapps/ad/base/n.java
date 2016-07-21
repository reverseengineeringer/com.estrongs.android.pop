package com.duapps.ad.base;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

final class n
  implements ThreadFactory
{
  private final AtomicInteger a = new AtomicInteger(1);
  
  public Thread newThread(Runnable paramRunnable)
  {
    return new Thread(paramRunnable, "parse #" + a.getAndIncrement());
  }
}

/* Location:
 * Qualified Name:     com.duapps.ad.base.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
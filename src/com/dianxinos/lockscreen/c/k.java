package com.dianxinos.lockscreen.c;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

final class k
  implements ThreadFactory
{
  private final AtomicInteger a = new AtomicInteger(1);
  
  public Thread newThread(Runnable paramRunnable)
  {
    return new Thread(paramRunnable, "LockScreenThread #" + a.getAndIncrement());
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.lockscreen.c.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
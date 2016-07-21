package com.flurry.sdk;

import java.util.HashMap;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.RunnableFuture;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

class kf$1
  extends ThreadPoolExecutor
{
  kf$1(kf paramkf, int paramInt1, int paramInt2, long paramLong, TimeUnit paramTimeUnit, BlockingQueue paramBlockingQueue)
  {
    super(paramInt1, paramInt2, paramLong, paramTimeUnit, paramBlockingQueue);
  }
  
  protected void afterExecute(Runnable arg1, Throwable paramThrowable)
  {
    super.afterExecute(???, paramThrowable);
    paramThrowable = kf.a(a, ???);
    if (paramThrowable == null) {
      return;
    }
    synchronized (kf.a(a))
    {
      kf.a(a).remove(paramThrowable);
      kf.a(a, paramThrowable);
      new kf.1.2(this, paramThrowable).run();
      return;
    }
  }
  
  protected void beforeExecute(Thread paramThread, Runnable paramRunnable)
  {
    super.beforeExecute(paramThread, paramRunnable);
    paramThread = kf.a(a, paramRunnable);
    if (paramThread == null) {
      return;
    }
    new kf.1.1(this, paramThread).run();
  }
  
  protected <V> RunnableFuture<V> newTaskFor(Runnable paramRunnable, V arg2)
  {
    ke localke = new ke(paramRunnable, ???);
    synchronized (kf.a(a))
    {
      kf.a(a).put((lz)paramRunnable, localke);
      return localke;
    }
  }
  
  protected <V> RunnableFuture<V> newTaskFor(Callable<V> paramCallable)
  {
    throw new UnsupportedOperationException("Callable not supported");
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.kf.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
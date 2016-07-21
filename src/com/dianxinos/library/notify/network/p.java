package com.dianxinos.library.notify.network;

import java.util.concurrent.BlockingQueue;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadPoolExecutor;

class p
  implements RejectedExecutionHandler
{
  p(o paramo) {}
  
  public void rejectedExecution(Runnable paramRunnable, ThreadPoolExecutor paramThreadPoolExecutor)
  {
    try
    {
      paramThreadPoolExecutor.getQueue().put(paramRunnable);
      return;
    }
    catch (InterruptedException paramRunnable)
    {
      paramRunnable.printStackTrace();
    }
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.library.notify.network.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
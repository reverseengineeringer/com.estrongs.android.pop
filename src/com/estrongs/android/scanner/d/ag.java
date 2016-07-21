package com.estrongs.android.scanner.d;

import java.util.concurrent.BlockingQueue;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadPoolExecutor;

class ag
  implements RejectedExecutionHandler
{
  ag(af paramaf) {}
  
  public void rejectedExecution(Runnable paramRunnable, ThreadPoolExecutor paramThreadPoolExecutor)
  {
    if (!paramThreadPoolExecutor.isShutdown()) {}
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
 * Qualified Name:     com.estrongs.android.scanner.d.ag
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
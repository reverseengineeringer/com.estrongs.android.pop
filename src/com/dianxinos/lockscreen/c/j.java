package com.dianxinos.lockscreen.c;

import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public class j
{
  private static final ThreadFactory a = new k();
  private static final BlockingQueue<Runnable> b = new LinkedBlockingQueue(200);
  private static j c;
  private ThreadPoolExecutor d = new ThreadPoolExecutor(3, 30, 1L, TimeUnit.SECONDS, b, a);
  
  public static j a()
  {
    try
    {
      if (c == null) {
        c = new j();
      }
      j localj = c;
      return localj;
    }
    finally {}
  }
  
  public void a(Runnable paramRunnable)
  {
    d.execute(paramRunnable);
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.lockscreen.c.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
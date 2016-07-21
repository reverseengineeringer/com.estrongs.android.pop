package com.duapps.ad.base;

import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public class an
{
  private static final ThreadFactory a = new ao();
  private static final BlockingQueue<Runnable> b = new LinkedBlockingQueue(200);
  private static an c;
  private ThreadPoolExecutor d = new ThreadPoolExecutor(5, 50, 1L, TimeUnit.SECONDS, b, a);
  
  public static an a()
  {
    try
    {
      if (c == null) {
        c = new an();
      }
      an localan = c;
      return localan;
    }
    finally {}
  }
  
  public static void b(Runnable paramRunnable)
  {
    a().a(paramRunnable);
  }
  
  public void a(Runnable paramRunnable)
  {
    d.execute(paramRunnable);
  }
}

/* Location:
 * Qualified Name:     com.duapps.ad.base.an
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.dianxinos.library.notify.network;

import com.dianxinos.library.dxbase.j;

public class u
  implements Runnable
{
  private final long a = 2000L;
  private boolean b = false;
  private Runnable c;
  private Exception d;
  
  public u(Runnable paramRunnable)
  {
    c = paramRunnable;
    b = true;
    d = new Exception("Stack trace of " + paramRunnable);
  }
  
  public u(Runnable paramRunnable, boolean paramBoolean)
  {
    c = paramRunnable;
    b = paramBoolean;
    if (b) {
      d = new Exception("Stack trace of " + paramRunnable);
    }
  }
  
  public void run()
  {
    if (b) {}
    for (l1 = System.currentTimeMillis();; l1 = 0L)
    {
      try
      {
        c.run();
        if (b)
        {
          l2 = System.currentTimeMillis();
          if (l2 - l1 > 2000L)
          {
            j.c("Job: " + c + " takes too long to complete: " + (l2 - l1) + "ms, originally created at: ");
            d.printStackTrace();
          }
        }
        c = null;
      }
      catch (Exception localException)
      {
        for (;;)
        {
          localException.printStackTrace();
          if (b)
          {
            l2 = System.currentTimeMillis();
            if (l2 - l1 > 2000L)
            {
              j.c("Job: " + c + " takes too long to complete: " + (l2 - l1) + "ms, originally created at: ");
              d.printStackTrace();
            }
          }
          c = null;
        }
      }
      finally
      {
        if (!b) {
          break label260;
        }
        long l2 = System.currentTimeMillis();
        if (l2 - l1 <= 2000L) {
          break label260;
        }
        j.c("Job: " + c + " takes too long to complete: " + (l2 - l1) + "ms, originally created at: ");
        d.printStackTrace();
        c = null;
        d = null;
      }
      d = null;
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.library.notify.network.u
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
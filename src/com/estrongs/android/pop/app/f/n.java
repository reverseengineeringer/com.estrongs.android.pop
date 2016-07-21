package com.estrongs.android.pop.app.f;

import java.util.concurrent.atomic.AtomicInteger;

public class n
  extends Thread
{
  public Runnable a;
  
  public n(m paramm, Runnable paramRunnable)
  {
    m.a(paramm).incrementAndGet();
    a = paramRunnable;
  }
  
  public void run()
  {
    try
    {
      if (a != null) {
        a.run();
      }
      m.a(b).decrementAndGet();
      return;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        localException.printStackTrace();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.f.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
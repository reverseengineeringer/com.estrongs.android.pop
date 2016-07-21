package com.estrongs.android.a;

import java.util.concurrent.CountDownLatch;

class h
  implements Runnable
{
  h(b paramb) {}
  
  public void run()
  {
    try
    {
      b.h(a).await();
      b.i(a);
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      for (;;)
      {
        localInterruptedException.printStackTrace();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.a.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
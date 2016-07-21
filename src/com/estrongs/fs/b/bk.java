package com.estrongs.fs.b;

class bk
  implements Runnable
{
  bk(bj parambj) {}
  
  public void run()
  {
    try
    {
      Thread.sleep(500L);
      synchronized (bc.e(a.a))
      {
        ea.a).g = 1;
        ea.a).f = true;
        bc.e(a.a).notify();
        return;
      }
    }
    catch (InterruptedException localInterruptedException)
    {
      for (;;) {}
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.b.bk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
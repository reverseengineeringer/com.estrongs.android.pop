package com.estrongs.fs.b;

class bi
  implements Runnable
{
  bi(bh parambh) {}
  
  public void run()
  {
    try
    {
      Thread.sleep(500L);
      synchronized (ba.e(a.a))
      {
        ea.a).g = 1;
        ea.a).f = true;
        ba.e(a.a).notify();
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
 * Qualified Name:     com.estrongs.fs.b.bi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
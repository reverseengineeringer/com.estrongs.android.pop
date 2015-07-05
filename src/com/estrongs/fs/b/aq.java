package com.estrongs.fs.b;

class aq
  extends Thread
{
  aq(ap paramap) {}
  
  public void run()
  {
    if (ap.a(a)) {
      return;
    }
    try
    {
      Thread.sleep(300L);
      synchronized (ap.b(a))
      {
        ap.a(a, true);
      }
    }
    catch (Exception localException)
    {
      for (;;) {}
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.b.aq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
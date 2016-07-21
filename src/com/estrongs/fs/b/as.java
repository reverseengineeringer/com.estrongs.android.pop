package com.estrongs.fs.b;

class as
  extends Thread
{
  as(ar paramar) {}
  
  public void run()
  {
    if (ar.a(a)) {
      return;
    }
    try
    {
      Thread.sleep(300L);
      synchronized (ar.b(a))
      {
        ar.a(a, true);
      }
    }
    catch (Exception localException)
    {
      for (;;) {}
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.b.as
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.estrongs.android.ftp;

class b
  extends Thread
{
  b(a parama) {}
  
  public void run()
  {
    for (;;)
    {
      long l1;
      long l2;
      long l4;
      long l3;
      synchronized (a.a(a))
      {
        l1 = a.b(a);
        l2 = a.c(a);
        l4 = l1;
        l3 = l2;
        if ((a.d(a)) || (!a.e)) {
          return;
        }
      }
      try
      {
        Thread.sleep(1000L);
        synchronized (a.a(a))
        {
          long l7 = a.b(a);
          long l8 = a.c(a);
          long l5 = a.b(a);
          long l6 = a.c(a);
          l2 = l6;
          l1 = l5;
          if (a.j != null)
          {
            a.j.a(l7 - l4, l8 - l3);
            l2 = l6;
            l1 = l5;
            continue;
            localObject2 = finally;
            throw ((Throwable)localObject2);
          }
        }
      }
      catch (Exception localException)
      {
        for (;;) {}
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ftp.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
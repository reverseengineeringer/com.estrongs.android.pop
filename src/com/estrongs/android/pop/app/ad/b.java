package com.estrongs.android.pop.app.ad;

import com.duapps.ad.base.h;
import com.estrongs.android.pop.FexApplication;
import java.io.PrintStream;

class b
  extends Thread
{
  b(a parama) {}
  
  public void run()
  {
    try
    {
      Thread.sleep(3000L);
      String str = h.a(FexApplication.a());
      System.out.println("GAID: gaid = " + str);
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
 * Qualified Name:     com.estrongs.android.pop.app.ad.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
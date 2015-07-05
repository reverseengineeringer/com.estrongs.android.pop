package com.estrongs.android.pop.multicopy;

import android.os.ConditionVariable;
import com.estrongs.a.a;
import com.estrongs.fs.b.ad;

public class c
  implements Runnable
{
  private a b;
  private ConditionVariable c = new ConditionVariable();
  
  public c(MultiThreadCopy paramMultiThreadCopy, a parama)
  {
    b = parama;
  }
  
  public void run()
  {
    boolean bool = b instanceof ad;
    if (bool) {
      b.addTaskStatusChangeListener(new d(this));
    }
    for (;;)
    {
      if (MultiThreadCopy.a(a).isChanged()) {
        MultiThreadCopy.b(a);
      }
      if ((bool) && (b.getTaskStatus() == 3))
      {
        c.block();
        c.close();
      }
      try
      {
        Thread.sleep(10000L);
      }
      catch (InterruptedException localInterruptedException) {}
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.multicopy.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
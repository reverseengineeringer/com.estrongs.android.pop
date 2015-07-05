package com.estrongs.android.pop.utils;

import com.estrongs.android.util.bd;

class cs
  implements Runnable
{
  cs(cm paramcm) {}
  
  public void run()
  {
    Thread.currentThread().setName("TaskQueue");
    for (;;)
    {
      try
      {
        if (!cm.b(a))
        {
          localcq = cm.c(a);
          if (localcq != null) {
            continue;
          }
        }
      }
      catch (Exception localException)
      {
        cq localcq;
        ct localct;
        localException.printStackTrace();
        continue;
      }
      catch (Error localError)
      {
        localError.printStackTrace();
        continue;
      }
      cm.a(a, this);
      return;
      localcq.a(cm.d(a));
      if (localcq.c())
      {
        localct = cm.e(a);
        if (localct != null)
        {
          a = localcq;
          bd.a(localct);
        }
      }
      localcq.a();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.utils.cs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
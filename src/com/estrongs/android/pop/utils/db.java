package com.estrongs.android.pop.utils;

import com.estrongs.android.util.bk;

class db
  implements Runnable
{
  db(cv paramcv) {}
  
  public void run()
  {
    Thread.currentThread().setName("TaskQueue");
    for (;;)
    {
      try
      {
        if (!cv.b(a))
        {
          localcz = cv.c(a);
          if (localcz != null) {
            continue;
          }
        }
      }
      catch (Exception localException)
      {
        cz localcz;
        dc localdc;
        localException.printStackTrace();
        continue;
      }
      catch (Error localError)
      {
        localError.printStackTrace();
        continue;
      }
      cv.a(a, this);
      return;
      localcz.a(cv.d(a));
      if (localcz.c())
      {
        localdc = cv.e(a);
        if (localdc != null)
        {
          a = localcz;
          bk.a(localdc);
        }
      }
      localcz.a();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.utils.db
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
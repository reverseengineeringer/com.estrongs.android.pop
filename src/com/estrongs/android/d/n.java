package com.estrongs.android.d;

import android.os.Process;
import com.estrongs.android.util.am;
import com.estrongs.android.view.cd;
import com.estrongs.fs.h;
import java.util.ArrayList;
import java.util.Map;

class n
  implements Runnable
{
  private n(k paramk) {}
  
  public void run()
  {
    Process.setThreadPriority(19);
    for (;;)
    {
      synchronized (k.a(a))
      {
        if (k.b(a)) {
          return;
        }
        boolean bool = a.a;
        if (!bool) {}
      }
      try
      {
        k.a(a).wait();
        continue;
        localObject2 = finally;
        throw ((Throwable)localObject2);
        if (!k.a(a).isEmpty())
        {
          a.c = ((m)k.a(a).remove(0));
          ??? = a.c.c.getPath();
          if (a.a(a.c))
          {
            a.c.d = a.c.c;
            if ((a.c.c.getFileType().a()) && ((am.aG(a.c.c.getPath())) || (am.aO(a.c.c.getPath())))) {
              a.c.d = cd.a(a.c.c, false);
            }
            if (a.c.d != null)
            {
              boolean[] arrayOfBoolean = new boolean[1];
              arrayOfBoolean[0] = false;
              a.c.e = f.a(a.c.d, false, arrayOfBoolean);
              a.c.a = arrayOfBoolean[0];
              if (a.c.e != null) {
                a.b(a.c);
              }
            }
          }
          k.c(a).remove(???);
          a.c = null;
          continue;
        }
        try
        {
          k.a(a).wait();
        }
        catch (InterruptedException localInterruptedException1)
        {
          for (;;) {}
        }
      }
      catch (InterruptedException localInterruptedException2)
      {
        for (;;) {}
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.d.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
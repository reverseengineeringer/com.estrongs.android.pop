package com.estrongs.android.pop.app.imageviewer;

import android.graphics.Bitmap;
import java.util.ArrayList;

class x
  implements Runnable
{
  private x(t paramt) {}
  
  public void run()
  {
    for (;;)
    {
      w localw;
      synchronized (t.a(a))
      {
        if (t.b(a)) {
          return;
        }
        if (!t.a(a).isEmpty())
        {
          localw = (w)t.a(a).remove(0);
          ??? = null;
        }
      }
      try
      {
        Bitmap localBitmap = a.a(a);
        ??? = localBitmap;
        if (b == null) {
          continue;
        }
        b.a(a, (Bitmap)???);
      }
      catch (Throwable localThrowable)
      {
        try
        {
          t.a(a).wait();
          continue;
          localObject2 = finally;
          throw ((Throwable)localObject2);
          localThrowable = localThrowable;
          localThrowable.printStackTrace();
        }
        catch (InterruptedException localInterruptedException)
        {
          for (;;) {}
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.imageviewer.x
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
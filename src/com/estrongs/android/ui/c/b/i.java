package com.estrongs.android.ui.c.b;

import android.os.Handler;
import com.estrongs.android.ui.c.a.d;

class i
  implements Runnable
{
  i(f paramf, int paramInt, d paramd) {}
  
  public void run()
  {
    int i = 1;
    for (;;)
    {
      if (i <= 20)
      {
        int j = (int)(1.0F * i / 20.0F * a);
        f.a(c).post(new j(this, j));
        try
        {
          Thread.sleep(15L);
          i += 1;
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
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.c.b.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.estrongs.android.g;

import com.estrongs.android.ui.notification.d;
import java.util.TimerTask;

class i
  extends TimerTask
{
  i(h paramh) {}
  
  public void run()
  {
    synchronized (f.c(a.a))
    {
      if ((f.h(a.a) == 0) && (f.e(a.a) != null))
      {
        f.e(a.a).e();
        f.a(a.a, null);
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.g.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.estrongs.a.b;

import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.zeroconf.w;

final class i
  implements Runnable
{
  public void run()
  {
    synchronized ()
    {
      if (d.g() != null) {
        return;
      }
    }
    try
    {
      d.a(new w(FexApplication.a(), 1));
      d.g().a(w.a, d.b, d.a);
      return;
      localObject2 = finally;
      throw ((Throwable)localObject2);
    }
    catch (Exception localException)
    {
      for (;;)
      {
        d.a(null);
        localException.printStackTrace();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.a.b.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
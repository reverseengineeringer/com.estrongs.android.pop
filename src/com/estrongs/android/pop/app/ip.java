package com.estrongs.android.pop.app;

import android.app.ProgressDialog;

final class ip
  implements Runnable
{
  public void run()
  {
    try
    {
      if (io.b() != null)
      {
        io.b().dismiss();
        io.a(null);
        io.a(false);
      }
      io.a(false);
      return;
    }
    catch (Exception localException)
    {
      localException = localException;
      io.a(false);
      return;
    }
    finally
    {
      localObject = finally;
      io.a(false);
      throw ((Throwable)localObject);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.ip
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
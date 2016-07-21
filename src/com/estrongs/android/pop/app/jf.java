package com.estrongs.android.pop.app;

import android.app.ProgressDialog;

final class jf
  implements Runnable
{
  public void run()
  {
    try
    {
      if (je.b() != null)
      {
        je.b().dismiss();
        je.a(null);
        je.a(false);
      }
      je.a(false);
      return;
    }
    catch (Exception localException)
    {
      localException = localException;
      je.a(false);
      return;
    }
    finally
    {
      localObject = finally;
      je.a(false);
      throw ((Throwable)localObject);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.jf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
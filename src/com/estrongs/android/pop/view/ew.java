package com.estrongs.android.pop.view;

import com.estrongs.android.pop.utils.aa;

class ew
  extends Thread
{
  ew(eu parameu, String paramString) {}
  
  public void run()
  {
    try
    {
      aa.d();
      b.b.runOnUiThread(new ex(this));
      return;
    }
    catch (Exception localException)
    {
      for (;;) {}
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.ew
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
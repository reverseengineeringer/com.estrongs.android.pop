package com.estrongs.android.pop.view;

import com.estrongs.android.pop.utils.ad;

class ct
  extends Thread
{
  ct(cr paramcr, String paramString) {}
  
  public void run()
  {
    try
    {
      ad.d();
      b.b.runOnUiThread(new cu(this));
      return;
    }
    catch (Exception localException)
    {
      for (;;) {}
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.ct
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.estrongs.android.pop.view;

import com.estrongs.android.appinfo.AppFolderInfoManager;

class j
  extends Thread
{
  j(h paramh) {}
  
  public void run()
  {
    try
    {
      Thread.sleep(3000L);
      AppFolderInfoManager.d().a(new k(this));
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      for (;;) {}
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.estrongs.android.pop.view;

import com.estrongs.android.appinfo.AppFolderInfoManager;

class am
  extends Thread
{
  am(ak paramak) {}
  
  public void run()
  {
    try
    {
      Thread.sleep(3000L);
      AppFolderInfoManager.d().a(new an(this));
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      for (;;) {}
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.am
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
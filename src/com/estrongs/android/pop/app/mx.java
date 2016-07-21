package com.estrongs.android.pop.app;

import com.estrongs.android.appinfo.AppFolderInfoManager;
import com.estrongs.android.util.bk;

class mx
  extends Thread
{
  mx(UninstallMonitorActivity paramUninstallMonitorActivity, String paramString) {}
  
  public void run()
  {
    bk.a(new my(this, AppFolderInfoManager.d().e(a), AppFolderInfoManager.d().h(a)));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.mx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
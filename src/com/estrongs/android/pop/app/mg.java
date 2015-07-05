package com.estrongs.android.pop.app;

import com.estrongs.android.appinfo.AppFolderInfoManager;
import com.estrongs.android.util.bd;

class mg
  extends Thread
{
  mg(UninstallMonitorActivity paramUninstallMonitorActivity, String paramString) {}
  
  public void run()
  {
    bd.a(new mh(this, AppFolderInfoManager.d().e(a), AppFolderInfoManager.d().h(a)));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.mg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
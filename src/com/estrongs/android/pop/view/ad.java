package com.estrongs.android.pop.view;

import com.estrongs.android.j.c;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.ui.notification.j;

class ad
  implements Runnable
{
  ad(FileExplorerActivity paramFileExplorerActivity) {}
  
  public void run()
  {
    if (a.k.P()) {}
    try
    {
      if (FileExplorerActivity.s(a) != null)
      {
        FileExplorerActivity.s(a).d("act5");
        FileExplorerActivity.s(a).a("act5", "show_sdcard_notification");
      }
      j.a(FexApplication.a()).b();
      return;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        localException.printStackTrace();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.ad
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
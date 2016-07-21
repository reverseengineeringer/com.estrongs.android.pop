package com.estrongs.android.pop.view;

import com.estrongs.android.ui.dialog.ProgressDialog;
import com.estrongs.fs.impl.k.c;

class co
  extends Thread
{
  co(FileExplorerActivity paramFileExplorerActivity, com.estrongs.android.pop.app.service.b paramb) {}
  
  public void run()
  {
    if (c.a())
    {
      a.a();
      if (FileExplorerActivity.y(b).isShowing()) {
        FileExplorerActivity.y(b).dismiss();
      }
      com.estrongs.fs.a.b.a().c("scannedserver://");
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.co
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
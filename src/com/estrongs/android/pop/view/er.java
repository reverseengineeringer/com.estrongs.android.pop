package com.estrongs.android.pop.view;

import com.estrongs.android.ui.dialog.ProgressDialog;
import com.estrongs.fs.impl.f.c;

class er
  extends Thread
{
  er(FileExplorerActivity paramFileExplorerActivity, com.estrongs.android.pop.app.service.b paramb) {}
  
  public void run()
  {
    if (c.a())
    {
      a.a();
      if (FileExplorerActivity.A(b).isShowing()) {
        FileExplorerActivity.A(b).dismiss();
      }
      com.estrongs.fs.a.b.a().c("scannedserver://");
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.er
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
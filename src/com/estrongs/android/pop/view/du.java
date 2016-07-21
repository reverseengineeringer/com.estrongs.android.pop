package com.estrongs.android.pop.view;

import com.estrongs.android.ui.dialog.ProgressDialog;

class du
  implements Runnable
{
  du(dt paramdt, boolean paramBoolean) {}
  
  public void run()
  {
    FileExplorerActivity.b(b.a);
    if ((!a) && (FileExplorerActivity.y(b.a) != null) && (FileExplorerActivity.y(b.a).isShowing())) {
      FileExplorerActivity.y(b.a).dismiss();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.du
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
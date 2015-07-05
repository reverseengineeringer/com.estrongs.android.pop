package com.estrongs.android.pop.view;

import com.estrongs.android.ui.dialog.ProgressDialog;

class f
  implements Runnable
{
  f(e parame, boolean paramBoolean) {}
  
  public void run()
  {
    FileExplorerActivity.b(b.a);
    if ((!a) && (FileExplorerActivity.A(b.a) != null) && (FileExplorerActivity.A(b.a).isShowing())) {
      FileExplorerActivity.A(b.a).dismiss();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
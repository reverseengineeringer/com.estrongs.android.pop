package com.estrongs.android.ui.a;

import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.dialog.ij;
import com.estrongs.android.ui.theme.al;

final class cl
  implements Runnable
{
  cl(FileExplorerActivity paramFileExplorerActivity, al paramal) {}
  
  public void run()
  {
    if (ij.a(a))
    {
      a.runOnUiThread(new cn(this));
      return;
    }
    a.runOnUiThread(new cm(this));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.a.cl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
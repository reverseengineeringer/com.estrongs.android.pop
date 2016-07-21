package com.estrongs.android.ui.adapter;

import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.dialog.is;
import com.estrongs.android.ui.theme.at;

final class cx
  implements Runnable
{
  cx(FileExplorerActivity paramFileExplorerActivity, at paramat) {}
  
  public void run()
  {
    if (is.a(a))
    {
      a.runOnUiThread(new cz(this));
      return;
    }
    a.runOnUiThread(new cy(this));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.adapter.cx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
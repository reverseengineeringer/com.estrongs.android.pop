package com.estrongs.android.ui.dialog;

import com.estrongs.android.appinfo.u;
import com.estrongs.android.pop.view.FileExplorerActivity;

class ag
  implements u
{
  ag(af paramaf) {}
  
  public void a()
  {
    FileExplorerActivity localFileExplorerActivity = FileExplorerActivity.J();
    if (localFileExplorerActivity != null) {
      localFileExplorerActivity.runOnUiThread(new ah(this, localFileExplorerActivity));
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.ag
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
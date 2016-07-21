package com.estrongs.android.ui.dialog;

import com.estrongs.android.appinfo.v;
import com.estrongs.android.pop.view.FileExplorerActivity;

class ai
  implements v
{
  ai(ah paramah) {}
  
  public void a()
  {
    FileExplorerActivity localFileExplorerActivity = FileExplorerActivity.X();
    if (localFileExplorerActivity != null) {
      localFileExplorerActivity.runOnUiThread(new aj(this, localFileExplorerActivity));
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.ai
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
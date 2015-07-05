package com.estrongs.android.pop.utils;

import com.estrongs.a.a;
import com.estrongs.a.a.o;
import com.estrongs.a.p;
import com.estrongs.android.pop.view.FileExplorerActivity;

class by
  implements o
{
  by(bn parambn, boolean paramBoolean) {}
  
  public void a(a parama, boolean paramBoolean)
  {
    FileExplorerActivity localFileExplorerActivity = FileExplorerActivity.J();
    if (localFileExplorerActivity != null) {
      localFileExplorerActivity.W();
    }
    if (a) {
      localFileExplorerActivity.a(new bz(this));
    }
    if (getTaskResulta == 17) {
      localFileExplorerActivity.runOnUiThread(new ca(this, localFileExplorerActivity));
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.utils.by
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.estrongs.android.pop.utils;

import com.estrongs.a.a;
import com.estrongs.a.a.o;
import com.estrongs.a.p;
import com.estrongs.android.pop.view.FileExplorerActivity;

class ch
  implements o
{
  ch(bv parambv, boolean paramBoolean) {}
  
  public void a(a parama, boolean paramBoolean)
  {
    FileExplorerActivity localFileExplorerActivity = FileExplorerActivity.X();
    if (localFileExplorerActivity != null) {
      localFileExplorerActivity.am();
    }
    if (a) {
      localFileExplorerActivity.a(new ci(this));
    }
    if (getTaskResulta == 17) {
      localFileExplorerActivity.runOnUiThread(new cj(this, localFileExplorerActivity));
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.utils.ch
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
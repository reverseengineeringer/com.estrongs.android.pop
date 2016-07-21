package com.estrongs.android.ui.adapter;

import com.estrongs.android.appinfo.r;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.fs.h;

class n
  implements r
{
  int a = 0;
  
  n(k paramk) {}
  
  public void a()
  {
    if (a > 0)
    {
      FileExplorerActivity localFileExplorerActivity = FileExplorerActivity.X();
      if (localFileExplorerActivity != null) {
        localFileExplorerActivity.runOnUiThread(new o(this));
      }
    }
  }
  
  public void a(h paramh)
  {
    a += 1;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.adapter.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.estrongs.android.ui.a;

import com.estrongs.android.appinfo.q;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.fs.h;

class n
  implements q
{
  int a = 0;
  
  n(k paramk) {}
  
  public void a()
  {
    if (a > 0)
    {
      FileExplorerActivity localFileExplorerActivity = FileExplorerActivity.J();
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
 * Qualified Name:     com.estrongs.android.ui.a.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.estrongs.android.pop.view;

import com.estrongs.android.j.c;
import com.estrongs.android.pop.utils.w;

class dz
  implements Runnable
{
  dz(FileExplorerActivity paramFileExplorerActivity) {}
  
  public void run()
  {
    w.a(a);
    if (FileExplorerActivity.s(a) != null) {
      FileExplorerActivity.s(a).a("TaskManager_Show");
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.dz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
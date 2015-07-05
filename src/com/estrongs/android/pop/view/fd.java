package com.estrongs.android.pop.view;

import com.estrongs.android.util.am;
import com.estrongs.android.view.aw;

class fd
  implements Runnable
{
  fd(FileExplorerActivity paramFileExplorerActivity) {}
  
  public void run()
  {
    aw localaw = a.y();
    String str = a.z();
    if ((localaw != null) && (str != null) && (!localaw.O()))
    {
      if ((am.aX(a.z())) && (!am.X(am.bz(a.z()))))
      {
        a.y().a(0L);
        a.y().m("all");
      }
      localaw.f();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.fd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
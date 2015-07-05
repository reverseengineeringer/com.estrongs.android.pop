package com.estrongs.android.pop.view;

import android.app.Activity;
import com.estrongs.android.util.am;
import com.estrongs.android.view.cb;
import com.estrongs.android.view.cd;
import com.estrongs.fs.h;
import com.estrongs.fs.util.a.a;

class dt
  extends cd
{
  dt(FileExplorerActivity paramFileExplorerActivity, Activity paramActivity, a parama, cb paramcb)
  {
    super(paramActivity, parama, paramcb);
  }
  
  public h j()
  {
    if (w == null) {}
    while ((am.aN(w.getPath())) || (am.aF(w.getPath())) || (am.T(w.getPath()))) {
      return null;
    }
    return super.j();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.dt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.estrongs.android.ui.e;

import com.estrongs.android.pop.netfs.NetFsException;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.fs.impl.j.b;

class gt
  implements Runnable
{
  gt(gs paramgs, String paramString) {}
  
  public void run()
  {
    try
    {
      b.d(a);
      cp.a(b.a).a(new gu(this));
      return;
    }
    catch (NetFsException localNetFsException)
    {
      localNetFsException.printStackTrace();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.gt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
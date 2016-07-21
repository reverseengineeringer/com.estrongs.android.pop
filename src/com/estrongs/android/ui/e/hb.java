package com.estrongs.android.ui.e;

import com.estrongs.android.pop.netfs.NetFsException;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.fs.impl.o.b;

class hb
  implements Runnable
{
  hb(ha paramha, String paramString) {}
  
  public void run()
  {
    try
    {
      b.d(a);
      cr.b(b.a).a(new hc(this));
      return;
    }
    catch (NetFsException localNetFsException)
    {
      localNetFsException.printStackTrace();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.hb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.estrongs.android.pop.view;

import com.estrongs.android.pop.view.utils.RemoteSynchronizer;
import com.estrongs.android.ui.d.e;
import com.estrongs.android.util.be;
import com.estrongs.android.widget.ThumbContentViewSwitcher;

class bo
  extends Thread
{
  bo(FileExplorerActivity paramFileExplorerActivity, boolean paramBoolean) {}
  
  public void run()
  {
    if (!FileExplorerActivity.G(b))
    {
      e.a(b);
      e.d();
      if (b.f != null) {
        b.f.l();
      }
      if (!a) {
        break label91;
      }
      be.c().f();
      be.c().g();
    }
    for (;;)
    {
      be.c().d();
      try
      {
        if (com.estrongs.fs.impl.c.a.a()) {
          com.estrongs.fs.impl.c.a.b();
        }
        RemoteSynchronizer.e();
        if (com.estrongs.a.a.isAllTaskFinished()) {
          b.j();
        }
        return;
        label91:
        be.c().h();
      }
      catch (Throwable localThrowable)
      {
        for (;;) {}
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.bo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
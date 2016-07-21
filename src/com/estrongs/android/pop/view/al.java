package com.estrongs.android.pop.view;

import com.estrongs.android.pop.view.utils.RemoteSynchronizer;
import com.estrongs.android.ui.d.i;
import com.estrongs.android.util.bm;
import com.estrongs.android.widget.ThumbContentViewSwitcher;

class al
  extends Thread
{
  al(FileExplorerActivity paramFileExplorerActivity, boolean paramBoolean) {}
  
  public void run()
  {
    if (!FileExplorerActivity.C(b))
    {
      b.au().a(b);
      b.au().d();
      if (b.h != null) {
        b.h.i();
      }
      if (!a) {
        break label105;
      }
      bm.c().f();
      bm.c().g();
    }
    for (;;)
    {
      bm.c().d();
      try
      {
        if (com.estrongs.fs.impl.e.a.a()) {
          com.estrongs.fs.impl.e.a.b();
        }
        RemoteSynchronizer.e();
        if (com.estrongs.a.a.isAllTaskFinished()) {
          b.m();
        }
        return;
        label105:
        bm.c().h();
      }
      catch (Throwable localThrowable)
      {
        for (;;) {}
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.al
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
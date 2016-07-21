package com.estrongs.android.ui.drag;

import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.d.i;
import com.estrongs.android.util.ap;
import com.estrongs.android.view.cr;
import java.util.List;

class r
  implements Runnable
{
  r(q paramq) {}
  
  public void run()
  {
    for (;;)
    {
      int i;
      try
      {
        synchronized (aa.b).w)
        {
          List localList2 = aa.b).w;
          i = 0;
          if (i < localList2.size())
          {
            cr localcr = (cr)localList2.get(i);
            if (!a.a.equals(localcr.c())) {
              break label137;
            }
            if (i == a.b.getWindowListManager().a()) {
              localcr.g();
            } else {
              localcr.i(true);
            }
          }
        }
        if (!ap.bl(a.a)) {
          break label134;
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        return;
      }
      FileExplorerActivity.g(true);
      label134:
      return;
      label137:
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.drag.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
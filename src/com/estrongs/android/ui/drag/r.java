package com.estrongs.android.ui.drag;

import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.d.e;
import com.estrongs.android.util.am;
import com.estrongs.android.view.aw;
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
        synchronized (aa.b).x)
        {
          List localList2 = aa.b).x;
          i = 0;
          if (i < localList2.size())
          {
            aw localaw = (aw)localList2.get(i);
            if (!a.a.equals(localaw.c())) {
              break label127;
            }
            if (i == e.a()) {
              localaw.g();
            } else {
              localaw.i(true);
            }
          }
        }
        if (!am.ba(a.a)) {
          break label124;
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        return;
      }
      FileExplorerActivity.h(true);
      label124:
      return;
      label127:
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.drag.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
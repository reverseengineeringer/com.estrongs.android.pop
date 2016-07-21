package com.estrongs.android.pop.view;

import com.estrongs.android.util.ap;
import com.estrongs.android.view.cr;
import java.util.List;

class p
  implements Runnable
{
  p(FileExplorerActivity paramFileExplorerActivity) {}
  
  public void run()
  {
    List localList = a.w;
    int i = 0;
    for (;;)
    {
      if (i < localList.size())
      {
        cr localcr = (cr)localList.get(i);
        if ((localcr != null) && (ap.cg(localcr.c()))) {
          a.b(localcr);
        }
      }
      else
      {
        return;
      }
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
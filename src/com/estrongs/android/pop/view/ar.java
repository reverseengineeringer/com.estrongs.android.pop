package com.estrongs.android.pop.view;

import com.estrongs.android.util.am;
import com.estrongs.android.view.aw;
import java.util.List;

class ar
  implements Runnable
{
  ar(FileExplorerActivity paramFileExplorerActivity) {}
  
  public void run()
  {
    List localList = a.x;
    int i = 0;
    for (;;)
    {
      if (i < localList.size())
      {
        aw localaw = (aw)localList.get(i);
        if ((localaw != null) && (am.bP(localaw.c()))) {
          a.b(localaw);
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
 * Qualified Name:     com.estrongs.android.pop.view.ar
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
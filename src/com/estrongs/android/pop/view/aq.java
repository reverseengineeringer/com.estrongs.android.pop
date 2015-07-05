package com.estrongs.android.pop.view;

import com.estrongs.android.util.am;
import com.estrongs.android.view.aw;
import java.util.List;

class aq
  implements Runnable
{
  aq(FileExplorerActivity paramFileExplorerActivity) {}
  
  public void run()
  {
    for (;;)
    {
      int i;
      try
      {
        synchronized (a.x)
        {
          List localList2 = a.x;
          i = 0;
          if (i < localList2.size())
          {
            aw localaw = (aw)localList2.get(i);
            if ((localaw == null) || (!am.X(localaw.c()))) {
              break label102;
            }
            if (localaw == a.y()) {
              localaw.g();
            } else {
              localaw.a(true, true);
            }
          }
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        return;
      }
      return;
      label102:
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.aq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
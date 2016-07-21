package com.estrongs.android.pop.view;

import com.estrongs.android.ui.c.e;
import com.estrongs.android.util.ap;
import com.estrongs.android.view.cr;
import com.estrongs.android.view.er;
import java.util.List;

class o
  implements Runnable
{
  o(FileExplorerActivity paramFileExplorerActivity) {}
  
  public void run()
  {
    for (;;)
    {
      int i;
      try
      {
        cr localcr;
        synchronized (a.w)
        {
          List localList2 = a.w;
          i = 0;
          if (i >= localList2.size()) {
            break label135;
          }
          localcr = (cr)localList2.get(i);
          if ((localcr == null) || ((!ap.ah(localcr.c())) && (!ap.by(localcr.c())))) {
            break label138;
          }
          if (localcr == a.O()) {
            if (((localcr instanceof e)) || ((localcr instanceof er))) {
              localcr.b(true);
            } else {
              localcr.g();
            }
          }
        }
        localcr.a(true, true);
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        return;
      }
      break label138;
      label135:
      return;
      label138:
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
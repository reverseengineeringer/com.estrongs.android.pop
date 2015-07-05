package com.estrongs.android.pop.view;

import android.os.Handler;
import com.estrongs.a.a;
import com.estrongs.a.o;
import com.estrongs.android.view.aw;
import java.util.Iterator;
import java.util.List;

class az
  implements o
{
  az(FileExplorerActivity paramFileExplorerActivity) {}
  
  private void a()
  {
    synchronized (a.x)
    {
      Iterator localIterator = a.x.iterator();
      while (localIterator.hasNext())
      {
        aw localaw = (aw)localIterator.next();
        if ((localaw != null) && ("download://".equals(localaw.c())))
        {
          a.h.post(new ba(this, localaw));
          return;
        }
      }
      return;
    }
  }
  
  public void a(a parama)
  {
    a();
  }
  
  public void b(a parama)
  {
    a();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.az
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
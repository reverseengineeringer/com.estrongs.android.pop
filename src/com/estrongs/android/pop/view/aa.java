package com.estrongs.android.pop.view;

import android.os.Handler;
import com.estrongs.a.a;
import com.estrongs.a.o;
import com.estrongs.android.view.cr;
import java.util.Iterator;
import java.util.List;

class aa
  implements o
{
  aa(FileExplorerActivity paramFileExplorerActivity) {}
  
  private void a()
  {
    synchronized (a.w)
    {
      Iterator localIterator = a.w.iterator();
      while (localIterator.hasNext())
      {
        cr localcr = (cr)localIterator.next();
        if ((localcr != null) && ("download://".equals(localcr.c())))
        {
          a.i.post(new ab(this, localcr));
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
 * Qualified Name:     com.estrongs.android.pop.view.aa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
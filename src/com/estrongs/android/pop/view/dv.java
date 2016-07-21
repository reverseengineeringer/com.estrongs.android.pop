package com.estrongs.android.pop.view;

import com.estrongs.android.view.cr;
import java.util.Iterator;
import java.util.List;

class dv
  implements Runnable
{
  dv(dt paramdt) {}
  
  public void run()
  {
    if (("smb://".equals(a.a.P())) || ("ftp://".equals(a.a.P())) || ("adb://".equals(a.a.P()))) {
      a.a.A();
    }
    Iterator localIterator = a.a.w.iterator();
    while (localIterator.hasNext())
    {
      cr localcr = (cr)localIterator.next();
      if (("smb://".equals(localcr.c())) || ("ftp://".equals(localcr.c())) || ("adb://".equals(localcr.c()))) {
        localcr.a(true, true);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.dv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
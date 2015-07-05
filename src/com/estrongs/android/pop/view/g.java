package com.estrongs.android.pop.view;

import com.estrongs.android.view.aw;
import java.util.Iterator;
import java.util.List;

class g
  implements Runnable
{
  g(e parame) {}
  
  public void run()
  {
    if (("smb://".equals(a.a.z())) || ("ftp://".equals(a.a.z())) || ("adb://".equals(a.a.z()))) {
      a.a.r();
    }
    Iterator localIterator = a.a.x.iterator();
    while (localIterator.hasNext())
    {
      aw localaw = (aw)localIterator.next();
      if (("smb://".equals(localaw.c())) || ("ftp://".equals(localaw.c())) || ("adb://".equals(localaw.c()))) {
        localaw.a(true, true);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
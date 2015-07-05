package com.estrongs.android.appinfo;

import com.estrongs.fs.h;
import java.util.Iterator;
import java.util.List;

class d
  extends Thread
{
  d(AppFolderInfoManager paramAppFolderInfoManager, List paramList, q paramq) {}
  
  public void run()
  {
    if (c.c == null) {
      c.a();
    }
    if (c.c != null)
    {
      Iterator localIterator = a.iterator();
      while (localIterator.hasNext())
      {
        h localh = (h)localIterator.next();
        if (c.a(localh) != null) {
          b.a(localh);
        }
      }
    }
    b.a();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.appinfo.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.estrongs.fs.impl.n;

import com.estrongs.android.util.ap;
import com.estrongs.fs.h;
import java.util.Iterator;
import java.util.List;

class c
  implements com.estrongs.fs.i
{
  private List<com.estrongs.android.pop.app.c.i> b;
  
  public c(List<com.estrongs.android.pop.app.c.i> paramList)
  {
    List localList;
    b = localList;
  }
  
  public boolean a(h paramh)
  {
    Iterator localIterator = b.iterator();
    while (localIterator.hasNext()) {
      if (ap.e(nextb, paramh.getAbsolutePath())) {
        return true;
      }
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.n.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
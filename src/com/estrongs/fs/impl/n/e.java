package com.estrongs.fs.impl.n;

import com.estrongs.android.util.ap;
import com.estrongs.fs.h;
import java.util.Iterator;
import java.util.List;

class e
  implements com.estrongs.fs.i
{
  private List<com.estrongs.android.pop.app.c.i> b;
  
  public e(List<com.estrongs.android.pop.app.c.i> paramList)
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
 * Qualified Name:     com.estrongs.fs.impl.n.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
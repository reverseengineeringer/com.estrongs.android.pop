package com.estrongs.android.ui.recycler;

import java.util.ArrayList;
import java.util.Iterator;

class p
  implements Runnable
{
  p(n paramn, ArrayList paramArrayList) {}
  
  public void run()
  {
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext())
    {
      x localx = (x)localIterator.next();
      b.a(localx);
    }
    a.clear();
    n.b(b).remove(a);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.recycler.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.estrongs.android.ui.recycler;

import java.util.ArrayList;
import java.util.Iterator;

class o
  implements Runnable
{
  o(n paramn, ArrayList paramArrayList) {}
  
  public void run()
  {
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext())
    {
      y localy = (y)localIterator.next();
      b.a(a, b, c, d, e);
    }
    a.clear();
    n.a(b).remove(a);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.recycler.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
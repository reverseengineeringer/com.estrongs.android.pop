package com.estrongs.android.pop;

import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.util.TypedMap;

class k
  implements Runnable
{
  k(j paramj) {}
  
  public void run()
  {
    TypedMap localTypedMap = new TypedMap();
    localTypedMap.put("refresh", Boolean.valueOf(true));
    ((FileExplorerActivity)a.b.a).c(a.a, localTypedMap);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
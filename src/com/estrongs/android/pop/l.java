package com.estrongs.android.pop;

import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.util.TypedMap;

class l
  implements Runnable
{
  l(k paramk) {}
  
  public void run()
  {
    TypedMap localTypedMap = new TypedMap();
    localTypedMap.put("refresh", Boolean.valueOf(true));
    ((FileExplorerActivity)a.b.a).c(a.a, localTypedMap);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
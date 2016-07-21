package com.estrongs.android.pop.view;

import com.estrongs.android.util.q;
import java.util.List;

class ar
  implements Runnable
{
  ar(aq paramaq) {}
  
  public void run()
  {
    while (FileExplorerActivity.c(a.a).size() > 0) {
      FileExplorerActivity.a(a.a, (q)FileExplorerActivity.c(a.a).remove(0), false);
    }
    if (FileExplorerActivity.d(a.a) == null) {
      a.a.ae();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.ar
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
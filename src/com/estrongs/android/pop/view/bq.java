package com.estrongs.android.pop.view;

import com.estrongs.android.util.o;
import java.util.List;

class bq
  implements Runnable
{
  bq(bp parambp) {}
  
  public void run()
  {
    while (FileExplorerActivity.d(a.a).size() > 0) {
      FileExplorerActivity.a(a.a, (o)FileExplorerActivity.d(a.a).remove(0), false);
    }
    if (FileExplorerActivity.e(a.a) == null) {
      FileExplorerActivity.f(a.a);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.bq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
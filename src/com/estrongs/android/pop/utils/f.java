package com.estrongs.android.pop.utils;

import com.estrongs.a.a;
import com.estrongs.a.a.p;
import com.estrongs.android.pop.view.FileExplorerActivity;

class f
  implements p
{
  f(c paramc, FileExplorerActivity paramFileExplorerActivity) {}
  
  public void a(a parama, int paramInt1, int paramInt2)
  {
    if (paramInt2 == 5) {
      a.runOnUiThread(new g(this));
    }
    while (paramInt2 != 4) {
      return;
    }
    a.runOnUiThread(new h(this));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.utils.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
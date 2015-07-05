package com.estrongs.android.ui.pcs;

import com.estrongs.android.pop.utils.cg;
import com.estrongs.android.pop.view.FileExplorerActivity;

class af
  implements Runnable
{
  af(w paramw) {}
  
  public void run()
  {
    w.b(a, cg.b());
    FileExplorerActivity.J().runOnUiThread(new ag(this));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.pcs.af
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
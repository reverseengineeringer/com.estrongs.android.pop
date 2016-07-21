package com.estrongs.android.ui.pcs;

import com.estrongs.android.pop.utils.cp;
import com.estrongs.android.pop.view.FileExplorerActivity;

class ai
  implements Runnable
{
  ai(z paramz) {}
  
  public void run()
  {
    z.b(a, cp.b());
    FileExplorerActivity.X().runOnUiThread(new aj(this));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.pcs.ai
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
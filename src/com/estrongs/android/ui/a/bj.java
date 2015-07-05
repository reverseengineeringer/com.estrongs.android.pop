package com.estrongs.android.ui.a;

import android.os.Handler;
import android.widget.CompoundButton;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.dialog.ij;

class bj
  implements Runnable
{
  bj(bi parambi, CompoundButton paramCompoundButton) {}
  
  public void run()
  {
    if (ij.a(aa.a(b.a))) {
      return;
    }
    aa.a(b.a).runOnUiThread(new bk(this));
    aa.e(b.a).post(new bl(this));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.a.bj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.estrongs.android.ui.adapter;

import android.os.Handler;
import android.widget.CompoundButton;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.dialog.is;

class bv
  implements Runnable
{
  bv(bu parambu, CompoundButton paramCompoundButton) {}
  
  public void run()
  {
    if (is.a(ListAdapter_NewNavi.a(b.a))) {
      return;
    }
    ListAdapter_NewNavi.a(b.a).runOnUiThread(new bw(this));
    ListAdapter_NewNavi.d(b.a).post(new bx(this));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.adapter.bv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
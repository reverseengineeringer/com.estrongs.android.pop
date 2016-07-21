package com.estrongs.android.ui.e;

import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.dialog.ci;

class dr
  implements Runnable
{
  dr(dq paramdq) {}
  
  public void run()
  {
    ci localci = new ci(cr.b(a.a.a));
    localci.setTitle(cr.b(a.a.a).getString(2131231504));
    localci.setMessage(cr.b(a.a.a).getString(2131231503));
    localci.setCancelButton(cr.b(a.a.a).getString(2131231265), new ds(this));
    localci.setConfirmButton(cr.b(a.a.a).getString(2131231502), new dt(this));
    localci.show();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.dr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
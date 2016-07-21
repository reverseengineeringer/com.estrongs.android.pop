package com.estrongs.android.ui.dialog;

import android.content.Context;

class gs
  implements Runnable
{
  gs(gn paramgn) {}
  
  public void run()
  {
    if (gn.a(a) == null)
    {
      a.a = new ProgressDialog(gn.e(a));
      a.a.setCancelable(false);
      a.a.a(ProgressDialog.ProgressStyle.roll);
      a.a.setMessage(gn.e(a).getString(2131232182));
      a.a.setTitle(gn.e(a).getString(2131231689));
      a.a.show();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.gs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
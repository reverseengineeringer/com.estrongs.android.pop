package com.estrongs.android.ui.dialog;

import android.content.Context;

class gp
  implements Runnable
{
  gp(gk paramgk) {}
  
  public void run()
  {
    if (gk.a(a) == null)
    {
      a.a = new ProgressDialog(gk.e(a));
      a.a.setCancelable(false);
      a.a.a(ProgressDialog.ProgressStyle.roll);
      a.a.setMessage(gk.e(a).getString(2131427442));
      a.a.setTitle(gk.e(a).getString(2131428529));
      a.a.show();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.gp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.estrongs.android.ui.e;

import android.content.Context;
import com.estrongs.android.pop.app.a.ao;
import com.estrongs.android.ui.dialog.ProgressDialog;

final class bv
  implements Runnable
{
  bv(ProgressDialog[] paramArrayOfProgressDialog, Context paramContext) {}
  
  public void run()
  {
    if (!ao.a().d()) {
      a[0] = ProgressDialog.a(b, b.getString(2131428167), b.getString(2131428168), true, false);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.bv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
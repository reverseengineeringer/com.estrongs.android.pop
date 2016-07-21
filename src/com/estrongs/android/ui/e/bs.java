package com.estrongs.android.ui.e;

import android.content.Context;
import com.estrongs.android.pop.app.c.m;
import com.estrongs.android.ui.dialog.ProgressDialog;

final class bs
  implements Runnable
{
  bs(ProgressDialog[] paramArrayOfProgressDialog, Context paramContext) {}
  
  public void run()
  {
    if (!m.a().d()) {
      a[0] = ProgressDialog.a(b, b.getString(2131231748), b.getString(2131231781), true, false);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.bs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
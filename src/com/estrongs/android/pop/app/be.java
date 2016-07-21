package com.estrongs.android.pop.app;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.android.ui.pcs.q;
import com.estrongs.android.ui.pcs.r;

final class be
  implements DialogInterface.OnClickListener
{
  be(Activity paramActivity, q paramq, DialogInterface.OnCancelListener paramOnCancelListener) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    r localr = new r(a);
    localr.a(b);
    localr.setOnCancelListener(c);
    localr.a(true);
    paramDialogInterface.dismiss();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.be
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
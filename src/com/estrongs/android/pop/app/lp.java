package com.estrongs.android.pop.app;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.android.ui.dialog.ci;
import com.estrongs.android.ui.pcs.r;

class lp
  implements DialogInterface.OnClickListener
{
  lp(ShowDialogActivity paramShowDialogActivity, ci paramci) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    a.setOnDismissListener(null);
    paramDialogInterface.dismiss();
    paramDialogInterface = new r(b);
    paramDialogInterface.a(new lq(this));
    paramDialogInterface.a(true);
    paramDialogInterface.setOnDismissListener(new lr(this));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.lp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
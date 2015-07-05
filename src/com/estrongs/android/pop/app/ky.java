package com.estrongs.android.pop.app;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.android.ui.dialog.cg;
import com.estrongs.android.ui.pcs.o;

class ky
  implements DialogInterface.OnClickListener
{
  ky(ShowDialogActivity paramShowDialogActivity, cg paramcg) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    a.setOnDismissListener(null);
    paramDialogInterface.dismiss();
    paramDialogInterface = new o(b);
    paramDialogInterface.a(new kz(this));
    paramDialogInterface.a(true);
    paramDialogInterface.setOnDismissListener(new la(this));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.ky
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.estrongs.android.ui.dialog;

import android.app.Dialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.DialogInterface.OnDismissListener;
import com.estrongs.android.pop.esclasses.ESActivity;
import com.estrongs.android.pop.utils.aj;
import com.estrongs.android.ui.view.ag;
import java.text.MessageFormat;

class bk
  implements DialogInterface.OnClickListener
{
  bk(bj parambj, ESActivity paramESActivity, DialogInterface.OnDismissListener paramOnDismissListener) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (c.a() == 0)
    {
      paramDialogInterface = MessageFormat.format(a.getString(2131427960), new Object[] { a.getString(2131427427) });
      ag.a(a, paramDialogInterface, 0);
      return;
    }
    paramDialogInterface = (Dialog)paramDialogInterface;
    paramDialogInterface.setOnDismissListener(null);
    paramDialogInterface.dismiss();
    if (b != null) {
      b.onDismiss(paramDialogInterface);
    }
    paramDialogInterface = new bl(this);
    aj.a(a, c.b(), true, false, paramDialogInterface, true, c.f, false);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.bk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
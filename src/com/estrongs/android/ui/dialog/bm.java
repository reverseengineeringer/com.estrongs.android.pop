package com.estrongs.android.ui.dialog;

import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;
import com.estrongs.android.pop.esclasses.ESActivity;

class bm
  implements DialogInterface.OnDismissListener
{
  bm(bj parambj, DialogInterface.OnDismissListener paramOnDismissListener, ESActivity paramESActivity) {}
  
  public void onDismiss(DialogInterface paramDialogInterface)
  {
    if (a != null) {
      a.onDismiss(paramDialogInterface);
    }
    b.finish();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.bm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
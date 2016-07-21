package com.estrongs.android.ui.dialog;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;

class bo
  implements DialogInterface.OnDismissListener
{
  bo(bl parambl, DialogInterface.OnDismissListener paramOnDismissListener) {}
  
  public void onDismiss(DialogInterface paramDialogInterface)
  {
    if (a != null) {
      a.onDismiss(paramDialogInterface);
    }
    b.a.finish();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.bo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
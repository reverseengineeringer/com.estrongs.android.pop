package com.estrongs.android.ui.dialog;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

class x
  implements DialogInterface.OnClickListener
{
  x(u paramu) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    new y(this).start();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.x
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
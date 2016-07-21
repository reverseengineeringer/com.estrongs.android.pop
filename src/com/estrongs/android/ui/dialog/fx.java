package com.estrongs.android.ui.dialog;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

class fx
  implements DialogInterface.OnClickListener
{
  fx(fv paramfv) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.fx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
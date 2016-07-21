package com.estrongs.android.ui.dialog;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

class dm
  implements DialogInterface.OnClickListener
{
  dm(dl paramdl) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.dm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
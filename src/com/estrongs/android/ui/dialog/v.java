package com.estrongs.android.ui.dialog;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

class v
  implements DialogInterface.OnClickListener
{
  v(t paramt) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    new w(this).start();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.v
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
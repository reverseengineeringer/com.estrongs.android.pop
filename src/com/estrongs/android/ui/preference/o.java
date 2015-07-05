package com.estrongs.android.ui.preference;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

class o
  implements DialogInterface.OnClickListener
{
  o(FtpServerPreference paramFtpServerPreference) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    FtpServerPreference.b(a);
    paramDialogInterface.dismiss();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.preference.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
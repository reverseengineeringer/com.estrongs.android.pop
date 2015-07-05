package com.estrongs.android.pop.app;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

class lc
  implements DialogInterface.OnClickListener
{
  lc(ShowDialogActivity paramShowDialogActivity) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.lc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.estrongs.android.ui.e;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

class dc
  implements DialogInterface.OnClickListener
{
  dc(db paramdb) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.dc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
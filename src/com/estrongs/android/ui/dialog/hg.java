package com.estrongs.android.ui.dialog;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.android.util.m;

class hg
  implements DialogInterface.OnClickListener
{
  hg(hc paramhc, m paramm) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (a.isAlive()) {
      a.a();
    }
    paramDialogInterface.dismiss();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.hg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
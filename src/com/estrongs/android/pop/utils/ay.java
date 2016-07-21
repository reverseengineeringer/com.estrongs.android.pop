package com.estrongs.android.pop.utils;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.android.ui.pcs.r;

final class ay
  implements DialogInterface.OnClickListener
{
  ay(Context paramContext) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    new r(a, false).show();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.utils.ay
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
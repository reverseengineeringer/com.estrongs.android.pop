package com.estrongs.android.pop.utils;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.android.ui.pcs.o;

final class aq
  implements DialogInterface.OnClickListener
{
  aq(Context paramContext) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    new o(a, false).show();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.utils.aq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
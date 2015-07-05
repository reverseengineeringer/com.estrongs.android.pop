package com.estrongs.io.archive.sevenzip;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.ConditionVariable;

class i
  implements DialogInterface.OnClickListener
{
  i(h paramh) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    if (a.l != null) {
      a.l[0] = true;
    }
    if (a.a[0] != 0) {
      a.i[0] = true;
    }
    for (;;)
    {
      if (a.k) {
        a.h.open();
      }
      return;
      a.i[0] = false;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.io.archive.sevenzip.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
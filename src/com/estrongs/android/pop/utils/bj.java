package com.estrongs.android.pop.utils;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.android.ui.pcs.c;
import com.estrongs.android.ui.pcs.q;

final class bj
  implements DialogInterface.OnClickListener
{
  bj(Activity paramActivity, q paramq, Boolean[] paramArrayOfBoolean) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    c localc = new c(a);
    localc.a();
    localc.a(b);
    c[0] = Boolean.valueOf(false);
    paramDialogInterface.dismiss();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.utils.bj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
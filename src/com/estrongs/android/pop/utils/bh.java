package com.estrongs.android.pop.utils;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.android.ui.pcs.l;
import com.estrongs.android.ui.pcs.q;

final class bh
  implements DialogInterface.OnClickListener
{
  bh(Activity paramActivity, q paramq, Boolean[] paramArrayOfBoolean) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    l locall = new l(a);
    locall.a(b);
    locall.a(true);
    c[0] = Boolean.valueOf(false);
    paramDialogInterface.dismiss();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.utils.bh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
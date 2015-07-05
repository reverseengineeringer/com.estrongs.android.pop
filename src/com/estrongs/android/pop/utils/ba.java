package com.estrongs.android.pop.utils;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.android.ui.pcs.n;
import com.estrongs.android.ui.pcs.o;

final class ba
  implements DialogInterface.OnClickListener
{
  ba(Activity paramActivity, n paramn, Boolean[] paramArrayOfBoolean) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    o localo = new o(a);
    localo.a(b);
    localo.a(true);
    c[0] = Boolean.valueOf(false);
    paramDialogInterface.dismiss();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.utils.ba
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
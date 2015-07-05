package com.estrongs.android.pop.utils;

import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;
import com.estrongs.android.pop.esclasses.ESActivity;
import com.estrongs.android.util.bd;

class bt
  implements DialogInterface.OnDismissListener
{
  bt(bn parambn, ESActivity paramESActivity) {}
  
  public void onDismiss(DialogInterface paramDialogInterface)
  {
    if (bd.b(a)) {
      a.finish();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.utils.bt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
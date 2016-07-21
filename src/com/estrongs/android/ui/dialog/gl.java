package com.estrongs.android.ui.dialog;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

class gl
  implements DialogInterface.OnClickListener
{
  gl(gk paramgk) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    gk.a(a, paramInt);
    gk.b(a, a.b[gk.a(a)]);
    if (gk.b(a) != null) {
      gk.b(a).a(gk.c(a), a.c[gk.a(a)]);
    }
    paramDialogInterface.dismiss();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.gl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
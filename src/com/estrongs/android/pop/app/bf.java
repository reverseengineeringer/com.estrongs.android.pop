package com.estrongs.android.pop.app;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.android.ui.pcs.c;
import com.estrongs.android.ui.pcs.q;

final class bf
  implements DialogInterface.OnClickListener
{
  bf(Activity paramActivity, q paramq, DialogInterface.OnCancelListener paramOnCancelListener) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    c localc = new c(a);
    localc.a();
    localc.a(b);
    localc.a(c);
    paramDialogInterface.dismiss();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.bf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
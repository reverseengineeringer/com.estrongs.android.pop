package com.estrongs.android.pop.app;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.android.ui.pcs.l;
import com.estrongs.android.ui.pcs.q;
import com.estrongs.android.ui.pcs.u;

final class bd
  implements DialogInterface.OnClickListener
{
  bd(Activity paramActivity, q paramq, DialogInterface.OnCancelListener paramOnCancelListener) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    l locall = new l(a);
    locall.a(b);
    locall.setOnCancelListener(c);
    locall.a(true);
    u.a().a(locall);
    paramDialogInterface.dismiss();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.bd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
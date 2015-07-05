package com.estrongs.android.pop.app;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.android.ui.pcs.j;
import com.estrongs.android.ui.pcs.n;
import com.estrongs.android.ui.pcs.r;

final class az
  implements DialogInterface.OnClickListener
{
  az(Activity paramActivity, n paramn, DialogInterface.OnCancelListener paramOnCancelListener) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    j localj = new j(a);
    localj.a(b);
    localj.setOnCancelListener(c);
    localj.a(true);
    r.a().a(localj);
    paramDialogInterface.dismiss();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.az
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
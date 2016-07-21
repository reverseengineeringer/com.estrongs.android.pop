package com.estrongs.android.pop.app;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.android.pop.view.utils.AppRunner;
import com.estrongs.android.ui.dialog.ci;

class ll
  implements DialogInterface.OnClickListener
{
  ll(ShowDialogActivity paramShowDialogActivity, String paramString, ci paramci) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (AppRunner.r(c, a) == null)
    {
      b.setOnDismissListener(null);
      b.dismiss();
      AppRunner.t(c, a).setOnDismissListener(new lm(this));
      return;
    }
    AppRunner.a(c, a, a);
    paramDialogInterface.dismiss();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.ll
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
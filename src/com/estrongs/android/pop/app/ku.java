package com.estrongs.android.pop.app;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.android.pop.view.utils.AppRunner;
import com.estrongs.android.ui.dialog.cg;

class ku
  implements DialogInterface.OnClickListener
{
  ku(ShowDialogActivity paramShowDialogActivity, String paramString, cg paramcg) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (AppRunner.q(c, a) == null)
    {
      b.setOnDismissListener(null);
      b.dismiss();
      AppRunner.s(c, a).setOnDismissListener(new kv(this));
      return;
    }
    AppRunner.a(c, a, a);
    paramDialogInterface.dismiss();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.ku
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
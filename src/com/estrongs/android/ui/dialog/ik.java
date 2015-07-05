package com.estrongs.android.ui.dialog;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.android.pop.ad;
import com.estrongs.android.util.am;
import com.estrongs.fs.impl.local.l;

class ik
  implements DialogInterface.OnClickListener
{
  ik(ij paramij, Context paramContext) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface = ij.a(b).b();
    if (paramDialogInterface.length > 0) {
      ad.a(a).I(l.a(ij.a(b).a()));
    }
    try
    {
      l.b(paramDialogInterface);
      am.a(true);
      b.dismiss();
      return;
    }
    catch (Exception paramDialogInterface)
    {
      for (;;)
      {
        paramDialogInterface.printStackTrace();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.ik
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
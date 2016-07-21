package com.estrongs.android.ui.dialog;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.android.pop.ad;
import com.estrongs.android.util.ap;
import com.estrongs.fs.impl.local.m;

class it
  implements DialogInterface.OnClickListener
{
  it(is paramis, Context paramContext) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface = is.a(b).b();
    if (paramDialogInterface.length > 0) {
      ad.a(a).I(m.a(is.a(b).a()));
    }
    try
    {
      m.b(paramDialogInterface);
      ap.a(true);
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
 * Qualified Name:     com.estrongs.android.ui.dialog.it
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
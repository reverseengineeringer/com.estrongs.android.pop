package com.estrongs.android.ui.dialog;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.android.e.h;
import com.estrongs.android.ui.view.ag;

class kx
  implements DialogInterface.OnClickListener
{
  kx(kw paramkw) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface = kw.a(a);
    if (paramDialogInterface == null)
    {
      a.dismiss();
      ag.a(a.mContext, 2131427529, 1);
      return;
    }
    a.dismiss();
    kw.b(a).a(paramDialogInterface);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.kx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
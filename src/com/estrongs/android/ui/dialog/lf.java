package com.estrongs.android.ui.dialog;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.android.l.k;
import com.estrongs.android.ui.view.ak;

class lf
  implements DialogInterface.OnClickListener
{
  lf(le paramle) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface = le.a(a);
    if (paramDialogInterface == null)
    {
      a.dismiss();
      ak.a(a.mContext, 2131232563, 1);
      return;
    }
    a.dismiss();
    le.b(a).a(paramDialogInterface);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.lf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
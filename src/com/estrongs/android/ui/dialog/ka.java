package com.estrongs.android.ui.dialog;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.a.a;

class ka
  implements DialogInterface.OnClickListener
{
  ka(jh paramjh) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (jh.a(a).canPause())
    {
      jh.a(a).requsestPause();
      if (jh.a(a).canHide()) {
        a.setRightButton(a.mContext.getString(2131231909), jh.b(a));
      }
    }
    else
    {
      return;
    }
    a.setConfirmButton(a.mContext.getString(2131231909), jh.b(a));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.ka
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.estrongs.android.ui.dialog;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.a.a;

class jq
  implements DialogInterface.OnClickListener
{
  jq(ix paramix) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (ix.a(a).canPause())
    {
      ix.a(a).resume();
      if (ix.a(a).canHide()) {
        a.setRightButton(a.mContext.getString(2131427395), ix.c(a));
      }
    }
    else
    {
      return;
    }
    a.setConfirmButton(a.mContext.getString(2131427395), ix.c(a));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.jq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
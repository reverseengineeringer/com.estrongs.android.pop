package com.estrongs.android.ui.dialog;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.fs.impl.local.m;

class kc
  implements DialogInterface.OnClickListener
{
  kc(jh paramjh) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    a.dismiss();
    m.b(a.mContext);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.kc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
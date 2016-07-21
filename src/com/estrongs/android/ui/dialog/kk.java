package com.estrongs.android.ui.dialog;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.a.a;

class kk
  implements DialogInterface.OnClickListener
{
  kk(kh paramkh, a parama) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (a.canPause())
    {
      a.requsestPause();
      b.setMiddleButton(b.getString(2131231909), kh.a(b));
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.kk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
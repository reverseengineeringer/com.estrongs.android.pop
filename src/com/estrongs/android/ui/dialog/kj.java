package com.estrongs.android.ui.dialog;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.a.a;

class kj
  implements DialogInterface.OnClickListener
{
  kj(kh paramkh, a parama) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (a.canCancel())
    {
      b.dismiss();
      a.requestStop();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.kj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
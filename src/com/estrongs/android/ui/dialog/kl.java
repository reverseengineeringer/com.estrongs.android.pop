package com.estrongs.android.ui.dialog;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.a.a;

class kl
  implements DialogInterface.OnClickListener
{
  kl(kh paramkh, a parama) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (a.canPause())
    {
      a.resume();
      b.setMiddleButton(b.getString(2131230873), kh.b(b));
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.kl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
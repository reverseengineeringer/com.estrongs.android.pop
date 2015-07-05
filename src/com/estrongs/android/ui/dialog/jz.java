package com.estrongs.android.ui.dialog;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.a.a;

class jz
  implements DialogInterface.OnClickListener
{
  jz(jw paramjw, a parama) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (a.canPause())
    {
      a.requsestPause();
      b.setMiddleButton(b.getString(2131428010), jw.a(b));
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.jz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
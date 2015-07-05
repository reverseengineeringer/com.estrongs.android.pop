package com.estrongs.android.ui.dialog;

import android.content.DialogInterface;
import android.content.DialogInterface.OnKeyListener;
import android.view.KeyEvent;

class kp
  implements DialogInterface.OnKeyListener
{
  kp(VerifyPasswordDialog paramVerifyPasswordDialog) {}
  
  public boolean onKey(DialogInterface paramDialogInterface, int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4) {
      paramDialogInterface.dismiss();
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.kp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
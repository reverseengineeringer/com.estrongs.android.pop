package com.estrongs.android.ui.dialog;

import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;
import java.util.Iterator;
import java.util.List;

class kq
  implements DialogInterface.OnDismissListener
{
  kq(VerifyPasswordDialog paramVerifyPasswordDialog) {}
  
  public void onDismiss(DialogInterface paramDialogInterface)
  {
    try
    {
      Iterator localIterator = VerifyPasswordDialog.c(a).iterator();
      while (localIterator.hasNext()) {
        ((DialogInterface.OnDismissListener)localIterator.next()).onDismiss(paramDialogInterface);
      }
      return;
    }
    catch (Exception paramDialogInterface)
    {
      paramDialogInterface.printStackTrace();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.kq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
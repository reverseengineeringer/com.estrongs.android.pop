package com.estrongs.android.ui.dialog;

import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;
import com.estrongs.fs.b.r;

class cb
  implements DialogInterface.OnDismissListener
{
  cb(ca paramca, DialogInterface.OnDismissListener paramOnDismissListener) {}
  
  public void onDismiss(DialogInterface paramDialogInterface)
  {
    if ((b.b != null) && (b.b.getTaskStatus() == 2))
    {
      ca.a(b, true);
      b.b.requestStop();
    }
    if (a != null) {
      a.onDismiss(paramDialogInterface);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.cb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
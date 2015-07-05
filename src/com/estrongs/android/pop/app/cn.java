package com.estrongs.android.pop.app;

import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;
import com.estrongs.android.ui.dialog.ff;
import com.estrongs.android.ui.dialog.ip;

class cn
  implements DialogInterface.OnDismissListener
{
  cn(cm paramcm, ip paramip) {}
  
  public void onDismiss(DialogInterface paramDialogInterface)
  {
    paramDialogInterface = a.a();
    if (paramDialogInterface == null) {
      return;
    }
    paramDialogInterface = new ff(b.a, paramDialogInterface);
    paramDialogInterface.a();
    paramDialogInterface.a(new co(this));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.cn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
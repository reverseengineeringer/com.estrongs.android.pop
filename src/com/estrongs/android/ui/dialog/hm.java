package com.estrongs.android.ui.dialog;

import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.view.aw;

class hm
  implements DialogInterface.OnDismissListener
{
  hm(hc paramhc) {}
  
  public void onDismiss(DialogInterface paramDialogInterface)
  {
    if (hc.c(a).e())
    {
      paramDialogInterface = FileExplorerActivity.J();
      if (paramDialogInterface != null)
      {
        paramDialogInterface = paramDialogInterface.y();
        if (paramDialogInterface != null) {
          paramDialogInterface.b(true);
        }
      }
    }
    hc.c(a).b();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.hm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.estrongs.android.ui.dialog;

import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.view.cr;

class hp
  implements DialogInterface.OnDismissListener
{
  hp(hf paramhf) {}
  
  public void onDismiss(DialogInterface paramDialogInterface)
  {
    if (hf.c(a).e())
    {
      paramDialogInterface = FileExplorerActivity.X();
      if (paramDialogInterface != null)
      {
        paramDialogInterface = paramDialogInterface.O();
        if (paramDialogInterface != null) {
          paramDialogInterface.b(true);
        }
      }
    }
    hf.c(a).b();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.hp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
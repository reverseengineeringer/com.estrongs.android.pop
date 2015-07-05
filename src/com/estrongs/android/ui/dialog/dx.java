package com.estrongs.android.ui.dialog;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.fs.impl.l.a;

class dx
  implements DialogInterface.OnClickListener
{
  dx(du paramdu) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    paramDialogInterface = FileExplorerActivity.J();
    if (paramDialogInterface != null) {
      a.a(paramDialogInterface, aa).a, new dy(this, paramDialogInterface));
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.dx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
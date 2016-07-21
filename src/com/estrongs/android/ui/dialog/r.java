package com.estrongs.android.ui.dialog;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.android.pop.app.i;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.view.cr;
import com.estrongs.fs.impl.b.d;

class r
  implements DialogInterface.OnClickListener
{
  r(o paramo) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    try
    {
      i.a(o.a(a), "action.unlock_apps", a.a.m());
      if ((o.a(a) instanceof FileExplorerActivity))
      {
        paramDialogInterface = ((FileExplorerActivity)o.a(a)).O();
        if (paramDialogInterface != null) {
          paramDialogInterface.i(true);
        }
      }
      return;
    }
    catch (Exception paramDialogInterface)
    {
      for (;;)
      {
        paramDialogInterface.printStackTrace();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
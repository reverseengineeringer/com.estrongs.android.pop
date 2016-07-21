package com.estrongs.android.ui.dialog;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.android.appinfo.AppFolderInfoManager;
import com.estrongs.fs.h;

class ah
  implements DialogInterface.OnClickListener
{
  ah(ag paramag, Context paramContext, h paramh) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (!c.b.b())
    {
      paramDialogInterface.dismiss();
      return;
    }
    String str = c.b.a();
    AppFolderInfoManager.d().a(a, b, str, true, new ai(this));
    paramDialogInterface.dismiss();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.ah
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
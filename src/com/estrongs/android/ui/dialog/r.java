package com.estrongs.android.ui.dialog;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.pm.ApplicationInfo;
import com.estrongs.android.pop.utils.w;
import com.estrongs.fs.impl.b.c;

class r
  implements DialogInterface.OnClickListener
{
  r(o paramo) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    try
    {
      w.a(o.a(a), a.a.c().packageName, "pname");
      return;
    }
    catch (Exception paramDialogInterface) {}
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
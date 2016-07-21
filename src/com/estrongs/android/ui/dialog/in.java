package com.estrongs.android.ui.dialog;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.android.j.c;
import com.estrongs.android.pop.utils.w;

class in
  implements DialogInterface.OnClickListener
{
  in(im paramim) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    try
    {
      paramDialogInterface = im.a(a).getPackageName();
      w.a(im.a(a), paramDialogInterface, "pname");
      paramDialogInterface = c.a(im.a(a));
      if (paramDialogInterface != null) {
        paramDialogInterface.a("Go_Rating");
      }
      return;
    }
    catch (Exception paramDialogInterface) {}
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.in
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
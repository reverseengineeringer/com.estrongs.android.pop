package com.estrongs.android.ui.dialog;

import android.app.Activity;
import android.app.Dialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.DialogInterface.OnDismissListener;
import com.estrongs.android.j.c;
import com.estrongs.android.pop.app.d.a;
import com.estrongs.android.pop.utils.ao;
import com.estrongs.android.ui.view.ak;
import java.text.MessageFormat;

class bm
  implements DialogInterface.OnClickListener
{
  bm(bl parambl, DialogInterface.OnDismissListener paramOnDismissListener, a parama) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    bl.a(c, c.a(c.a));
    try
    {
      bl.a(c).d("act3");
      bl.a(c).a("act3", "app_remnant_folders");
      if (c.a() == 0)
      {
        paramDialogInterface = MessageFormat.format(c.a.getString(2131231774), new Object[] { c.a.getString(2131231133) });
        ak.a(c.a, paramDialogInterface, 0);
        return;
      }
    }
    catch (Exception localException)
    {
      for (;;)
      {
        localException.printStackTrace();
      }
      paramDialogInterface = (Dialog)paramDialogInterface;
      paramDialogInterface.setOnDismissListener(null);
      paramDialogInterface.dismiss();
      if (a != null) {
        a.onDismiss(paramDialogInterface);
      }
      paramDialogInterface = new bn(this);
      ao.a(b, c.b(), true, false, paramDialogInterface, true, c.f, false);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.bm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
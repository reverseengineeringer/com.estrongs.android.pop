package com.estrongs.android.ui.dialog;

import android.content.ActivityNotFoundException;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.android.pop.utils.w;
import com.estrongs.android.ui.view.ag;

class c
  implements DialogInterface.OnClickListener
{
  c(a parama) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    if (a.a != null) {}
    try
    {
      w.a(a.a(a), a.a.a(), "pname");
      return;
    }
    catch (ActivityNotFoundException paramDialogInterface) {}
    ag.a(a.a(a), 2131427766, 0);
    return;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
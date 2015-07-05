package com.estrongs.android.ui.dialog;

import android.content.ActivityNotFoundException;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.android.pop.utils.w;
import com.estrongs.android.ui.view.ag;

class l
  implements DialogInterface.OnClickListener
{
  l(j paramj) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    if (j.b(a) != null) {}
    try
    {
      w.a(j.a(a), j.b(a), "pname");
      return;
    }
    catch (ActivityNotFoundException paramDialogInterface) {}
    ag.a(j.a(a), 2131427766, 0);
    return;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
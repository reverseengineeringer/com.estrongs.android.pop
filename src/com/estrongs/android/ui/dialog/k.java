package com.estrongs.android.ui.dialog;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.android.pop.view.utils.AppRunner;
import com.estrongs.fs.h;
import com.estrongs.fs.impl.b.g;

class k
  implements DialogInterface.OnClickListener
{
  k(j paramj) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    if ((a.a instanceof g))
    {
      AppRunner.a(j.a(a), a.a.getAbsolutePath(), (g)a.a);
      return;
    }
    AppRunner.s(j.a(a), a.a.getAbsolutePath());
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
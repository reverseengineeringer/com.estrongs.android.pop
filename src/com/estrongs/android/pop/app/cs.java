package com.estrongs.android.pop.app;

import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;
import com.estrongs.android.ui.dialog.fi;
import com.estrongs.android.ui.dialog.iy;

class cs
  implements DialogInterface.OnDismissListener
{
  cs(cr paramcr, iy paramiy) {}
  
  public void onDismiss(DialogInterface paramDialogInterface)
  {
    paramDialogInterface = a.a();
    if (paramDialogInterface == null) {
      return;
    }
    paramDialogInterface = new fi(b.a, paramDialogInterface);
    paramDialogInterface.a();
    paramDialogInterface.a(new ct(this));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.cs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
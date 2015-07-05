package com.estrongs.android.ui.pcs;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

class y
  implements DialogInterface.OnClickListener
{
  y(w paramw) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface = a.c();
    if (paramDialogInterface.equals(w.d(a))) {
      w.e(a);
    }
    while ((!paramDialogInterface.equals(w.f(a))) || (!w.g(a))) {
      return;
    }
    w.e(a);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.pcs.y
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
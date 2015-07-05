package com.estrongs.android.ui.g;

import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;
import android.widget.CheckBox;

class l
  implements DialogInterface.OnDismissListener
{
  l(h paramh) {}
  
  public void onDismiss(DialogInterface paramDialogInterface)
  {
    if (h.i(a).isChecked()) {
      h.h(a).g(h.e(a));
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.g.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
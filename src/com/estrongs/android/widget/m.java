package com.estrongs.android.widget;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.android.ui.dialog.er;

class m
  implements DialogInterface.OnClickListener
{
  m(f paramf) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface = new er(f.d(a), f.d(a).getString(2131230867), f.d(a).getString(2131231133));
    a.b = f.d(a).getString(2131231133);
    paramDialogInterface.a(new n(this));
    paramDialogInterface.show();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.widget.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
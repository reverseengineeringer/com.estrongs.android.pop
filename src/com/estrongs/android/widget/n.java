package com.estrongs.android.widget;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.android.ui.dialog.eo;

class n
  implements DialogInterface.OnClickListener
{
  n(g paramg) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface = new eo(g.d(a), g.d(a).getString(2131427361), g.d(a).getString(2131427427));
    a.b = g.d(a).getString(2131427427);
    paramDialogInterface.a(new o(this));
    paramDialogInterface.show();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.widget.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
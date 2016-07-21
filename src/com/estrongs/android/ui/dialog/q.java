package com.estrongs.android.ui.dialog;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.android.pop.utils.c;
import com.estrongs.fs.impl.b.d;

class q
  implements DialogInterface.OnClickListener
{
  q(o paramo) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    c.b(o.a(a), a.a.h());
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
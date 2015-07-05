package com.estrongs.android.ui.dialog;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.a.a;
import com.estrongs.android.ui.notification.e;

class jt
  implements DialogInterface.OnClickListener
{
  jt(ix paramix) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    e.b(ix.a(a).getTaskId());
    a.dismiss();
    ix.g(a);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.jt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
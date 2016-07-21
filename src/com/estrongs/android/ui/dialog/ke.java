package com.estrongs.android.ui.dialog;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.a.a;
import com.estrongs.android.ui.notification.f;

class ke
  implements DialogInterface.OnClickListener
{
  ke(jh paramjh) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    f.b(jh.a(a).getTaskId());
    a.dismiss();
    jh.g(a);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.ke
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
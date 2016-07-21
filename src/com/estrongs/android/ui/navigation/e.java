package com.estrongs.android.ui.navigation;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Handler;

class e
  implements DialogInterface.OnClickListener
{
  e(c paramc) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    a.a.finish();
    MultiWindowActivity.b(a.a).post(new f(this));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.navigation.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
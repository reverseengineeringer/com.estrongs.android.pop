package com.estrongs.android.ui.navigation;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Handler;

class k
  implements DialogInterface.OnClickListener
{
  k(i parami) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    h.b(a.a);
    h.a(a.a).post(new l(this));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.navigation.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
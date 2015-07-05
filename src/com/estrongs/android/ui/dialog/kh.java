package com.estrongs.android.ui.dialog;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.android.pop.app.b;
import com.estrongs.android.util.y;

class kh
  implements DialogInterface.OnClickListener
{
  kh(kf paramkf) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (kf.g(a) == 2) {
      if (kf.h(a) == 1)
      {
        kf.a(a, 3);
        if (kf.i(a)) {
          kf.a(a);
        }
      }
    }
    while ((kf.g(a) != 4) || (kf.j(a) != 9)) {
      return;
    }
    paramDialogInterface = b.a(kf.c(a).e());
    kf.b(a).startActivity(paramDialogInterface);
    a.c();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.kh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
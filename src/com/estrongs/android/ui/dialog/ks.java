package com.estrongs.android.ui.dialog;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.android.pop.app.b;
import com.estrongs.android.util.aa;

class ks
  implements DialogInterface.OnClickListener
{
  ks(kq paramkq) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (kq.d(a) == 2) {
      if (kq.e(a) == 1)
      {
        kq.a(a, 3);
        if (kq.f(a)) {
          a.c();
        }
      }
    }
    do
    {
      return;
      if (kq.d(a) != 4) {
        break;
      }
    } while (kq.g(a) != 9);
    paramDialogInterface = b.a(kq.c(a).e());
    kq.b(a).startActivity(paramDialogInterface);
    a.c();
    return;
    a.c();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.ks
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
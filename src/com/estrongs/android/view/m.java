package com.estrongs.android.view;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.android.pop.app.compress.cb;
import com.estrongs.android.ui.view.ak;
import com.estrongs.io.archive.i;

class m
  implements DialogInterface.OnClickListener
{
  m(l paraml, cb paramcb) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface = a.a();
    if (b.a.e(paramDialogInterface))
    {
      b.b.d = paramDialogInterface;
      a.dismiss();
      g.a(b.b, new t(b.b));
      g.d(b.b).start();
      return;
    }
    ak.a(b.b.ah, 2131231784, 1);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
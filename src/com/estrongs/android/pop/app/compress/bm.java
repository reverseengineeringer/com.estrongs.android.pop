package com.estrongs.android.pop.app.compress;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.android.ui.view.ak;
import com.estrongs.io.archive.i;

class bm
  implements DialogInterface.OnClickListener
{
  bm(bl parambl, cb paramcb) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface = a.a();
    if (b.a.e(paramDialogInterface))
    {
      b.b.a.a = paramDialogInterface;
      a.dismiss();
      bb.h(b.b.a);
      return;
    }
    ak.a(bb.g(b.b.a), 2131231784, 1);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.compress.bm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
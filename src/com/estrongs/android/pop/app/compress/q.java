package com.estrongs.android.pop.app.compress;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.android.ui.dialog.cg;
import com.estrongs.android.ui.view.ag;
import com.estrongs.io.archive.h;

class q
  implements DialogInterface.OnClickListener
{
  q(p paramp, be parambe) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface = a.a();
    if (b.a.e(paramDialogInterface))
    {
      b.b.a.c = paramDialogInterface;
      a.dismiss();
      l.l(b.b.a).show();
      l.m(b.b.a);
      return;
    }
    ag.a(l.d(b.b.a), 2131427897, 1);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.compress.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
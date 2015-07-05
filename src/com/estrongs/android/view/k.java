package com.estrongs.android.view;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.android.pop.app.compress.be;
import com.estrongs.android.ui.view.ag;
import com.estrongs.io.archive.h;

class k
  implements DialogInterface.OnClickListener
{
  k(j paramj, be parambe) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface = a.a();
    if (b.a.e(paramDialogInterface))
    {
      b.b.d = paramDialogInterface;
      a.dismiss();
      e.a(b.b, new r(b.b));
      e.d(b.b).start();
      return;
    }
    ag.a(b.b.ae, 2131427897, 1);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
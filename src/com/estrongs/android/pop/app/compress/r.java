package com.estrongs.android.pop.app.compress;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.io.archive.e;

class r
  implements DialogInterface.OnClickListener
{
  r(p paramp, cb paramcb) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    a.dismiss();
    l.n(b.b.a).sendMessage(l.n(b.b.a).obtainMessage(7));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.compress.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.estrongs.android.pop.app.compress;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import com.estrongs.io.archive.e;

class s
  implements DialogInterface.OnCancelListener
{
  s(p paramp) {}
  
  public void onCancel(DialogInterface paramDialogInterface)
  {
    l.n(a.b.a).sendMessage(l.n(a.b.a).obtainMessage(7));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.compress.s
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
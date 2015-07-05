package com.estrongs.android.pop.app;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

class z
  implements DialogInterface.OnClickListener
{
  z(r paramr) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    a.dismiss();
    if (r.i(a) != null) {
      r.i(a).b();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.z
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.estrongs.android.view;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.android.ui.pcs.r;
import com.estrongs.fs.h;

class ei
  implements DialogInterface.OnClickListener
{
  ei(ef paramef, h paramh) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    r localr = new r(b.c.a.ag);
    localr.a(new ej(this));
    localr.a(true);
    paramDialogInterface.dismiss();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.ei
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
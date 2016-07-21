package com.estrongs.android.view;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.android.ui.pcs.c;
import com.estrongs.fs.h;

class ek
  implements DialogInterface.OnClickListener
{
  ek(ef paramef, h paramh) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    c localc = new c(b.c.a.ag);
    localc.a();
    localc.a(new el(this));
    paramDialogInterface.dismiss();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.ek
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.estrongs.android.view;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.android.ui.pcs.o;
import com.estrongs.fs.h;

class ch
  implements DialogInterface.OnClickListener
{
  ch(ce paramce, h paramh) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    o localo = new o(b.a.ad);
    localo.a(new ci(this));
    localo.a(true);
    paramDialogInterface.dismiss();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.ch
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.estrongs.android.view;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.android.ui.pcs.a;
import com.estrongs.fs.h;

class cj
  implements DialogInterface.OnClickListener
{
  cj(ce paramce, h paramh) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    a locala = new a(b.a.ad);
    locala.a();
    locala.a(new ck(this));
    paramDialogInterface.dismiss();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.cj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
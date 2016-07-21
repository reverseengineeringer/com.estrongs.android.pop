package com.estrongs.android.view;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.android.ui.pcs.l;
import com.estrongs.fs.h;

class eg
  implements DialogInterface.OnClickListener
{
  eg(ef paramef, h paramh) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    l locall = new l(b.c.a.ag);
    locall.a(new eh(this));
    locall.show();
    paramDialogInterface.dismiss();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.eg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
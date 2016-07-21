package com.estrongs.fs.b;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.android.pop.view.utils.AppRunner;

class bf
  implements DialogInterface.OnClickListener
{
  bf(bd parambd) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    AppRunner.a(bc.b(a.a), null, bc.d(a.a) + bc.c(a.a));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.b.bf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
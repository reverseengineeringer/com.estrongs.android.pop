package com.estrongs.fs.b;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.android.pop.view.utils.AppRunner;

class bd
  implements DialogInterface.OnClickListener
{
  bd(bb parambb) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    AppRunner.a(ba.b(a.a), null, ba.d(a.a) + ba.c(a.a));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.b.bd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
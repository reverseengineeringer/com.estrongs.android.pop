package com.estrongs.a;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

class i
  implements DialogInterface.OnClickListener
{
  i(e parame) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    a.a.g = 2;
    a.a.f = false;
    a.b.sendMessage(5, new Object[] { a.a });
  }
}

/* Location:
 * Qualified Name:     com.estrongs.a.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
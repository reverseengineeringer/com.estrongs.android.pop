package com.estrongs.a;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

class j
  implements DialogInterface.OnClickListener
{
  j(e parame) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    a.a.g = 3;
    a.a.f = true;
    a.b.sendMessage(5, new Object[] { a.a });
  }
}

/* Location:
 * Qualified Name:     com.estrongs.a.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.estrongs.android.pop;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.a.a;

class v
  implements DialogInterface.OnClickListener
{
  v(n paramn) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    a.a.g = 2;
    a.b.sendMessage(5, new Object[] { a.a });
    paramDialogInterface.dismiss();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.v
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
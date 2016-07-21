package com.estrongs.android.ui.dialog;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.android.j.c;
import com.estrongs.android.util.p;

class io
  implements DialogInterface.OnClickListener
{
  io(im paramim) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    try
    {
      p.a(im.a(a));
      c localc = c.a(im.a(a));
      if (localc != null) {
        localc.a("Go_feedback");
      }
    }
    catch (Exception localException)
    {
      for (;;)
      {
        localException.printStackTrace();
      }
    }
    paramDialogInterface.dismiss();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.io
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
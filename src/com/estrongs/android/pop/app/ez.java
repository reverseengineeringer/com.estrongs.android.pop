package com.estrongs.android.pop.app;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.android.pop.app.c.i;
import com.estrongs.android.ui.e.iq;

class ez
  implements DialogInterface.OnClickListener
{
  ez(ey paramey) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    int i = 1;
    i locali = a.a.B();
    if (paramInt == 0) {
      paramInt = i;
    }
    for (;;)
    {
      iq.a(a.a, b, paramInt);
      paramDialogInterface.dismiss();
      return;
      if (paramInt == 1) {
        paramInt = 2;
      } else {
        paramInt = 4;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.ez
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
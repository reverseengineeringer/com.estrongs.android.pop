package com.estrongs.android.ui.e;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.android.pop.app.a.ak;

class hv
  implements DialogInterface.OnClickListener
{
  hv(hu paramhu, ak paramak) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    int i = 1;
    if (paramInt == 0) {
      paramInt = i;
    }
    for (;;)
    {
      hl.a(b.a, a.b, paramInt);
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
 * Qualified Name:     com.estrongs.android.ui.e.hv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
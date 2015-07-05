package com.estrongs.android.pop.app.a;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.android.pop.app.PopAudioPlayer;

class aa
  implements DialogInterface.OnClickListener
{
  aa(z paramz) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    int i = 1;
    ak localak = e.a(a.a).w();
    if (paramInt == 0) {
      paramInt = i;
    }
    for (;;)
    {
      e.a(a.a, b, paramInt);
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
 * Qualified Name:     com.estrongs.android.pop.app.a.aa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.estrongs.android.pop.app.compress;

import android.content.DialogInterface;
import android.content.DialogInterface.OnKeyListener;
import android.view.KeyEvent;
import com.estrongs.io.a.a.b;

class aj
  implements DialogInterface.OnKeyListener
{
  aj(ai paramai) {}
  
  public boolean onKey(DialogInterface paramDialogInterface, int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      if (ai.a(a) != null) {
        ai.a(a).e();
      }
      a.a();
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.compress.aj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
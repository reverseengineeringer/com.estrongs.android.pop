package com.estrongs.android.pop.app.compress;

import android.content.DialogInterface;
import android.content.DialogInterface.OnKeyListener;
import android.view.KeyEvent;
import com.estrongs.io.a.a.b;

class ak
  implements DialogInterface.OnKeyListener
{
  ak(aj paramaj) {}
  
  public boolean onKey(DialogInterface paramDialogInterface, int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 4) && (aj.a(a) != null)) {
      aj.a(a).e();
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.compress.ak
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
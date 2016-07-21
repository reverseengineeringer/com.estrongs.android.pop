package com.duapps.ad.offerwall.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnKeyListener;
import android.view.KeyEvent;

class e
  implements DialogInterface.OnKeyListener
{
  e(OfferWallAct paramOfferWallAct) {}
  
  public boolean onKey(DialogInterface paramDialogInterface, int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      a.b();
      if (!a.isFinishing()) {
        a.finish();
      }
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     com.duapps.ad.offerwall.ui.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
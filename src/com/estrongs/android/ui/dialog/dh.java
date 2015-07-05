package com.estrongs.android.ui.dialog;

import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnKeyListener;

class dh
  implements View.OnKeyListener
{
  dh(dg paramdg) {}
  
  public boolean onKey(View paramView, int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramKeyEvent.getAction() == 0) && (paramKeyEvent.getKeyCode() == 66))
    {
      a.a();
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.dh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
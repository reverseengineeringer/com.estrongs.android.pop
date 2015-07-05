package com.estrongs.android.pop.app.compress;

import android.content.DialogInterface;
import android.content.DialogInterface.OnKeyListener;
import android.view.KeyEvent;
import com.estrongs.io.a.a.a;

class m
  implements DialogInterface.OnKeyListener
{
  m(l paraml) {}
  
  public boolean onKey(DialogInterface paramDialogInterface, int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramKeyEvent.getKeyCode() == 4)
    {
      l.a(a).e();
      a.c();
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.compress.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
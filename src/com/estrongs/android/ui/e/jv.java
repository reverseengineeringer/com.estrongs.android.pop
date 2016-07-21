package com.estrongs.android.ui.e;

import android.content.Context;
import android.view.KeyEvent;
import android.widget.LinearLayout;

class jv
  extends LinearLayout
{
  jv(ju paramju, Context paramContext)
  {
    super(paramContext);
  }
  
  public boolean dispatchKeyEvent(KeyEvent paramKeyEvent)
  {
    if (paramKeyEvent.getKeyCode() == 4) {
      a.d();
    }
    do
    {
      return true;
      if (paramKeyEvent.getKeyCode() != 82) {
        break;
      }
    } while (!ju.a(a));
    a.d();
    return true;
    return super.dispatchKeyEvent(paramKeyEvent);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.jv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
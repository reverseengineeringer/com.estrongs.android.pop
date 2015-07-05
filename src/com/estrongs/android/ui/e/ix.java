package com.estrongs.android.ui.e;

import android.content.Context;
import android.view.KeyEvent;
import android.widget.LinearLayout;

class ix
  extends LinearLayout
{
  ix(iw paramiw, Context paramContext)
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
    } while (!iw.a(a));
    a.d();
    return true;
    return super.dispatchKeyEvent(paramKeyEvent);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.ix
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
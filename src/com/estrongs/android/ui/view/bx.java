package com.estrongs.android.ui.view;

import android.content.Context;
import android.view.KeyEvent;
import android.widget.LinearLayout;

class bx
  extends LinearLayout
{
  bx(bw parambw, Context paramContext)
  {
    super(paramContext);
  }
  
  public boolean dispatchKeyEvent(KeyEvent paramKeyEvent)
  {
    if ((paramKeyEvent.getKeyCode() == 4) && (paramKeyEvent.getAction() == 0))
    {
      a.b();
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.view.bx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
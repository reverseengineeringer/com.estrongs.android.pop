package com.estrongs.android.ui.e;

import android.content.Context;
import android.os.Handler;
import android.view.KeyEvent;
import android.widget.LinearLayout;

class je
  extends LinearLayout
{
  je(jc paramjc, Context paramContext)
  {
    super(paramContext);
  }
  
  public boolean dispatchKeyEvent(KeyEvent paramKeyEvent)
  {
    if (paramKeyEvent.getKeyCode() == 4)
    {
      jc.b(a).post(jc.a(a));
      return true;
    }
    if ((paramKeyEvent.getKeyCode() == 82) && (paramKeyEvent.getAction() == 0) && (jc.c(a)))
    {
      jc.b(a).post(jc.a(a));
      return true;
    }
    return super.dispatchKeyEvent(paramKeyEvent);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.je
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
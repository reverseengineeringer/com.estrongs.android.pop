package com.estrongs.android.ui.drag;

import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnKeyListener;

class o
  implements View.OnKeyListener
{
  o(m paramm, Runnable paramRunnable) {}
  
  public boolean onKey(View paramView, int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      a.run();
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.drag.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
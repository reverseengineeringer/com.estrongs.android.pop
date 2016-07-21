package com.estrongs.android.pop.app.analysis.view;

import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnKeyListener;

class p
  implements View.OnKeyListener
{
  p(i parami) {}
  
  public boolean onKey(View paramView, int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramKeyEvent.getAction() == 0) && (paramInt == 4) && (i.f(a) != null))
    {
      i.f(a).c();
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.analysis.view.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
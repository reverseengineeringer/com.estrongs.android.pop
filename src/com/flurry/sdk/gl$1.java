package com.flurry.sdk;

import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnKeyListener;

class gl$1
  implements View.OnKeyListener
{
  gl$1(gl paramgl) {}
  
  public boolean onKey(View paramView, int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramKeyEvent.getKeyCode() == 4) && (paramKeyEvent.getAction() == 1))
    {
      if ((gl.a(a) != null) && (a.j())) {
        gl.a(a).q();
      }
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.gl.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
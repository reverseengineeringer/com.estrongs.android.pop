package com.estrongs.android.ui.f;

import android.content.Context;
import android.view.KeyEvent;
import android.widget.FrameLayout;

class b
  extends FrameLayout
{
  b(a parama, Context paramContext)
  {
    super(paramContext);
  }
  
  public boolean dispatchKeyEvent(KeyEvent paramKeyEvent)
  {
    if (paramKeyEvent.getKeyCode() == 4)
    {
      a.b();
      return true;
    }
    return super.dispatchKeyEvent(paramKeyEvent);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.f.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
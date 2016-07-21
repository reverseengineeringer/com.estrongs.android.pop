package com.estrongs.android.ui.e;

import android.content.Context;
import android.view.KeyEvent;
import android.widget.LinearLayout;

class kj
  extends LinearLayout
{
  kj(ki paramki, Context paramContext)
  {
    super(paramContext);
  }
  
  public boolean dispatchKeyEvent(KeyEvent paramKeyEvent)
  {
    if (!a.a(paramKeyEvent)) {
      return super.dispatchKeyEvent(paramKeyEvent);
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.kj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
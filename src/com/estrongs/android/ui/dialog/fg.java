package com.estrongs.android.ui.dialog;

import android.content.Context;
import android.gesture.Gesture;
import com.estrongs.android.ui.guesture.ESGesturePanel;
import com.estrongs.android.ui.guesture.b;
import com.estrongs.android.ui.guesture.c;
import com.estrongs.android.ui.view.ag;

class fg
  implements c
{
  fg(ff paramff) {}
  
  public void a(Gesture paramGesture)
  {
    if (paramGesture != null)
    {
      if (b.a(paramGesture) != null)
      {
        ff.a(a).b();
        ag.a(ff.b(a), 2131428347, 0);
      }
    }
    else {
      return;
    }
    if (!b.a(ff.c(a), paramGesture)) {
      ag.a(ff.b(a), ff.b(a).getString(2131428386), 0);
    }
    a.b();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.fg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
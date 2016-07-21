package com.estrongs.android.ui.dialog;

import android.content.Context;
import android.gesture.Gesture;
import com.estrongs.android.ui.guesture.ESGesturePanel;
import com.estrongs.android.ui.guesture.b;
import com.estrongs.android.ui.guesture.c;
import com.estrongs.android.ui.view.ak;

class fj
  implements c
{
  fj(fi paramfi) {}
  
  public void a(Gesture paramGesture)
  {
    if (paramGesture != null)
    {
      if (b.a(paramGesture) != null)
      {
        fi.a(a).b();
        ak.a(fi.b(a), 2131231548, 0);
      }
    }
    else {
      return;
    }
    if (!b.a(fi.c(a), paramGesture)) {
      ak.a(fi.b(a), fi.b(a).getString(2131232451), 0);
    }
    a.b();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.fj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
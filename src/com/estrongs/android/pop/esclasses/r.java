package com.estrongs.android.pop.esclasses;

import android.os.Handler;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;

class r
  implements View.OnTouchListener
{
  r(ESScrollView paramESScrollView) {}
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    switch (paramMotionEvent.getAction())
    {
    }
    for (;;)
    {
      return false;
      if ((ESScrollView.a(a) != null) && (ESScrollView.b(a) != null)) {
        ESScrollView.c(a).sendMessageDelayed(ESScrollView.c(a).obtainMessage(1), 200L);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.esclasses.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
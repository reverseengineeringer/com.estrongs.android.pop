package com.estrongs.android.pop.app.messagebox;

import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;

class h
  implements View.OnTouchListener
{
  h(f paramf) {}
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    f.e(a).onTouchEvent(paramMotionEvent);
    switch (paramMotionEvent.getAction() & 0xFF)
    {
    default: 
      return false;
    case 0: 
      f.d(a).b(a);
      return false;
    }
    f.b(a).setListScrool(true);
    switch (f.f(a))
    {
    }
    for (;;)
    {
      f.a(a, 0);
      return false;
      a.a(false);
      f.d(a).d(a);
      continue;
      f.g(a);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.messagebox.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */